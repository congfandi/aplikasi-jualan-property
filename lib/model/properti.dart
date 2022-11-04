class Properti {
  Properti(
      {this.nama,
      this.alamat,
      this.panjangBangunan,
      this.lebarBangunan,
      this.panjangTanah,
      this.lebarTanah});

  String? nama;
  String? alamat;
  double? panjangBangunan;
  double? lebarBangunan;
  double? panjangTanah;
  double? lebarTanah;

  double? get luasBangunan => (panjangBangunan ?? 0) * (lebarBangunan ?? 0);
  double? get luasTanah => (panjangTanah ?? 0) * (lebarTanah ?? 0);
}
