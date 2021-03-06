DOMAINS
nama,
kelamin,
pekerjaan,
benda,
alasan = symbol umur = integer

PREDICATES
	nondeterm orang(nama,umur,kelamin,pekerjaan)
	istri(nama,nama)
	terbunuh_dengan(nama,benda)
	terbunuh(nama)
	nondeterm pembunuh(nama)
	motif(alasan)
	milik(nama,benda)
	nondeterm cara_kerja_dengan(benda, benda)
	nondeterm kemungkinan_milik(nama, benda)
	nondeterm dicurigai(nama)

/* * * Orang Yang Di Curigai Pembunuhan Berencana * * */
CLAUSES
	orang(bambang,32,pria,kuli_bangunan).
	orang(supprapto,22,pria,pengusaha).
	orang(darwis,25,pria,pedagang).
	orang(zulham,27,pria,buruh).

		istri (wulan,supprapto).

	terbunuh_dengan(wulan,ditusuk).
	terbunuh(wulan).

		motif(uang).

	milik(zulham,pistol).
	milik(supprapto,pisau).

/* * * Cara-Cara Melakukan Pembunuhan Berencana * * */
	cara_kerja_dengan(pisau, ditusuk).

   kemungkinan_milik(Tersangka,Benda):-
   milik(Tersangka,Benda).

	dicurigai(Tersangkan):-
   terbunuh_dengan(katty,Benda),
   cara_kerja_dengan(Benda,Benda),
   kemungkinan_milik(Tersangkan,Benda),

/* * * Asal-Usul Membunuh Karena Krisi Ekonomi * * */

	dicurigai(Tersangkan);
		motif(uang),
		orang(Tersangkan,_,_,buruh).

	pembunuh(Pembunuh):-
		orang(Pembunuh,_,_,_),
		dicurigai(Pembunuh).

GOAL
write("Kasus Pembunuhan Seorang Sodagar Kaya"),nl,
pembunuh(Tersangka).
%Program di atas adalah program saya yang posttest2 kmren, tetapi saya tambahin beberapa seperti DOMAIN,WRITE dan Mengubah sedikit program posttest2 saya di atas