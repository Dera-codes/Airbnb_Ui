 
import 'package:airbnb_ui/models/city.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  const CityCard(this.city, {super.key});

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
              city.image,
              width: 59,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(city.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(city.subtitle,
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


