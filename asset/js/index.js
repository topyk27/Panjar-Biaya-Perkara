// var svr = 'http://localhost/panjar_perkara/proses/';
var svr = '/panjar-biaya-perkara/proses/';
var tot_penggugat = 0;
var tot_tergugat = 0;
var adm = 0;
var total_biaya = 0;
var panggilan_penggugat = 0;
var panggilan_tergugat = 0;
var pip = 0;
var pengumuman = 0;
var ghaib = 0;
var perkara = "";
var ongkir_p = 0;
var ongkir_t = 0;
var pengembalian_p = 0;
var pengembalian_t = 0;
// const base_url = "http://localhost/panjar-biaya-perkara/proses/";

$.ajax({
	// url: base_url+"perkara-read.php",
	url: base_url+"perkara/get_perkara",
	type: 'post',
	dataType: 'json',
	success: function(respon){
		if(respon.success==1){
			var data_perkara = respon.perkara;
			$.each(data_perkara, function(k, v){
				// console.log(v.id + ":" + v.perkara);
				$("select#perkara").append("<option value='"+v.perkara+"'>"+v.perkara+"</option>");
			});
		}
	},
	error: function(err){
		alert("ada masalah, harap refresh halaman");
		console.log(err);
		//bikin alert errornya
	}
});

$.ajax({
	// url: base_url+"kecamatan-read.php",
	url: base_url+"perkara/get_kecamatan",
	type: 'post',
	dataType: 'json',
	success: function(respon){
		if(respon.success==1){
			var data_kecamatan =  respon.kecamatan;
			$.each(data_kecamatan, function(k,v){
				$("select#kecamatan-penggugat").append("<option value="+v.id+">"+v.kecamatan+"</option>");
				$("select#kecamatan-tergugat").append("<option value="+v.id+">"+v.kecamatan+"</option>");
			});
			console.log('data kecamatan ada');
		}
		else{
			console.log("data kecamatan kosong");
		}
	},
	error: function(err){
		alert("ada masalah, harap refresh halaman");
		console.log(err);
	}
});


