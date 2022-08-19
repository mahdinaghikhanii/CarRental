import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutCarDetails extends StatelessWidget {
  String titile;
  String descriptiom;
  AboutCarDetails({
    Key? key,
    required this.descriptiom,
    required this.titile,
  }) : super(key: key);

  final styledescriptionForDeatail =
      const TextStyle(color: Colors.white, fontFamily: 'english', fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(children: [
        Text(titile, style: styledescriptionForDeatail),
        const Spacer(),
        Text(descriptiom, style: styledescriptionForDeatail)
      ]),
    );
  }
}
