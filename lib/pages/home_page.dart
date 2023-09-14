// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:airbnb_ui/widgets/header.dart';
import 'package:airbnb_ui/widgets/hero_banner.dart';
import 'package:flutter/material.dart';

import '../widgets/city_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeroBanner(),
          Header(text: "Explore Nearby"),
          CitiesGrid(),
        ],
      ),
    );
  }
}
