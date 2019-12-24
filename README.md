# Panjar Biaya Perkara

Menghitung taksiran panjar biaya perkara yang harus dibayar oleh pihak berperkara di lingkungan Pengadilan Agama Tenggarong.

## Instalasi

Pindahkan file projek ini ke server anda. Jika menggunakan [XAMPP](https://www.apachefriends.org) silahkan pindahkan ke directory htdocs di mana anda menginstal [XAMPP](https://www.apachefriends.org).

Directory default biasanya :
```
C:\xampp\htdocs
```
Selanjutnya buatlah database dengan nama panjar_biaya.

Kemudian import file sql yang ada di dalam folder projek.

## Penggunaan

1. Silahkan pilih jenis perkara apa yang akan anda ajukan

   - Cerai Gugat
     > Gugatan perceraian diajukan oleh istri atau kuasanya pada Pengadilan Agama, yang daerah hukumnya mewilayahi tempat tinggal penggugat kecuali istri meninggalkan tempat kediaman tanpa izin suami.
   - Cerai Gugat Ghaib
     > Sama seperti cerai gugat hanya saja jika sang suami tidak diketahui keberadaannya.
   - Cerai Talak
     > Seorang suami yang akan menjatuhkan talak kepada istrinya mengajukan permohonan baik lisan maupun tertulis kepada Pengadilan Agama yang mewilayahi tempat tinggal istri disertai dengan alasan serta meminta agar diadakan sidang untuk keperluan itu.
   - Cerai Talak Ghaib
     > Sama seperti cari talak hanya saja jika sang istri tidak diketahui keberadaannya.
   - Dispensasi Nikah
     > Dispensasi nikah adalah untuk perkawinan yang calon mempelai laki- laki ataupun perempuannya masih di bawah umur dan belum diperbolehkan untuk menikah sesuai dengan peraturan perundang-undangan yang berlaku.
   - Isbat Nikah
     > Isbat nikah adalah permohonan pengesahan nikah yang diajukan kepengadilan untuk dinyatakan sah-nya pernikahan dan memiliki kekuatan hukum.

2. Memilih tempat kediaman para pihak
   > Untuk perkara ghaib pihak **tergugat atau termohon** dipanggil melalui mass media.
   > Untuk perkara cerai gugat dan cerai talak ada kemungkinan pihak yang berada di luar daerah Pengadilan Agama Tenggarong sehingga perlu meminta bantuan Pengadilan Agama di daerah lain. Untuk itu perlu memasukkan data biaya panjar daerah tersebut dan biaya ongkos kirim dan pengembalian.
   ```
   Data radius dari Pengadilan Agama yang lain cukup banyak dan harus diperbarui setiap tahun jika ada perubahan dan itu melelahkan :sunglasses:
   ```

3. Setelah itu taksiran total biaya yang harus bayar dapat dilihat pada baris SKUM

## Kontribusi
Pull request dipersilakan. Untuk perubahan besar, harap buka issue terlebih dahulu untuk membahas apa yang ingin anda ubah.

## Lisensi
[MIT](LICENSE)