<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Taksiran Panjar Biaya Perkara</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('asset/bootstrap-4.0.0-dist/css/bootstrap.min.css'); ?>">	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('asset/css/custom.css'); ?>">
</head>
<body>
	<div class="container">
		<img src="asset/img/banner-pa-tenggarong.png" class="img-fluid bener">

		<h2 class="kapital text-tengah">Taksiran Panjar Biaya Perkara</h1>

		<form>
			<div class="form-group">
				<label for="perkara">Perkara</label>
				<select class="form-control kapital-each-word" id="perkara" required="">
					<option value="">--Silahkan Pilih Perkara--</option>
				</select>
			</div>
			
		</form>
		<div class="table-responsive">
			<table class="table table-bordered table-hover" id="tabel-perkara">
				<thead>
					<tr>
						<th scope="col" colspan="6" id="judul-perkara" class="kapital text-tengah">Judul Perkara</th>
					</tr>
					<tr class="text-tengah">
						<th scope="col">Pelapor</th>
						<th scope="col">Kecamatan</th>
						<th scope="col">Kelurahan</th>
						<th scope="col">Jumlah Panggilan</th>
						<th scope="col">Biaya Perkara</th>
						<th scope="col">Total Biaya</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" id="pelapor">Penggugat</th>
						<td>
							<select id="kecamatan-penggugat" required="">
								<option value="">--Pilih--</option>
							</select>
						</td>
						<td>
							<select id="kelurahan-penggugat" required="">
								<option value="">--Pilih Kecamatan Dahulu--</option>
							</select>
						</td>
						<td id="panggilan-penggugat">0</td>
						<td id="biaya-penggugat">0</td>
						<td id="total-penggugat">0</td>
					</tr>
					<tr id="tr-ongkir-p" class="lainnya-p ilang">
						<th scope="row" colspan="5" class="text-kanan">Ongkir</th>
						<td id="biaya-ongkir-p">
							<input type="number" step="1000" name="biaya-ongkir-p" class="text-kanan">
						</td>
					</tr>
					<tr id="tr-pengembalian-p" class="lainnya-p ilang">
						<th scope="row" colspan="5" class="text-kanan">Biaya Pengembalian</th>
						<td id="biaya-pengembalian-p">
							<input type="number" step="1000" name="biaya-pengembalian-p" class="text-kanan">
						</td>
					</tr>
					<tr>
						<th scope="row" id="terlapor">Tergugat</th>
						<td>
							<span class="gaib ilang">Mass Media</span>
							<select id="kecamatan-tergugat" required="">
								<option value="">--Pilih--</option>
							</select>
						</td>
						<td>
							<span class="gaib ilang">Mass Media</span>
							<select id="kelurahan-tergugat" required="">
								<option value="">--Pilih Kecamatan Dahulu--</option>
							</select>
						</td>
						<td id="panggilan-tergugat">0</td>
						<td id="biaya-tergugat">
							<!-- <input type="number" step="1000" name="manual_biaya_tergugat" value="" style="text-align:right;"> -->
						</td>
						<td id="total-tergugat">0</td>
					</tr>
					<tr id="tr-ongkir-t" class="lainnya-t ilang">
						<th scope="row" colspan="5" class="text-kanan">Ongkir</th>
						<td id="biaya-ongkir">
							<input type="number" step="1000" name="biaya-ongkir-t" class="text-kanan">
						</td>
					</tr>
					<tr id="tr-pengembalian" class="lainnya-t ilang">
						<th scope="row" colspan="5" class="text-kanan">Biaya Pengembalian</th>
						<td id="biaya-pengembalian-t">
							<input type="number" step="1000" name="biaya-pengembalian-t" class="text-kanan">
						</td>
					</tr>
					<tr id="tr-pip">
						<th scope="row" colspan="5" class="text-kanan">PIP</th>
						<td id="biaya-pip">0</td>
					</tr>
					<tr id="tr-admin">
						<th scope="row" colspan="5" class="text-kanan">ADMINISTRASI</th>
						<td id="biaya-adm">0</td>
					</tr>
					<tr id="tr-pengumuman">
						<th scope="row" colspan="5" class="text-kanan">PENGUMUMAN</th>
						<td id="biaya-pengumuman">0</td>
					</tr>
					<tr id="tr-skum">
						<th scope="row" colspan="5" class="text-kanan">SKUM</th>
						<td id="total-biaya">0</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title text-center">Statistik Pengunjung</h3>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th scope="col">Hari Ini</th>
									<th scope="col">Kemarin</th>
									<th scope="col">Minggu Ini</th>
									<th scope="col">Bulan Ini</th>
									<th scope="col">Tahun Ini</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><?php echo $today; ?></td>
									<td><?php echo $yesterday; ?></td>
									<td><?php echo $sevenDays; ?></td>
									<td><?php echo $month; ?></td>
									<td><?php echo $year; ?></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

<script src="<?php echo base_url('asset/js/jquery-3.3.1.min.js'); ?>"></script>

<script src="<?php echo base_url('asset/bootstrap-4.0.0-dist/js/bootstrap.min.js'); ?>"></script>
<script>const base_url = "<?php echo base_url(); ?>";</script>
<script src="<?php echo base_url('asset/js/index.js?').time(); ?>"></script>
</body>
</html>
