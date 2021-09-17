import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gigi_bank_app/constants.dart';
import 'package:gigi_bank_app/pages/add_money.dart';

class AccountInfo {
  String accountNumber;
  String accountLimit;
  String maximumDeposit;
  AccountInfo({required this.accountLimit, required this.accountNumber, required this.maximumDeposit});
}

class RowTabs {
  String name;
  IconData icon;
  RowTabs({required this.name, required this.icon});
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;
  List<AccountInfo> _accountInfo = [
    AccountInfo(accountLimit: r"$300,000", accountNumber: "1014261020", maximumDeposit: r"$50,000"),
  ];

  List<RowTabs> _rowTabs = [
    RowTabs(name: "Spend", icon: Icons.credit_card_outlined),
    RowTabs(name: "Save", icon: Icons.apps_rounded),
    RowTabs(name: "Borrow", icon: Icons.grain),
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
                top: Constants.kPadding * 5,
                bottom: Constants.kPadding / 2,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: FaIcon(FontAwesomeIcons.userAlt,
                      color: Constants.white, size: 18),
                ),
                title: Text(
                  "Hi, Jonathan",
                  style: TextStyle(color: Constants.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddMoney()));
                  },
                  child: Container(
                    child: CircleAvatar(
                      child: CircleAvatar(
                        backgroundColor: Constants.black, radius: 13,
                          child: CircleAvatar(
                            backgroundColor: Constants.appLightAccent, radius: 9,
                              child: Icon(Icons.add, color: Constants.white, size: 17))),
                      radius: 14, backgroundColor: Constants.appLightAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding,
                left: Constants.kPadding * 1.5,
                right: Constants.kPadding * 1.5,
                bottom: Constants.kPadding * 2,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Constants.kPadding),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Constants.kPadding),
                        child: SizedBox(
                          child: Text('Account Balance',
                              style: TextStyle(color: Colors.white60, fontSize: 15)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(Constants.kPadding / 2),
                        child: SizedBox(
                          child: Text(r'$0.00',
                              style: TextStyle(
                                  color: Constants.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          _rowTabs.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Constants.kPadding * 2,
                                vertical: Constants.kPadding),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade50,
                                    borderRadius:
                                        BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 3),
                                    child: Icon(_rowTabs[index].icon,
                                        size: 21),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5),
                                  child: Text(_rowTabs[index].name,
                                      style: TextStyle(
                                          color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Constants.kPadding / 2),
              child: SizedBox(
                child: Text("Welcome to Gigi!", style: TextStyle(color: Constants.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: Constants.kPadding, bottom: 1),
              child: SizedBox(
                child: Text("Your Gigi account number is ${_accountInfo[index].accountNumber}.", style: TextStyle(color: Constants.white, fontSize: 14),
                textAlign: TextAlign.center),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding * 2),
              child: SizedBox(
                child: Text("Your account is limited to a balance of ${_accountInfo[index].accountLimit} "
                            "and you can receive a maximum deposit of ${_accountInfo[index].maximumDeposit} at a time.",
                    style: TextStyle(color: Constants.white, fontSize: 14),
                    textAlign: TextAlign.center),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding * 3,
                left: Constants.kPadding * 1.5,
                right: Constants.kPadding * 1.5,
                bottom: Constants.kPadding,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AddMoney.routeName);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.kPadding * 1.5),
                    child: Text("Add Money", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
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
