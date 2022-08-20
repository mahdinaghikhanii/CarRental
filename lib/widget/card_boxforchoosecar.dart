// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CardBoxForChooseCar extends StatelessWidget {
  final String chooseCar;
  final String imageCar;
  final Color color;
  const CardBoxForChooseCar(
      {required this.chooseCar, required this.color, required this.imageCar});

  @override
  Widget build(BuildContext context) {
    const fontStyle2 = TextStyle(
        fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold);
    const fontStyle = TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
                color: color,
                width: 325,
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                      imageCar,
                      width: 250,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
