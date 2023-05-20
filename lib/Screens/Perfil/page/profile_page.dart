import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Perfil/model/user.dart';
import 'package:tastebudz/Screens/Perfil/utils/user_preferences.dart';
import 'package:tastebudz/Screens/Perfil/widget/appbar_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/button_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/numbers_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/profile_widget.dart';

import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Perfil/model/user.dart';
import 'package:tastebudz/Screens/Perfil/page/rewards.dart';
import 'package:tastebudz/Screens/Perfil/utils/user_preferences.dart';
import 'package:tastebudz/Screens/Perfil/widget/appbar_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/button_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/numbers_widget.dart';
import 'package:tastebudz/Screens/Perfil/widget/profile_widget.dart';

import '../../../firebase/auth.dart';



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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5, // Replace with the desired number of items
                    itemBuilder: (context, index) {
                      return buildAbout(user);
                    },
                  ),
                ],
              ),
              Positioned(
                left: 19,
                top: 2,
                child: ElevatedButton(
                  onPressed: () {
                    AuthService().logout(); // Call the logout method from the authentication service
                  },
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
                    minimumSize: Size(56, 56), // Set the minimum size for the log out button
                  ),
                  child: Icon(Icons.logout, color: Colors.black, size: 33), // Change the icon to a log out icon
                ),
              ),

              Positioned(
                right: 19, // Add this line to position the gift button on the right
                top: 2, // Add this line to align the gift button with the log out button
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoyaltyRewardsScreen(),
                      ),
                    );
                  },
                  child: Icon(Icons.card_giftcard, color: Colors.black), // Set the icon color to black
                  backgroundColor: Colors.white, // Set the background color to white
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
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
    padding: EdgeInsets.fromLTRB(18, 18, 19, 18),
    width: 372,
    height: 132,
    decoration: BoxDecoration(
      color: Color(0xfff7f7f7),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Container(
            width: 264,
            height: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 183,
                    height: 24,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                          child: Text(
                            'Restaurante',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              color: Color(0xff32324d),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4.5, 0, 4.5),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                width: 8,
                                height: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '4.3',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  color: Color(0xff32324d),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 23.5,
                  child: Align(
                    child: SizedBox(
                      width: 52,
                      height: 13,
                      child: Text(
                        '(22.02.2023)',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 8.1864395142,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: Color(0xff32324d),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 36,
                  child: Align(
                    child: SizedBox(
                      width: 264,
                      height: 60,
                      child: Text(
                        'My new favorite spot in London. Three course meal very reasonably priced, staff is excellent, quaint spot, and the food is over the top. They will get their first star for sure this spring. I cant wait to return. ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: Color(0xff32324d),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
