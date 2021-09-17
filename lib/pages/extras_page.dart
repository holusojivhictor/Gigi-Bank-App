import 'package:flutter/material.dart';
import 'package:gigi_bank_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserInfo {
  String name;
  String type;
  Image image;
  UserInfo({required this.name, required this.image, required this.type});
}

class ExtrasTabs {
  String type;
  String subtitle;
  IconData icon;
  ExtrasTabs({required this.type, required this.subtitle, required this.icon});
}

class ExtrasPage extends StatefulWidget {
  @override
  _ExtrasPageState createState() => _ExtrasPageState();
}

class _ExtrasPageState extends State<ExtrasPage> {

  List<ExtrasTabs> _extras = [
    ExtrasTabs(type: "Statements & Reports", subtitle: "Download monthly statements", icon: FontAwesomeIcons.fileAlt),
    ExtrasTabs(type: "Saved Cards", subtitle: "Manage connected cards", icon: FontAwesomeIcons.creditCard),
    ExtrasTabs(type: "Linked Accounts", subtitle: "Manage external accounts", icon: FontAwesomeIcons.userCircle),
    ExtrasTabs(type: "Chat With Us", subtitle: "Get support or send feedback", icon: FontAwesomeIcons.commentDots),
    ExtrasTabs(type: "Security", subtitle: "Protect yourself from intruders", icon: FontAwesomeIcons.shieldAlt),
    ExtrasTabs(type: "Referrals", subtitle: "Earn money when your friends join Gigi", icon: FontAwesomeIcons.bookmark),
    ExtrasTabs(type: "Account Limits", subtitle: "How much can you spend and receive", icon: FontAwesomeIcons.history),
    ExtrasTabs(type: "Legal", subtitle: "About our contract with you", icon: FontAwesomeIcons.fileContract),
  ];

  List<UserInfo> _userInfo = [
    UserInfo(name: "Jonathan Doe", image: Image.asset("assets/images/128_16.png"), type: "Account Details"),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.grain, color: Constants.appDark),
                      Text("More", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Notifs")),
                          );
                        },
                          child: Icon(Icons.notifications, color: Colors.white)),
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
              ),
              child: Column(
                children: List.generate(
                  _userInfo.length,
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
                        minVerticalPadding: 20,
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            top: Constants.kPadding / 2,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade900,
                            child: _userInfo[index].image,
                          ),
                        ),
                        title: Text(
                          _userInfo[index].name,
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            _userInfo[index].type,
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
                  _extras.length,
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
                            _extras[index].icon,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          _extras[index].type,
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            _extras[index].subtitle,
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