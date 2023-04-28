import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Perfil/model/user.dart';
import 'package:tastebudz/Screens/Perfil/utils/user_preferences.dart';
import 'package:tastebudz/Screens/Perfil/widget/appbar_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/button_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/numbers_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15),
          Stack(
            children: [
              Column(
                children: [
                  ProfileWidget(
                    imagePath: user.imagePath,
                    onClicked: () async {},
                  ),
                  const SizedBox(height: 24),
                  buildName(user),
                  const SizedBox(height: 24),
                  NumbersWidget(),
                  const SizedBox(height: 48),
                  buildAbout(user),
                ],
              ),
              Positioned(
                left: 19,
                top: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(160),
                    ),
                    primary: Colors.white,
                    elevation: 4,
                    side: BorderSide(
                      color: Color(0xffe6f0f5),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 63,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.card_giftcard, color: Colors.black, size: 33),
                        SizedBox(width: 0),
                      ],
                    ),
                  ),
                ),
              ),
            Positioned(
                right: 19,
                top: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(160),
                    ),
                    primary: Colors.white,
                    elevation: 4,
                    side: BorderSide(
                      color: Color(0xffe6f0f5),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 63,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.notifications_none, color: Colors.black, size: 33),
                        SizedBox(width: 0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(
            fontFamily: "Manrope",
            fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Color.fromRGBO(50, 50, 77, 1)),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(fontFamily: "Manrope", color: Colors.grey),
      )
    ],
  );

  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );
}
