<?php
	require_once __DIR__ . '/vendor/autoload.php';
    // include "libchart/libchart/classes/libchart.php";
	
	use Phpml\Clustering\KMeans;
	use Phpml\FeatureExtraction\TokenCountVectorizer;
	use Phpml\Tokenization\WhitespaceTokenizer;
	use Phpml\FeatureExtraction\TfIdfTransformer;

    $sample_data = [];
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "berita";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT data_bersih FROM news";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($sample_data,$row["data_bersih"]);
    }
    } else {
        echo "0 results";
    }

    $tf = new TokenCountVectorizer(new WhitespaceTokenizer());
    $tf->fit($sample_data);
    $tf->transform($sample_data);
    $vocabulary = $tf->getVocabulary();
    $tfidf = new TfIdfTransformer($sample_data);
    $tfidf->transform($sample_data);

    $kmeans = new KMeans(7);
	$hasil = $kmeans->cluster($sample_data);

	echo "<b>Hasil Clustering</b>";
	echo "<table border ='1'>";


	foreach($hasil as $cluster => $doc) {
		echo "<tr><th align='center'>Cluster ".($cluster+1)."</th>";
		foreach ($doc as $key => $value)
		{
			echo "<td> Berita-".($key+1)."</td>";
		}
		echo "<tr>";
	}
	echo "</table>";

?>
