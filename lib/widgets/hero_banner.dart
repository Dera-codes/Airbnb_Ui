import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.1,
        child: Stack(
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fairbnb_home.webp?alt=media&amp;token=27e4e303-eac2-4144-945f-73769bcb81f7&quot;",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.1,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Not sure where to go?/nPerfect.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
