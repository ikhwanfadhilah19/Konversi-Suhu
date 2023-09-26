import 'dart:io';

void main() {
  // Copyright : Ikhwanf.
  print('==========================');
  print('| Aplikasi Konversi Suhu |');
  print('==========================');
  print('| 1. Celcius             |');
  print('| 2. Reamur              |');
  print('| 3. Fahrenheit          |');
  print('| 4. Kelvin              |');
  print('| 5. Keluar              |');
  print('==========================');
  stdout.write('Masukkan pilihan: ');
  var menu = int.parse(stdin.readLineSync()!);
  switch (menu) {
    case 1:
      celcius();
      break;
    case 2:
      reamur();
      break;
    case 3:
      fahrenheit();
      break;
    case 4:
      kelvin();
      break;
    case 5:
      keluar();
      break;
    default:
      print('Pilihan tidak ditemukan.');
  }
}

void celcius() {
  stdout.write('Masukkan suhu dalam Celcius: ');
  var celcius = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Celcius
  var reamur = (4 / 5) * celcius;
  var fahrenheit = (9 / 5 * celcius) + 32;
  var kelvin = celcius + 273;

  //Cetak Hasil Konversi
  print('$celcius derajat Celcius = $reamur derajat Reamur');
  print('$celcius derajat Celcius = $fahrenheit derajat Fahrenheit');
  print('$celcius derajat Celcius = $kelvin derajat Kelvin\n');

  //Kembali Ke Menu Awal
  main();
}

void reamur() {
  stdout.write('Masukkan suhu dalam Reamur: ');
  var reamur = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Reamur
  var celcius = (5 / 4) * reamur;
  var fahrenheit = (9 / 4 * reamur) + 32;
  var kelvin = (5 / 4 * reamur) + 273;

  //Cetak Hasil Konversi
  print('$reamur derajat Reamur = $celcius derajat Celcius');
  print('$reamur derajat Reamur = $fahrenheit derajat Fahrenheit');
  print('$reamur derajat Reamur = $kelvin derajat Kelvin\n');

  //Kembali Ke Menu Awal
  main();
}

void fahrenheit() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Fahrenheit
  var celcius = 5 / 9 * (fahrenheit - 32);
  var reamur = 4 / 9 * (fahrenheit - 32);
  var kelvin = 5 / 9 * (fahrenheit - 32) + 273;

  //Cetak Hasil Konversi
  print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius');
  print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');
  print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin\n');

  //Kembali Ke Menu Awal
  main();
}

void kelvin() {
  stdout.write('Masukkan suhu dalam Kelvin: ');
  var kelvin = num.parse(stdin.readLineSync()!);

  //Input Rumus Konversi Kelvin
  var celcius = kelvin - 273;
  var reamur = 4 / 5 * (kelvin - 273);
  var fahrenheit = 9 / 5 * (kelvin - 273) + 32;

  //Cetak Hasil Konversi
  print('$kelvin derajat Kelvin = $celcius derajat Celcius');
  print('$kelvin derajat Kelvin = $reamur derajat Reamur');
  print('$kelvin derajat Kelvin = $fahrenheit derajat Fahrenheit\n');

  //Kembali Ke Menu Awal
  main();
}

void keluar() {
  stdout.write('Apakah anda ingin keluar dari program? [iya/tidak]: ');
  String esc = stdin.readLineSync()!;

  if (esc.toLowerCase() == 'iya') {
    exit(0);
  } else {
    print('');
    main();
  }
}
