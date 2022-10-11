void main() {
  int umur = 20;
  String nama = 'Wahyu Dwi Ananto';
  bool perbandingan = 7 < 8;
  const asal = 'Bekasi';
  final kelamin = 'laki-laki';
  double tinggi = 177.6547;

  print(
      "1. Tulis variabel dart\n $nama, $umur, $kelamin, $tinggi, $asal, $perbandingan.");
  print("2. Buat loop seperti contoh");

  for (int n = 0; n <= 10; n++) {
    print("*" * n);
  }

  print("3. Tulis code list, map dan set");
  var nomor = [1, 2, 5, 9];
  print(nomor);

  var kotaAsal = {
    "Wahyu": "Bekasi",
    "Dwi": "Karawang",
    "Ananto": "Jakarta",
  };
  print(kotaAsal["Wahyu"]);

  final buah1 = <String>{"Apel", "Jeruk", "Jambu"};
  final buah2 = <String>{"Jeruk", "Apel", "Nanas"};

  Set<String> semua = buah1.union(buah2);
  Set<String> sama = buah1.intersection(buah2);
  Set<String> beda = buah1.difference(buah2);
  print(semua);
  print(sama);
  print(beda);

  print("4. Kondisi if-else");
  double ipk = 3.9;
  if (ipk >= 3.5) {
    print("cumlaude");
  } else {
    print("tidak cumlaude");
  }
}