$('select#perkara').on('change', function(){
	tot_penggugat = 0;
	tot_tergugat = 0;
	adm = 0;
	total_biaya = 0;
	panggilan_penggugat = 0;
	panggilan_tergugat = 0;
	pip = 0;
	pengumuman = 0;
	ghaib = 0;
	perkara = this.value;
	ongkir_p = 0;
	ongkir_t = 0;
	pengembalian_p = 0;
	pengembalian_t = 0;
	$("select#kecamatan-penggugat").val($("option:first", this).val());
	$("select#kecamatan-tergugat").val($("option:first", this).val());
	$("select#kelurahan-penggugat").empty();
	$("select#kelurahan-penggugat").append("<option value=>--Pilih Kecamatan Dahulu--</option>");
	$("select#kelurahan-tergugat").empty();
	$("select#kelurahan-tergugat").append("<option value=>--Pilih Kecamatan Dahulu--</option>");
	$("td#panggilan-penggugat").empty();
	$("td#panggilan-tergugat").empty();
	$("td#biaya-penggugat").empty();
	$("td#biaya-tergugat").empty();
	$("td#total-penggugat").empty();
	$("td#total-tergugat").empty();
	$("td#biaya-pip").empty();
	$("td#biaya-adm").empty();
	$("td#biaya-pengumuman").empty();
	$("td#total-biaya").empty();
	$('select#kecamatan-tergugat').show();
	$('select#kelurahan-tergugat').show();
	$('.gaib').hide();
	$("option[value='0']").remove();
	$("input[name='biaya-ongkir-p']").val('');
	$("input[name='biaya-ongkir-t']").val('');
	$("input[name='biaya-pengembalian-p']").val('');
	$("input[name='biaya-pengembalian-t']").val('');
	$('.lainnya-p').hide();
	$('.lainnya-t').hide();
	// if (this.value == "") {
	// 	$('#tabel-perkara').hide();
	// }else{
	// 	$('#tabel-perkara').show();
	// }

	switch(this.value){
		case "cerai gugat":
		$('#tr-pip').hide();
		$('#tr-admin').show();
		$('#tr-pengumuman').hide();
		$('#tr-skum').show();
		$('#pelapor').text("Penggugat");
		$('#terlapor').text("Tergugat");
		$('#judul-perkara').text(this.value);
		panggilan_penggugat = 2;
		panggilan_tergugat = 3;
		adm = 126000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('select#kecamatan-penggugat').prop('disabled', false);
		$('select#kecamatan-tergugat').prop('disabled', false);
		$("select#kecamatan-penggugat").append("<option value='0'>Lainnya</option>");
		$("select#kecamatan-tergugat").append("<option value='0'>Lainnya</option>");
		break;

		case "cerai gugat ghaib":
		$('#tr-pip').show();
		$('#tr-admin').show();
		$('#tr-pengumuman').hide();
		$('#tr-skum').show();
		$('#pelapor').text("Penggugat");
		$('#terlapor').text("Tergugat");
		$('#judul-perkara').text(this.value);
		$('select#kecamatan-tergugat').hide();
		$('select#kelurahan-tergugat').hide();
		$('.gaib').show();

		panggilan_penggugat = 2;
		panggilan_tergugat = 2;
		adm = 126000;
		pip = 30000;
		tot_tergugat = panggilan_tergugat*60000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('#biaya-pip').text(format_duit(pip));
		$("td#biaya-tergugat").text(format_duit(60000));
		$("td#total-tergugat").text(format_duit(tot_tergugat));
		$("select#kecamatan-penggugat").append("<option value='0'>Lainnya</option>");
		break;

		case "cerai talak":
		$('#tr-pip').hide();
		$('#tr-admin').show();
		$('#tr-pengumuman').hide();
		$('#tr-skum').show();
		$('#pelapor').text("Pemohon");
		$('#terlapor').text("Termohon");
		$('#judul-perkara').text(this.value);
		panggilan_penggugat = 3;
		panggilan_tergugat = 4;
		adm = 126000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('select#kecamatan-penggugat').prop('disabled', false);
		$('select#kecamatan-tergugat').prop('disabled', false);
		$("select#kecamatan-penggugat").append("<option value='0'>Lainnya</option>");
		$("select#kecamatan-tergugat").append("<option value='0'>Lainnya</option>");
		break;

		case "cerai talak ghaib":
		$('#tr-pip').show();
		$('#tr-admin').show();
		$('#tr-pengumuman').hide();
		$('#tr-skum').show();
		$('#pelapor').text("Pemohon");
		$('#terlapor').text("Termohon");
		$('#judul-perkara').text(this.value);
		$('select#kecamatan-tergugat').hide();
		$('select#kelurahan-tergugat').hide();
		$('.gaib').show();

		panggilan_penggugat = 3;
		panggilan_tergugat = 2;
		adm = 126000;
		pip = 30000;
		tot_tergugat = panggilan_tergugat*60000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('#biaya-pip').text(format_duit(pip));
		$("td#biaya-tergugat").text(format_duit(60000));
		$("td#total-tergugat").text(format_duit(tot_tergugat));
		$("select#kecamatan-penggugat").append("<option value='0'>Lainnya</option>");
		break;

		case "dispensasi nikah":
		$('#tr-pip').hide();
		$('#tr-admin').show();
		$('#tr-pengumuman').hide();
		$('#tr-skum').show();
		$('#pelapor').text("Pemohon I");
		$('#terlapor').text("Pemohon II");
		$('#judul-perkara').text(this.value);
		panggilan_penggugat = 2;
		panggilan_tergugat = 2;
		adm = 126000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('select#kecamatan-penggugat').prop('disabled', false);
		$('select#kecamatan-tergugat').prop('disabled', false);
		break;

		case "isbat nikah":
		$('#tr-pip').hide();
		$('#tr-admin').show();
		$('#tr-pengumuman').show();
		$('#tr-skum').show();
		$('#pelapor').text("Pemohon I");
		$('#terlapor').text("Pemohon II");
		$('#judul-perkara').text(this.value);
		panggilan_penggugat = 2;
		panggilan_tergugat = 2;
		adm = 116000;
		pengumuman = 60000;
		$('#panggilan-penggugat').text(panggilan_penggugat);
		$('#panggilan-tergugat').text(panggilan_tergugat);
		$('#biaya-adm').text(format_duit(adm));
		$('#biaya-pengumuman').text(format_duit(pengumuman));
		$('select#kecamatan-penggugat').prop('disabled', false);
		$('select#kecamatan-tergugat').prop('disabled', false);
		break;

		default :
		$('select#kecamatan-penggugat').prop('disabled', 'disabled');
		$('select#kecamatan-tergugat').prop('disabled', 'disabled');
		break;
	}
});

