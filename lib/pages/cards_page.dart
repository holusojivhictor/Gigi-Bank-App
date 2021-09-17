import 'package:flutter/material.dart';
import 'package:gigi_bank_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RequestTab {
  String type;
  String subtitle;
  IconData icon;
  RequestTab({required this.type, required this.subtitle, required this.icon});
}

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {

  List<RequestTab> _request = [
    RequestTab(type: "Request A Card", subtitle: "We'll send it to you wherever you are.", icon: FontAwesomeIcons.creditCard),
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
                      Text("Card", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding * 2,
                right: Constants.kPadding,
                left: Constants.kPadding,
                bottom: Constants.kPadding,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(25),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.kPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: FaIcon(FontAwesomeIcons.globe, color: Colors.white, size: 22),
                            ),
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/mastercard3.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Constants.kPadding,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                child: Text("5399", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("5412", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("XXXX", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("9742", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: Text("CARD HOLDER", style: TextStyle(color: Colors.grey.shade500, fontSize: 14)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: Constants.kPadding / 2,
                              ),
                              child: Text("VALID THRU", style: TextStyle(color: Colors.grey.shade500, fontSize: 14)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: Text("JONATHAN DOE", style: TextStyle(color: Colors.white, fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: Constants.kPadding / 2,
                              ),
                              child: Text("07/2026", style: TextStyle(color: Colors.white, fontSize: 18)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding,
                right: Constants.kPadding / 2,
                left: Constants.kPadding / 2,
                bottom: Constants.kPadding,
              ),
              child: Column(
                children: List.generate(
                  _request.length,
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
                            _request[index].icon,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          _request[index].type,
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            _request[index].subtitle,
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