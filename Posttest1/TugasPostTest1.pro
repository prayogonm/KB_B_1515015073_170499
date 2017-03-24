predicates %predicates adalah nama simbolikuntuk relasi
  pekerjaan(symbol,symbol) - nondeterm (o,i), nondeterm (i,i)

clauses
%clauses digunakan untuk mendefinisikan predikat
  pekerjaan(yogo,gubernur).
  pekerjaan(kiwa,rt).
  pekerjaan(sultan,lurah).
  pekerjaan(budi,lurah).
  pekerjaan(opppa,walikota).
  pekerjaan(ompong,gubernur).
  pekerjaan(adit,gubernur).
 %saya memakai fakta yang contohnya "kiwa bekerja sebagai gubernur"

goal
%goal adalah tempat pernyataan diberikan atau meminta prolog untuk mencapai tujuan yang dikehendaki
  pekerjaan(Person1,gubernur),
  pekerjaan(Person,rt).
  %goal yang saya tuju adalah memilih gubernur dan walikota