$('select#kecamatan-penggugat').on('change', function(){
	var id_kecamatan_penggugat = this.value;
	if(this.value!="" && this.value!=0){
		$('.lainnya-p').hide();
		ongkir_p = 0;
		pengembalian_p = 0;
		$("td#total-biaya").empty();
		$.ajax({
			// url: base_url+"kelurahan-read.php",
			url: base_url+"perkara/get_kelurahan",
			type: 'post',
			data: {
				id: id_kecamatan_penggugat,
			},
			dataType: 'json',
			success: function(respon){
				if (respon.success==1) {
					$("select#kelurahan-penggugat").empty();
					$("select#kelurahan-penggugat").append("<option value=>--Pilih kelurahan--</option>");
					$("td#biaya-penggugat").empty();
					$("td#total-penggugat").empty();
					var data_kelurahan_penggugat = respon.kelurahan;
					$.each(data_kelurahan_penggugat, function(k,v){
						$("select#kelurahan-penggugat").append("<option value="+v.id+">"+v.kelurahan+"</option>");
					});
				}else{
					console.log("data kelurahan penggugat kosong");
				}
			},
			error: function(err){
				alert("ada masalah, harap refresh halaman");
				console.log(err);
			}
		});
	}
	else {
		$('.lainnya-p').show();
		$("td#total-biaya").empty();
		$("td#biaya-penggugat").empty();
		$("td#total-penggugat").empty();
		$("select#kelurahan-penggugat").empty();
		$("select#kelurahan-penggugat").append("<option>Masukkan biaya di kolom samping</option>");
		$("td#biaya-penggugat").append("<input type='number' step='1000' name='manual_biaya_p' required class='text-kanan'> ");
		$("input[name='manual_biaya_p']").on('input', function() {
			tot_penggugat = panggilan_penggugat*$(this).val();
			console.log("penggugat =" + $(this).val());
			console.log("total penggugat = " + tot_penggugat);
			$("td#total-penggugat").text(format_duit(tot_penggugat));
			SKUM();
		});
	}
});

$('select#kecamatan-tergugat').on('change', function(){
	if (this.value!="" && this.value!=0) {
		$('.lainnya-t').hide();
		$("td#total-biaya").empty();
		ongkir_t = 0;
		pengembalian_t = 0;
		$.ajax({
			// url: base_url+"kelurahan-read.php",
			url: base_url+"perkara/get_kelurahan",
			type: 'post',
			data: {
				id: this.value,
			},
			dataType: 'json',
			success: function(respon){
				if (respon.success==1) {
					$("select#kelurahan-tergugat").empty();
					$("select#kelurahan-tergugat").append("<option value=>--Pilih kelurahan--</option>");
					$("td#biaya-tergugat").empty();
					$("td#total-tergugat").empty();
					var data_kelurahan_tergugat = respon.kelurahan;
					$.each(data_kelurahan_tergugat, function(k,v){
						$("select#kelurahan-tergugat").append("<option value="+v.id+">"+v.kelurahan+"</option>");
					});
				}else{
					console.log("data kelurahan tergugat kosong");
				}
			},
			error: function(err){
				alert("ada masalah, harap refresh halaman");
				console.log(err);
			}
		});
	}
	else {
		$('.lainnya-t').show();
		$("td#total-biaya").empty();
		$("td#biaya-tergugat").empty();
		$("td#total-tergugat").empty();
		$("select#kelurahan-tergugat").empty();
		$("select#kelurahan-tergugat").append("<option>Masukkan biaya di kolom samping</option>");
		$("td#biaya-tergugat").append("<input type='number' step='1000' name='manual_biaya_t' required style='text-align:right;'> ");
		$("tr#tr-ongkir-t").show();
		$("tr#tr-pengembalian").show();
		$("input[name='manual_biaya_t']").on('input', function() {
			tot_tergugat = panggilan_tergugat*$(this).val();
			console.log("tergugat =" + $(this).val());
			console.log("total tergugat = " + tot_tergugat);
			$("td#total-tergugat").text(format_duit(tot_tergugat));
			SKUM();
		});
	}
});

