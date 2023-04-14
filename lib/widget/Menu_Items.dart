import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import '../ekranlar/profil.dart';
import '../ekranlar/spor_takvimi.dart';
import '../ekranlar/vkendeksi.dart';

class MenuItems extends StatelessWidget {
  MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(CommunityMaterialIcons.aspect_ratio),
            title: const Text("V-K ENDEKSİ"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => vkendeksi()));
            },
          ),
          ListTile(
            leading: const Icon(CommunityMaterialIcons.calendar),
            title: const Text("SPOR TAKVİMİ"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => gunluk()));
            },
          ),
          ListTile(
            leading: const Icon(CommunityMaterialIcons.account),
            title: const Text("PROFİL"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => hesabim()));
            },
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Ayarlar"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Hata Bildirimi"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Çıkış Yap"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
