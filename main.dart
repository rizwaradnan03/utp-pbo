import 'lib/Dokter.dart';
import 'lib/Pasien.dart';
import 'lib/Pendaftaran.dart';
import 'lib/Penjadwalan.dart';

void main(){
  var daftar = Pendaftaran();

  var dokter1 = Dokter("David Ellefson", 54, "Dokter Gigi");
  var dokter2 = Dokter("Chris Poland", 32, "Dokter Mata");
  var dokter3 = Dokter("Gar Samuelson", 24, "Dokter Bedah");

  var pasien1 = Pasien("Rizwar", 19);
  var pasien2 = Pasien("Rizky", 21);
  var pasien3 = Pasien("Renaldi", 19);
  var pasien4 = Pasien("Riswan", 19);
  var pasien5 = Pasien("Faizal", 19);

  daftar.daftarDokter(dokter1);
  daftar.daftarpasien(pasien4);

  var jadwal = Jadwal("Kiamat", DateTime(2029, 07, 21, 9, 2), DateTime(2031, 07, 21, 9, 2));
  daftar.penjadwalan(dokter1, jadwal);

  var jadwal2 = Jadwal("Sabtu", DateTime(2025, 07, 21, 9, 2), DateTime(3010, 07, 21, 9, 2));
  daftar.penjadwalan(dokter1, jadwal2);

  for(var i = 0;i < dokter1.list_praktek.length;i++){
    print("----- DATA KE ${i+1} -----");
    print("Hari : ${dokter1.list_praktek[i].hari}");
    print("Dari : ${dokter1.list_praktek[i].waktuMulai}");
    print("Ke : ${dokter1.list_praktek[i].waktuSelesai}");
    print("Nama Dokter : ${dokter1.nama}");
  }
  
}