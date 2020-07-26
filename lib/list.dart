import 'package:flutter/material.dart';

class Secim {
  final String baslik;
  final IconData icon;

  const Secim({this.baslik, this.icon});
}

const List<Secim> secimler = <Secim>[
  const Secim(baslik: "Anasayfa", icon: Icons.home),
  const Secim(baslik: "İletişim", icon: Icons.contacts),
  const Secim(baslik: "Harita", icon: Icons.map),
  const Secim(baslik: "Telefon", icon: Icons.phone),
  const Secim(baslik: "Kamera", icon: Icons.camera_alt),
  const Secim(baslik: "Ayarlar", icon: Icons.settings),
  const Secim(baslik: "Album", icon: Icons.photo_album),
  const Secim(baslik: "wifi", icon: Icons.wifi),
];
