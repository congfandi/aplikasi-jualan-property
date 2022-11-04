import 'dart:io';

import 'package:jual_beli_properti/abstract/home_interfaces.dart';
import 'package:jual_beli_properti/model/gudang.dart';
import 'package:jual_beli_properti/model/properti.dart';
import 'package:jual_beli_properti/model/rumah.dart';

class HomeController implements HomeInterface {
  List<Properti> listProperti = [
    Rumah(
      nama: 'Rumah 1',
      alamat: 'Jl. Jalan 1',
      panjangTanah: 10,
      lebarBangunan: 5,
    ),
    Gudang(
      nama: 'Gudang 1',
      alamat: 'Jl. Jalan 2',
      panjangTanah: 20,
      lebarBangunan: 10,
    ),
    Gudang(
      nama: 'Gudang 2',
      alamat: 'Jl. Jalan 3',
      panjangTanah: 30,
      lebarBangunan: 15,
    ),
    Gudang(
      nama: 'Gudang 3',
      alamat: 'Jl. Jalan 4',
      panjangTanah: 40,
      lebarBangunan: 20,
    ),
    Rumah(
      nama: 'Rumah 2',
      alamat: 'Jl. Jalan 5',
      panjangTanah: 50,
      lebarBangunan: 25,
    )
  ];

  @override
  void pilihMenu(Function pilih) {
    print("== Pilih Menu ==");
    print("1. Tampilkan Property");
    print("2. Beli Property");
    print("3. Bayar Pembelian");
    print("4. Exit");
    print("Masukan Pilihan anda : ");
    int pilihan = int.parse(stdin.readLineSync() ?? '0');
    switch (pilihan) {
      case 1:
        tampilkanProperty();
        break;
      case 2:
        opsiBeliProperti();
        break;
      case 3:
        bayarPembelian();
        break;
      case 4:
        exit();
        break;
      default:
        print("Pilihan tidak ada");
    }
    pilih(pilihan);
  }

  @override
  void tampilkanProperty() {
    print("== Tampilkan Property ==");
    for (var i = 0; i < listProperti.length; i++) {
      print("No : ${i + 1}");
      print("Nama : ${listProperti[i].nama}");
      print("==================================");
    }
  }

  @override
  void bayarPembelian() {}

  @override
  void beliProperty(Properti properti, int index) {
    listProperti.removeAt(index);
  }

  @override
  void exit() {
    return;
  }

  void opsiBeliProperti() {
    print("== Beli Property ==");
    print("Masukan No Properti : ");
    int noProperti = int.parse(stdin.readLineSync() ?? '0');
    if (noProperti > 0 && noProperti <= listProperti.length) {
      beliProperty(listProperti[noProperti - 1], noProperti);
    } else {
      print("No Properti tidak ada");
    }
  }
}
