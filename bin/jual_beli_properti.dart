import 'package:jual_beli_properti/controller/home_controller.dart';
import 'package:jual_beli_properti/jual_beli_properti.dart'
    as jual_beli_properti;

void main(List<String> arguments) {
  bool apakahPilihExit = false;
  HomeController homeController = HomeController();
  while (!apakahPilihExit) {
    homeController.pilihMenu((pilihan) {
      apakahPilihExit = pilihan == 4;
      print("Pilihan Anda: $pilihan");
    });
  }
}