$('select#kelurahan-penggugat').on('change', function(){
	if (this.value!="") {
		$.ajax({
			// url: base_url+"detail-radius.php",
			url: base_url+"perkara/detail_radius",
			type: 'post',
			data: {
				id: this.value,
			},
			dataType: 'json',
			success: function(respon){
				if (respon.success==1) {
					var data_radius_penggugat = respon.radius;
					// console.log(data_radius_penggugat[0].biaya);
					tot_penggugat = panggilan_penggugat*data_radius_penggugat[0].biaya;
					// total_biaya = tot_penggugat
					$("td#biaya-penggugat").text(format_duit(data_radius_penggugat[0].biaya));
					$("td#total-penggugat").text(format_duit(tot_penggugat));
					SKUM();
				}else{
					console.log("gagal ambil detail radius penggugat");
				}
			},
			error: function(err){
				alert("ada masalah, harap refresh halaman");
				console.log(err);
			}
		});
	}
});

$('select#kelurahan-tergugat').on('change', function(){
	if (this.value!="") {
		$.ajax({
			// url: base_url+"detail-radius.php",
			url: base_url+"perkara/detail_radius",
			type: 'post',
			data: {
				id: this.value,
			},
			dataType: 'json',
			success: function(respon){
				if (respon.success==1) {
					var data_radius_tergugat = respon.radius;
					if (perkara == "cerai gugat ghaib" || perkara == "cerai talak ghaib") {
						// tot_tergugat = data_radius_tergugat[0].biaya;
						//kalo gaib panggilannya lewat radio mungkin, 1x panggil 60k, langsuh kasih 2x panggil aja
						tot_tergugat = 120000;
					// }else if (perkara=="dispensasi nikah") {
					// 	tot_tergugat = 0;
					}else{
						tot_tergugat = panggilan_tergugat*data_radius_tergugat[0].biaya;
					}
					//work (kalo p2 gak dihitung)
					// if(perkara=="dispensasi nikah"){
					// 	$("td#biaya-tergugat").text(format_duit(0));
					// }else if(perkara == "cerai gugat ghaib" || perkara == "cerai talak ghaib"){
					// 	//dikasih 120k, karena 1x panggil 60k, langsung kasih 2x aja
					// 	$("td#biaya-tergugat").text(format_duit(120000));
					// }
					// else{
					// 	$("td#biaya-tergugat").text(format_duit(data_radius_tergugat[0].biaya));
					// }

					//work (kalo p2 dihitung)
					if(perkara == "cerai gugat ghaib" || perkara == "cerai talak ghaib"){
						//dikasih 120k, karena 1x panggil 60k, langsung kasih 2x aja
						$("td#biaya-tergugat").text(format_duit(120000));
					}
					else{
						$("td#biaya-tergugat").text(format_duit(data_radius_tergugat[0].biaya));
					}
					$("td#total-tergugat").text(format_duit(tot_tergugat));
					SKUM();
				}else{
					console.log("gagal ambil detail radius tergugat");
				}
			},
			error: function(err){
				alert("ada masalah, harap refresh halaman");
				console.log(err);
			}
		});
	}
});


$("select#kecamatan-penggugat").on('click', function(){
	if (perkara=="") {
		alert("Silahkan Pilih Perkara Terlebih Dahulu");
	}

});

$("select#kecamatan-tergugat").on('click', function(){
	if (perkara=="") {
		alert("Silahkan Pilih Perkara Terlebih Dahulu");
	}
});

$("input[name='biaya-ongkir-p']").on('input', function(){
	ongkir_p = $(this).val();
	SKUM();
});

$("input[name='biaya-ongkir-t']").on('input', function(){
	ongkir_t = $(this).val();
	SKUM();
});

$("input[name='biaya-pengembalian-p']").on('input', function(){
	pengembalian_p = $(this).val();
	SKUM();
});

