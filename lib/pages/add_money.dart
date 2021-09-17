import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gigi_bank_app/constants.dart';

class OverDraftTab {
  String type;
  String subtitle;
  IconData icon;
  OverDraftTab({required this.type, required this.subtitle, required this.icon});
}

class TransferType {
  String type;
  String subtitle;
  IconData icon;
  TransferType({required this.type, required this.subtitle, required this.icon});
}

class AddMoney extends StatefulWidget {
  static String routeName = "/add_money";

  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  
  List<OverDraftTab> _overdraftTab = [
    OverDraftTab(type: "Overdraft", subtitle: "Borrow from your overdraft account for a small daily fee.", icon: FontAwesomeIcons.wallet),
  ];

  List<TransferType> _transferType = [
    TransferType(type: "Bank Transfer", subtitle: "From bank app or internet banking.", icon: FontAwesomeIcons.paperPlane),
    TransferType(type: "USSD", subtitle: "With your other bank's USSD code.", icon: FontAwesomeIcons.hashtag),
    TransferType(type: "Card", subtitle: "Add money with a debit card.", icon: FontAwesomeIcons.creditCard),
    TransferType(type: "Payoneer", subtitle: "Withdraw from your Payoneer account.", icon: FontAwesomeIcons.yenSign),
    TransferType(type: "Cash Deposit", subtitle: "Deposit cash at our partner banks.", icon: FontAwesomeIcons.moneyBill),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                      Text("Add Money", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                      Icon(Icons.grain, color: Constants.appDark),
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
                  _overdraftTab.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(
                      top: Constants.kPadding,
                      left: Constants.kPadding,
                      right: Constants.kPadding,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        minLeadingWidth: 25,
                        minVerticalPadding: 20,
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            top: Constants.kPadding / 2,
                          ),
                          child: Icon(
                            _overdraftTab[index].icon,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          _overdraftTab[index].type,
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            _overdraftTab[index].subtitle,
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
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding,
                right: Constants.kPadding,
                left: Constants.kPadding,
                bottom: Constants.kPadding,
              ),
              child: Column(
                children: List.generate(
                  _transferType.length,
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
                            _transferType[index].icon,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          _transferType[index].type,
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            _transferType[index].subtitle,
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