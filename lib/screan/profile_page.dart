// ignore_for_file: use_key_in_widget_constructors

import 'package:carrent/widget/box_aboutperson_and_car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageScrean extends StatefulWidget {
  final Function() taggedThemeMood;

  const ProfilePageScrean({Key? key, required this.taggedThemeMood})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ProfilePageScrean> createState() => _ProfilePageScreanState();
}

class _ProfilePageScreanState extends State<ProfilePageScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.chevron_left,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text('Profile',
              style: Theme.of(context).primaryTextTheme.subtitle1),
          actions: [
            InkWell(
              onTap: widget.taggedThemeMood,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(CupertinoIcons.moon,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.more_vert,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ]),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(26),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/mahdi6.jpg',
                    width: 130,
                    height: 130,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mahdi',
                      style: Theme.of(context).primaryTextTheme.subtitle1,
                    ),
                    const SizedBox(height: 1),
                    Text(
                      'Naghikhani',
                      style: Theme.of(context).primaryTextTheme.subtitle1,
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      child: Text('Edit profile',
                          style: TextStyle(
                              fontSize: 15, color: Colors.blue.withOpacity(1))),
                    )
                  ],
                )
              ],
            )),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.fromLTRB(26, 2, 26, 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BoxAboutPerson(
                icon: Icons.money_off_sharp,
                name: 'Your mony',
                number: '9531',
              ),
              SizedBox(width: 10),
              BoxAboutPerson(
                icon: Icons.rounded_corner_sharp,
                name: 'Total rides',
                number: '14',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(children: const [
          IteamCard(
            iconData: Icons.car_repair,
            namecard: 'Rides history',
          ),
          IteamCard(
            iconData: Icons.car_repair,
            namecard: 'Mony',
          ),
          IteamCard(
            iconData: Icons.format_quote,
            namecard: 'FAQ',
          ),
          IteamCard(
            iconData: Icons.pause_presentation,
            namecard: 'Terms & Conditions',
          ),
          IteamCard(
            iconData: Icons.settings,
            namecard: 'Settings',
          ),
          IteamCard(
            iconData: Icons.headphones,
            namecard: 'Support center',
          ),
        ])
      ]),
    );
  }
}

class IteamCard extends StatelessWidget {
  final IconData iconData;
  final String namecard;
  const IteamCard({required this.iconData, required this.namecard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(children: [
              Icon(iconData, color: Colors.blue.shade400),
              const SizedBox(
                width: 3,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Text(namecard,
                    style: Theme.of(context).primaryTextTheme.bodyText1),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: Colors.blue.shade400,
              )
            ]),
          )
        ],
      ),
    );
  }
}
