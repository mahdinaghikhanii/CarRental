import 'package:carrent/widget/card_boxforchoosecar.dart';
import 'package:flutter/material.dart';

class HomePageScrean extends StatelessWidget {
  const HomePageScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
          child: Container(
            width: 38,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(11.0),
              color: Colors.white.withOpacity(0.2),
            ),
            child: const Center(
              child: Icon(
                Icons.chevron_left,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
            child: Container(
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: Colors.grey.withOpacity(0.130),
              ),
              child: const Center(
                child: Icon(Icons.settings, size: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
              child: Text(
                'Car Rentals',
                style: Theme.of(context).primaryTextTheme.subtitle2,
              ),
            ),
            CardBoxForChooseCar(
              chooseCar: 'Luxery Cars',
              color: Colors.grey.shade900,
              imageCar: 'assets/images/porshe3.png',
            ),
            const CardBoxForChooseCar(
              chooseCar: 'City Cars',
              color: Colors.black26,
              imageCar: 'assets/images/porsche2.png',
            ),
            CardBoxForChooseCar(
              chooseCar: 'Suv Cars',
              color: Colors.red.shade400,
              imageCar: 'assets/images/porshe5.png',
            ),
            const CardBoxForChooseCar(
              chooseCar: 'hybrid Cars',
              color: Color(0xFF0555FD),
              imageCar: 'assets/images/porshe6.png',
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
