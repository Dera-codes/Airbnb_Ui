import 'package:flutter/material.dart';

import '../models/city.dart';
import 'city_widgets.dart';

/// CitiesGrid is a StatelessWidget that displays a GridView
class CitiesGrid extends StatelessWidget {
  const CitiesGrid({super.key});

  // get cities => null;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2.5 / 1,
          crossAxisCount: 2),

      /// A delegate that builds a list of children that are identified by
      /// index.
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CityCard(cities[index]);
        },
        childCount: cities.length,
      ),
    );
  }
}
