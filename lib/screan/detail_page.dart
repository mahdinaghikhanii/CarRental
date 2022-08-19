// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:carrent/widget/about_car_details.dart';
import 'package:flutter/material.dart';

class DetailScrean extends StatelessWidget {
  const DetailScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styletitleColorForDetail = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white);

    return Scaffold(
        backgroundColor: const Color(0xFF0555FD),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0555FD),
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
                  child: Icon(Icons.favorite, size: 25, color: Colors.white),
                ),
              ),
            ),
          ],
          leading:
              const Icon(Icons.chevron_left, size: 40, color: Colors.white),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 200,
                width: double.infinity,
                child: Carousel(
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  dotBgColor: const Color(0xFF0555FD).withOpacity(0.5),
                  borderRadius: true,
                  autoplay: false,
                  images: const [
                    ExactAssetImage('assets/images/porshe.png'),
                    ExactAssetImage('assets/images/porshe911.png'),
                  ],
                )),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Porsche \n911 Carreara 4s',
                    style: styletitleColorForDetail)),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                children: [
                  const Text('Select your color',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'english',
                          fontSize: 18)),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 25,
                      height: 25,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 25,
                        height: 25,
                        color: Colors.blueGrey,
                      )),
                ],
              ),
            ),
            AboutCarDetails(
              titile: 'Vehicle type',
              descriptiom: "Coupe",
            ),
            AboutCarDetails(descriptiom: '320Hp', titile: 'Performance'),
            AboutCarDetails(descriptiom: 'Automatic', titile: 'Circuit'),
            AboutCarDetails(descriptiom: '290KM', titile: 'Max spead'),
            AboutCarDetails(descriptiom: '2.9', titile: 'aceleration'),
            const SizedBox(height: 20),
            const Divider(endIndent: 20, indent: 20, color: Colors.white),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text('Contract period',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'english',
                        fontWeight: FontWeight.bold,
                        fontSize: 18))),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '6 Month',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 44,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Rent - €4800',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
