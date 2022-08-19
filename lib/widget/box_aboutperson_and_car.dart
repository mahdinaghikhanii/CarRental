// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BoxAboutPerson extends StatelessWidget {
  final String name;
  final String number;
  final IconData icon;
  const BoxAboutPerson(
      {required this.name, required this.number, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            color: (Theme.of(context).dialogBackgroundColor)),
        width: 155,
        height: 110,
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.blue.shade400,
                  ),
                  Text(number,
                      style: Theme.of(context).primaryTextTheme.subtitle2),
                  Text(name,
                      style: TextStyle(
                          fontFamily: 'english',
                          fontSize: 12,
                          color: Colors.grey.shade600))
                ],
              ),
            )));
  }
}
