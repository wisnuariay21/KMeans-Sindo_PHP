<html>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

</style>
<body>
    <h2>Pencarian Berita</h2>
    <form method="POST" action="">
		<p class="lead">Input Keyword <input type="text" name="keyword">
			<input type="submit" name="search" value="Search">
		</p>
	</form>
	<table>
      <tr>
        <th>Judul</th>
        <th>Kategori</th>
        <th>Rangkuman</th>
        <th>Nilai Similaritas</th>
      </tr>  
				
	<?php
		require_once __DIR__ . '/vendor/autoload.php';
		use Phpml\FeatureExtraction\TokenCountVectorizer;
		use Phpml\Tokenization\WhitespaceTokenizer;
		use Phpml\FeatureExtraction\TfIdfTransformer;
					
		if(isset($_POST["search"]))
		{
            $sample_data = [];
            $judul = [];
            $kategori = [];
            $rangkuman = [];

			$servername = "localhost";
		    $username = "root";
		    $password = "";
		    $dbname = "berita";

		    $conn = new mysqli($servername, $username, $password, $dbname);

		    if ($conn->connect_error) {
		        die("Connection failed: " . $conn->connect_error);
		    }

		    $sql = "SELECT judul,kategori,rangkuman,data_bersih FROM news";
		    $result = $conn->query($sql);

		    if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
                array_push($judul,$row["judul"]);
                array_push($kategori,$row["kategori"]);
                array_push($rangkuman,$row["rangkuman"]);
		        array_push($sample_data,$row["data_bersih"]);
		    }
		    } else {
		        echo "0 results";
		    }


            array_push($sample_data,$_POST["keyword"]);
            array_push($sample_data," ");

            $tf = new TokenCountVectorizer(new WhitespaceTokenizer());
	        $tf->fit($sample_data);
	        $tf->transform($sample_data);
	        $vocabulary = $tf->getVocabulary();
	        $tfidf = new TfIdfTransformer($sample_data);
	        $tfidf->transform($sample_data);



	        $query_idx = count($sample_data)-1;
	        for ($i=0;$i<$query_idx-1;$i++)
			{
				$hasil_atas = 0.0;
				$hasil_wkq = 0.0;
				$hasil_wkj = 0.0;
				for ($x=0; $x<count($sample_data[$i]); $x++)
				{
					$hasil_atas += $sample_data[$query_idx-1][$x] * $sample_data[$i][$x];
					$hasil_wkq += pow($sample_data[$query_idx-1][$x],2);
					$hasil_wkj += pow($sample_data[$i][$x],2);
				}
				$hasil = $hasil_atas / ($hasil_wkq + $hasil_wkj - $hasil_atas);
				$sql = "UPDATE news SET similaritas = ".$hasil." WHERE judul = '".$judul[$i]."'";    
                if ($conn->query($sql) === TRUE) {
                  
                } else {
                  echo "Error updating record: " . $conn->error;
                }
			}


			$sql = "SELECT * FROM news ORDER BY similaritas DESC";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["judul"]."</td><td>".$row["kategori"]."</td><td>".$row["rangkuman"]."</td><td>".$row["similaritas"]."</td></tr>";
            }
            } else {
                echo "0 results";
            }
                        
		}
	?>
	</table>
</body>
</html>