import 'dart:math';

String generateRandomStringWithNumbers(String? kata) {
  StringBuffer hasil = StringBuffer();

  if (kata == null) {
    return "Masukkan Kata Yang Valid!";
  }

  hasil.write(kata);
  Random rng = Random();

  for (int i = 0; i < 5; i++) {
    hasil.write(rng.nextInt(10).toString());
  }

  return hasil.toString();
}
