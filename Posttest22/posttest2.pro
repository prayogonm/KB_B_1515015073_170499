DOMAINS
nama,kelamin,pekerjaan,benda,alasan= symbol
umur=integer

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

/* * * Fakta fakta tentang pembunuhan * * */
CLAUSES
	orang(bambang,32,pria,kuli_bangunan).
	orang(supprapto,22,pria,pengusaha).
	orang(darwis,25,pria,pedagang).
	orang(zulham,27,pria,buruh).

		istri (katty,supprapto).

	terbunuh_dengan(katty,ditusuk).
	terbunuh(katty).

		motif(uang).

	milik(bambang,pistol).
	milik(supprapto,pisau).

/* * * Basic Pengetahuan * * */
	cara_kerja_dengan(pisau, ditusuk).

   kemungkinan_milik(X,Benda):-
   milik(X,Benda).

	dicurigai(X):-
   terbunuh_dengan(katty,Benda),
   cara_kerja_dengan(Benda,Benda),
   kemungkinan_milik(X,Benda),

/* * * dicurigai pencopet yang mempunyai motif uang * * */

	dicurigai(X);
		motif(uang),
		orang(X,_,_,kuli_bangunan).

	pembunuh(Pembunuh):-
		orang(Pembunuh,_,_,_),
		dicurigai(Pembunuh).

GOAL
pembunuh(X).