import 'package:carrent/widget/card_selectcars.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectCarScreans extends StatelessWidget {
  SelectCarScreans({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Luxery Cars',
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
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
                child: Icon(Icons.favorite, size: 25, color: Colors.black),
              ),
            ),
          ),
        ],
        leading: const Icon(
          Icons.chevron_left,
          size: 40,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Text(
                'Brands',
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              child: ClipOval(
                                child: Image(
                                    width: 60,
                                    height: 60,
                                    image: AssetImage(image[index])),
                              ),
                            )),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Text(
                'All Cars',
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Column(
                children: const [
                  CardSelectCars(
                      mony: '1000',
                      roudsAndKm: '18Km Rasht',
                      chooseCar: 'Porshe 911 S',
                      imageCar: 'assets/images/porshe.png'),
                  CardSelectCars(
                      mony: '1800',
                      roudsAndKm: '2Km Rasht',
                      chooseCar: 'Mercedes benz S500',
                      imageCar: 'assets/images/s500.png'),
                  CardSelectCars(
                      mony: '1400',
                      roudsAndKm: '1Km Rasht',
                      chooseCar: 'Porshe 911 Cara 4s',
                      imageCar: 'assets/images/porshe3.png'),
                  CardSelectCars(
                      mony: '1000',
                      roudsAndKm: '18Km Rasht',
                      chooseCar: 'Porshe 911 S',
                      imageCar: 'assets/images/porshe.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> image = [
    'assets/logocars/all.png',
    'assets/logocars/Bmw.png',
    'assets/logocars/irankhodra.png',
    'assets/logocars/saiipa.png',
    'assets/logocars/hyundai.png',
    'assets/logocars/toyota.png',
    'assets/logocars/porshelogo.png',
    'assets/logocars/maseratilogo.png',
    'assets/logocars/benzlogoo.png',
  ];
}
