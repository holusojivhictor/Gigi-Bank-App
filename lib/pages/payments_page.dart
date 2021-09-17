import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gigi_bank_app/constants.dart';

class BillList {
  String type;
  String subtitle;
  IconData icon;
  BillList({required this.type, required this.subtitle, required this.icon});
}

class PaymentsPage extends StatefulWidget {
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {

  List<BillList> _billList = [
    BillList(type: "Send Money", subtitle: "Free transfers to all banks", icon: FontAwesomeIcons.paperPlane),
    BillList(type: "Buy Airtime", subtitle: "Recharge any phone easily", icon: FontAwesomeIcons.mobileAlt),
    BillList(type: "Pay A Bill", subtitle: "Take care of your essentials", icon: FontAwesomeIcons.moneyBill),
    BillList(type: "Payment Link", subtitle: "Send Money with a simple link", icon: FontAwesomeIcons.link),
    BillList(type: "Web Payment", subtitle: "Pay online without your card", icon: FontAwesomeIcons.globe),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding * 4,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white24, width: .5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Constants.kPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Payments", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding,
                right: Constants.kPadding,
                left: Constants.kPadding,
                bottom: Constants.kPadding,
              ),
              child: Column(
                children: List.generate(
                  _billList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(
                          top: Constants.kPadding,
                          left: Constants.kPadding,
                          right: Constants.kPadding,
                          bottom: Constants.kPadding / 2,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ListTile(
                            minLeadingWidth: 25,
                            minVerticalPadding: 18,
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                top: Constants.kPadding / 2,
                              ),
                              child: Icon(
                                _billList[index].icon,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              _billList[index].type,
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                _billList[index].subtitle,
                                style: TextStyle(color: Colors.white54, fontSize: 12),
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                          ),
                        ),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}