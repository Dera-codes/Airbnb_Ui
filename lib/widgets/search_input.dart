import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1)),
        ]),
        child: TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            //prefixIcon: Icon(Icons.email),
            prefixIcon:
                const Icon(Icons.search, size: 20, color: Color(0xffFF5A60)),
            filled: true,
            fillColor: Colors.white,
          ),
        ));
  }
}
