// ignore_for_file: prefer_const_constructors

import 'package:exm/screens/home_Screen.dart';
import 'package:flutter/material.dart';

import 'home_banner.dart';
import 'icon_info.dart';
import 'projects.dart';
import 'recomendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [HomeBanner(), IconInfo(), Projects(), Recomendations()],
        ),
      ),
    );
  }
}
