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

<?php
echo '<b><font size="10">Crawling Berita</b></font><br><br>';
echo '<form method="POST" action="">
	Input Keyword : <input type="text" name="keyword"> <input type="submit" name="crawls" value="Search">
	</form><br><br>';

?>
<table>
  <tr>
    <th>Judul</th>
    <th>Kategori</th>
    <th>Rangkuman</th>
    <th>Data Bersih</th>
  </tr> 

<?php
if(isset($_POST["crawls"]))
{
	require_once __DIR__ . '/vendor/autoload.php';
	include_once('simple_html_dom.php');

	$teks=str_replace(" ","+",$_POST["keyword"]);
    include_once('simple_html_dom.php');

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "berita";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
    $stemmer = $stemmerFactory->createStemmer();

    $stopwordFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
    $stopword = $stopwordFactory->createStopWordRemover();


    if($_POST["keyword"] != "")
    {
      $html = file_get_html("https://search.sindonews.com/go?type=artikel&q="."$teks");
      $i=0;
      foreach ($html->find('li') as $berita) {
      	if($i > 9) break;
      	else
        {
          $beritaa=$berita->find('div[class="news-content"]',0);
          $rangkuman = $beritaa->find('div[class="news-summary"]',0)->innertext;
          $judulBerita = $beritaa->find('a',0)->innertext;
          $kategorii =$beritaa->find('div[class="news-channel"]',0);
          $kategori = $kategorii->find('div',0)->innertext;

          $data_stem = $judulBerita ." ". $rangkuman;

          $outputStemming = $stemmer->stem($data_stem);
          $outputStopword = $stopword->remove($outputStemming);
        ?>
        <tr>
          <td>
        <?php
              echo $judulBerita."<br>";?>
          </td>  
          <td>
              <?php
              echo $kategori."<br>";?>
          </td>
          <td>
              <?php
              echo $rangkuman."<br><br>";?>
          </td>
          <td>  <?php
              echo $outputStopword;?>
          </td>
        </tr>
        <?php
            $sql = "INSERT INTO news (judul, kategori, rangkuman, data_bersih, similaritas) VALUES ('".$judulBerita."', '".$kategori."', '".$rangkuman."', '".$outputStopword."',0)";    
            if ($conn->query($sql) === TRUE) {
              
            } else {
              echo "Error: " . $sql . "<br>" . $conn->error;
            }
    	   }
        $i++;
        }
    }
    $conn->close();
}
?>
    </table>