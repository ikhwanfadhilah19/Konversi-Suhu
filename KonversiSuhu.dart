import 'dart:io';

void main() {
  // Watermark : Ikhwanfadhilah.
  print('============================================');
  print('|          Aplikasi Konversi Suhu          |');
  print('============================================');
  print('|    1. Celcius                            |');
  print('|    2. Reamur                             |');
  print('|    3. Fahrenheit                         |');
  print('|    4. Kelvin                             |');
  print('|    5. Keluar                             |');
  print('============================================');
  stdout.write('Masukkan pilihan: ');
  var menu = int.parse(stdin.readLineSync()!);
  switch (menu) {
    case 1:
      Celcius();
      break;
    case 2:
      Reamur();
      break;
    case 3:
      Fahrenheit();
      break;
    case 4:
      Kelvin();
      break;
    case 5:
      Keluar();
      break;
    default:
      print('Pilihan tidak ditemukan.');
  }
}

void Celcius() {
  stdout.write('Masukkan suhu dalam Celcius: ');
  var celcius = num.parse(stdin.readLineSync()!);

  //Input rumus konversi celcius
  var reamur = (4 / 5) * celcius;
  var fahrenheit = (9 / 5 * celcius) + 32;
  var kelvin = celcius + 273;

  //Cetak hasil konversi
  stdout.write('\nCetak hasil konversi? ');
  String hasil = stdin.readLineSync()!;

  if (hasil == 'iya') {
    //Jika iya maka akan menampilkan hasil konversi yang dipilih
    print('$celcius derajat Celcius = $reamur derajat Reamur');
    print('$celcius derajat Celcius = $fahrenheit derajat Fahrenheit');
    print('$celcius derajat Celcius = $kelvin derajat Kelvin\n');
  } else {
    //Jika tidak maka akan kembali untuk input ulang nilai konversi yang dipilih
    Celcius();
  }

  //Pertanyaan konversi ulang pada menu awal
  stdout.write('Apakah anda ingin konversi ulang? ');
  String ulang = stdin.readLineSync()!;

  if (ulang == 'iya') {
    //Jika iya maka akan kembali ke menu pilihan awal
    main();
  } else {
    //Jika tidak maka akan menutup program
    exit(0);
  }
}

void Reamur() {
  stdout.write('Masukkan suhu dalam Reamur: ');
  var reamur = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Reamur
  var celcius = (5 / 4) * reamur;
  var fahrenheit = (9 / 4 * reamur) + 32;
  var kelvin = (5 / 4 * reamur) + 273;

  //Cetak hasil konversi
  stdout.write('\nCetak hasil konversi? ');
  String hasil = stdin.readLineSync()!;

  if (hasil == 'iya') {
    print('$reamur derajat Reamur = $celcius derajat Celcius');
    print('$reamur derajat Reamur = $fahrenheit derajat Fahrenheit');
    print('$reamur derajat Reamur = $kelvin derajat Kelvin\n');
  } else {
    Reamur();
  }

  //Pernyataan Konversi Ulang
  stdout.write('Apakah anda ingin konversi ulang? ');
  String ulang = stdin.readLineSync()!;

  if (ulang == 'iya') {
    main();
  } else {
    exit(0);
  }
}

void Fahrenheit() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Fahrenheit
  var celcius = 5 / 9 * (fahrenheit - 32);
  var reamur = 4 / 9 * (fahrenheit - 32);
  var kelvin = 5 / 9 * (fahrenheit - 32) + 273;

  //Cetak Hasil Konversi
  stdout.write('\nCetak hasil konversi? ');
  String hasil = stdin.readLineSync()!;

  if (hasil == 'iya') {
    print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius');
    print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');
    print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin\n');
  } else {
    //Jika tidak maka akan kembali untuk input ulang nilai konversi
    Fahrenheit();
  }

  //Pernyataan Konversi Ulang
  stdout.write('Apakah anda ingin konversi ulang? ');
  String ulang = stdin.readLineSync()!;

  if (ulang == 'iya') {
    main();
  } else {
    exit(0);
  }
}

void Kelvin() {
  stdout.write('Masukkan suhu dalam Kelvin: ');
  var kelvin = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Kelvin
  var celcius = kelvin - 273;
  var reamur = 4 / 5 * (kelvin - 273);
  var fahrenheit = 9 / 5 * (kelvin - 273) + 32;

  //Cetak Hasil Konversi
  stdout.write('\nCetak hasil konversi? ');
  String hasil = stdin.readLineSync()!;

  if (hasil == 'iya') {
    print('$kelvin derajat Kelvin = $celcius derajat Celcius');
    print('$kelvin derajat Kelvin = $reamur derajat Reamur');
    print('$kelvin derajat Kelvin = $fahrenheit derajat Fahrenheit\n');
  } else {
    Reamur();
  }

  //Pernyataan Konversi Ulang
  stdout.write('Apakah anda ingin konversi ulang? ');
  String ulang = stdin.readLineSync()!;

  if (ulang == 'iya') {
    main();
  } else {
    exit(0);
  }
}

void Keluar() {
  stdout.write('Apakah anda ingin keluar dari program? ');
  String esc = stdin.readLineSync()!;

  if (esc.toLowerCase() == 'iya') {
    exit(0);
  } else {
    print('');
    main();
  }
}
