class Dokter {
  String? nama;
  int? NoHp;

  Dokter(String nama, int NoTelepon) {
    this.nama = nama;
    this.NoHp = NoTelepon;
  }
  void identitasDokter() {
    print("NamaDokter $nama, Dengan NO HP $NoHp");
  }
}

void main() {
  Dokter dokter1 = Dokter("Riswan M.BD", 087462454325);
  dokter1.identitasDokter();
}
