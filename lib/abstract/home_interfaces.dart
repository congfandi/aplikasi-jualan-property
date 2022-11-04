import 'package:jual_beli_properti/model/properti.dart';

abstract class HomeInterface {
  void tampilkanProperty();
  void pilihMenu(Function pilih);
  void beliProperty(Properti properti, int index);
  void bayarPembelian();
  void exit();
}


//  print("== Pilih Menu ==");
//     print("1. Tampilkan Property");
//     print("2. Beli Property");
//     print("3. Bayar Pembelian");
//     print("4. Exit");