import 'package:flutter/material.dart';
import 'package:gigi_bank_app/pages/homepage.dart';
import 'package:gigi_bank_app/pages/payments_page.dart';
import 'package:gigi_bank_app/pages/cards_page.dart';
import 'package:gigi_bank_app/pages/extras_page.dart';
import 'package:gigi_bank_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidgetLink extends StatefulWidget {
  @override
  _WidgetLinkState createState() => _WidgetLinkState();
}

class _WidgetLinkState extends State<WidgetLink> {

  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    HomePage(),
    PaymentsPage(),
    CardsPage(),
    ExtrasPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Constants.black,
          primaryColor: Constants.white,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white10, width: 1)),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Constants.white,
            unselectedFontSize: 10,
            selectedFontSize: 12,
            unselectedItemColor: Colors.grey.shade500,
            showUnselectedLabels: true,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.paperPlane, size: 18),
                label: 'Payments',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.creditCard, size: 18),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grain),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    );
  }
}