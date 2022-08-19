import 'package:flutter/material.dart';

class CardSelectCars extends StatelessWidget {
  final String chooseCar;
  final String imageCar;
  final String roudsAndKm;
  final String mony;

  // ignore: use_key_in_widget_constructors
  const CardSelectCars(
      {required this.mony,
      required this.chooseCar,
      required this.imageCar,
      required this.roudsAndKm});

  @override
  Widget build(BuildContext context) {
    const fontStyle2 = TextStyle(
        fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold);
    const TextStyle fontStyle = TextStyle(
        fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold);
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
                color: Colors.grey.shade200,
                width: 355,
                height: 226,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                        child: const Icon(
                          Icons.gps_not_fixed_outlined,
                          size: 14,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                          child: Text(
                            roudsAndKm,
                            style: const TextStyle(
                                fontFamily: 'english', fontSize: 14),
                          )),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 8, 20, 0),
                        child: Row(
                          children: [
                            Text(
                              mony,
                              style: TextStyle(
                                  fontFamily: 'english',
                                  fontSize: 14,
                                  color: Colors.blue.shade300),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            const Text(
                              'month',
                              style:
                                  TextStyle(fontFamily: 'bold', fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ]),
                    Image.asset(
                      imageCar,
                      width: 250,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            chooseCar,
                            style: fontStyle,
                          ),
                        ),
                        const Spacer(),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50)),
                          child: Container(
                            color: Colors.white,
                            width: 130,
                            height: 59.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Book Now', style: fontStyle2),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.blue.shade400,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
