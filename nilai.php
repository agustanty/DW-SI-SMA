<?php
	include("config.php");
	$tahun=2015;
    $tahun1=2015;
    $tahun2=2015;
	$lima=0;
	$enam=0;
    $lima1=0;
	$enam1=0;
    $lima2=0;
	$enam2=0;

	while ($tahun <= 2016) {
		$query = "SELECT s.dim_tabel_siswa_nama, s.dim_tabel_siswa_jk, m.dim_tabel_mapel_nama, g.dim_tabel_guru_nama, f.fakta_tabel_sma_nilai, YEAR(t.dim_tabel_tanggal_tanggal) FROM dim_tabel_siswa s, dim_tabel_mapel m, dim_tabel_guru g, dim_tabel_tanggal t, fakta_tabel_sma f WHERE f.id_dim_tabel_siswa = s.id_dim_tabel_siswa AND f.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND g.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND f.id_dim_tabel_tanggal = t.id_dim_tabel_tanggal AND s.dim_tabel_siswa_nama='Alba' AND YEAR(t.dim_tabel_tanggal_tanggal)=$tahun";
		
		$hasil=mysqli_query($Connect,$query);
		while ($data=mysqli_fetch_row($hasil)) {
				if($tahun==2015)
				{
					$lima=$lima+$data[4];

				}
				else if($tahun==2016)
				{
					$enam=$enam+$data[4];
				}
				else
				{
					echo"Kosong";
				}
			}
			$tahun=$tahun+1;	
	}
    
    while ($tahun1 <= 2016) {
		$query1 = "SELECT s.dim_tabel_siswa_nama, s.dim_tabel_siswa_jk, m.dim_tabel_mapel_nama, g.dim_tabel_guru_nama, f.fakta_tabel_sma_nilai, YEAR(t.dim_tabel_tanggal_tanggal) FROM dim_tabel_siswa s, dim_tabel_mapel m, dim_tabel_guru g, dim_tabel_tanggal t, fakta_tabel_sma f WHERE f.id_dim_tabel_siswa = s.id_dim_tabel_siswa AND f.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND g.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND f.id_dim_tabel_tanggal = t.id_dim_tabel_tanggal AND s.dim_tabel_siswa_nama='Ahmad' AND YEAR(t.dim_tabel_tanggal_tanggal)=$tahun1";
		
		$hasil1=mysqli_query($Connect,$query1);
		while ($data1=mysqli_fetch_row($hasil1)) {
				if($tahun1==2015)
				{
					$lima1=$lima1+$data1[4];

				}
				else if($tahun1==2016)
				{
					$enam1=$enam1+$data1[4];
				}
				else
				{
					echo"Kosong";
				}
			}
			$tahun1=$tahun1+1;	
	}

     while ($tahun2 <= 2016) {
		$query2 = "SELECT s.dim_tabel_siswa_nama, s.dim_tabel_siswa_jk, m.dim_tabel_mapel_nama, g.dim_tabel_guru_nama, f.fakta_tabel_sma_nilai, YEAR(t.dim_tabel_tanggal_tanggal) FROM dim_tabel_siswa s, dim_tabel_mapel m, dim_tabel_guru g, dim_tabel_tanggal t, fakta_tabel_sma f WHERE f.id_dim_tabel_siswa = s.id_dim_tabel_siswa AND f.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND g.id_dim_tabel_mapel = m.id_dim_tabel_mapel AND f.id_dim_tabel_tanggal = t.id_dim_tabel_tanggal AND s.dim_tabel_siswa_nama='Agus' AND YEAR(t.dim_tabel_tanggal_tanggal)=$tahun2";
		
		$hasil2=mysqli_query($Connect,$query2);
		while ($data2=mysqli_fetch_row($hasil2)) {
				if($tahun2==2015)
				{
					$lima2=$lima2+$data2[4];

				}
				else if($tahun2==2016)
				{
					$enam2=$enam2+$data2[4];
				}
				else
				{
					echo"Kosong";
				}
			}
			$tahun2=$tahun2+1;	
	}

	$nilai1=$lima/3;
	$nilai2=$enam/3;

    $nilai11=$lima1/3;
	$nilai21=$enam1/3;

    $nilai12=$lima2/3;
	$nilai22=$enam2/3;
?>

<div id="chartdiv"></div>