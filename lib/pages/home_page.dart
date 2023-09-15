// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:airbnb_ui/widgets/city_grid.dart';
import 'package:airbnb_ui/widgets/city_widgets.dart';
import 'package:airbnb_ui/widgets/fade_app_bar.dart';
import 'package:airbnb_ui/widgets/header.dart';
import 'package:airbnb_ui/widgets/hero_banner.dart';
import 'package:airbnb_ui/widgets/live_anywhere_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollControllerOffset = 0.0;

// _scrollListener() is a function that sets the state of the _scrollControllerOffset variable to the
  /// current offset of the scroll controller

  void _scrollListener() {
    setState(() {
      _scrollControllerOffset = _scrollControllerOffset;
    });
  }

  /// > The initState() function is called when the widget is first created

  @override
  void initState() {
    /// Creating a scroll controller and adding a listener to it.
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Area Widget
          // Fade App Bar

          CustomScrollView(
            controller: _scrollController,
            slivers: [
              HeroBanner(),
              Header("Explore Nearby"),
              CitiesGrid(),
              Header("Live Anywhere"),
              LiveAnywhereList(),
            ],
          ),
          FadeAppBar(scrollOffset: _scrollControllerOffset)
        ],
      ),
    );
  }
}
