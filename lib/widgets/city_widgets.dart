import 'dart:async';

import 'package:airbnb_ui/models/city.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  const CityCard(
    this.city, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              city.image ?? "",
              width: 59,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(city.title ?? "",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(city.subtitle ?? "",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// CitiesGrid is a StatelessWidget that displays a GridView
// class CitiesGrid extends StatefulWidget {
//   // final List<City> cities;
//   const CitiesGrid({
//     super.key,
//   });

//   @override
//   State<CitiesGrid> createState() => _CitiesGridState();
// }

// class _CitiesGridState extends State<CitiesGrid> {
//   final StreamController<List<City>> cityStreamController =
//       StreamController<List<City>>();
//       Stream<List<City>> get cityStream => Stream.fromIterable([cities]);
//   @override
//   Widget build(BuildContext context) {
//     // final City city = City();

//     // final List<City> cities = city.getCities;

//     return StreamBuilder<Object>(
//         stream: null,
//         builder: (context, snapshot) {
//           return SliverToBoxAdapter(
//             child: SizedBox(
//               height: 180,
//               child: SliverGrid(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisSpacing: 10.0,
//                     crossAxisSpacing: 10.0,
//                     childAspectRatio: 2.5 / 1,
//                     crossAxisCount: 2),

//                 /// A delegate that builds a list of children that are identified by
//                 /// index.
//                 delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                     return CityCard(
//                       city: cities[index],
//                     );
//                   },
//                   childCount: cities.length,
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