$("input[name='biaya-pengembalian-t']").on('input', function(){
	pengembalian_t = $(this).val();
	SKUM();
});
// sesuaikan variabel ongkir sama pengembalian
function SKUM(){
	switch(perkara){
		case "cerai gugat":
		total_biaya = tot_penggugat+tot_tergugat+adm+ parseInt(ongkir_p*2) + parseInt(pengembalian_p*2) + parseInt(ongkir_t*3) + parseInt(pengembalian_t*3);
		$("td#total-biaya").text(format_duit(total_biaya));
		break;

		case "cerai gugat ghaib":
		total_biaya = parseInt(tot_penggugat) + parseInt(tot_tergugat) + parseInt(pip) + parseInt(adm) + parseInt(ongkir_p*2) + parseInt(pengembalian_p*2);
		// total_biaya = parseInt(tot_penggugat) + parseInt(pip) + parseInt(adm);
		$("td#total-biaya").text(format_duit(total_biaya));
		break;

		case "cerai talak":
		total_biaya = tot_penggugat+tot_tergugat+adm+ parseInt(ongkir_p*3) + parseInt(pengembalian_p*3) + parseInt(ongkir_t*4) + parseInt(pengembalian_t*4);
		$("td#total-biaya").text(format_duit(total_biaya));
		break;

		case "cerai talak ghaib":
		total_biaya = parseInt(tot_penggugat) + parseInt(tot_tergugat) + parseInt(pip) + parseInt(adm) + parseInt(ongkir_p*3) + parseInt(pengembalian_p*3);
		$("td#total-biaya").text(format_duit(total_biaya));
		break;

		case "dispensasi nikah":
		total_biaya = tot_penggugat+tot_tergugat+adm;
		$("td#total-biaya").text(format_duit(total_biaya));
		break;

		case "isbat nikah":
		total_biaya = tot_penggugat+tot_tergugat+adm+pengumuman;
		$("td#total-biaya").text(format_duit(total_biaya));
		break;
	}
}

function format_duit(bilangan){
	var	number_string = bilangan.toString(),
		sisa 	= number_string.length % 3,
		rupiah 	= number_string.substr(0, sisa),
		ribuan 	= number_string.substr(sisa).match(/\d{3}/g);

	if (ribuan) {
		separator = sisa ? '.' : '';
		rupiah += separator + ribuan.join('.');
	}
	return "Rp. " + rupiah;
}

$(document).ready(function(){
	var tkn,nama_pa,nama_pa_pendek;
	$.ajax({
		url: base_url+"perkara/get_token",
		method: "GET",
		dataType: 'json',
		success: function(data)
		{
			if(data['success']==1)
			{
				var d = data['setting'][0];				
				tkn = d.token;
				nama_pa = d.nama_pa;
				nama_pa_pendek = d.nama_pa_pendek;
				$.ajax({
					url: "https://raw.githubusercontent.com/topyk27/Panjar-Biaya-Perkara/master/asset/js/token.json",
					method: "GET",
					dataType: 'json',
					success: function(data)
					{
						try {
							if(nama_pa==data[nama_pa_pendek][0].nama_pa && nama_pa_pendek==data[nama_pa_pendek][0].nama_pa_pendek && tkn==data[nama_pa_pendek][0].token)
							{
								
							}
							else
							{
								location.replace(Math.random());
							}
						} catch (error) {
							location.replace(Math.random());
						}
					},
					error: function(err)
					{
						$.ajax({
							url: base_url+"asset/js/token.json",
							method: "GET",
							dataType: 'json',
							success: function(lokal)
							{								
								if(nama_pa==lokal[nama_pa_pendek][0].nama_pa && nama_pa_pendek==lokal[nama_pa_pendek][0].nama_pa_pendek && tkn==lokal[nama_pa_pendek][0].token)
								{
									
								}
								else
								{
									location.replace(Math.random());								
								}
							},
							error: function(err)
							{
								location.replace(Math.random());
							}
						});
					}
				});
			}
			else
			{
				location.replace(Math.random());
			}

		},
		error: function(err)
		{
			location.replace(Math.random());
		}
	});
});