import 'package:flutter/material.dart';
import 'Budies/screens/feed_screen.dart';
import 'Main Page/pages/home_page.dart';
import 'Notifications/notifcation_tap.dart';
import 'Perfil/page/profile_page.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: SizedBox.shrink(),
          ),

            body: TabBarView(
            children: [
              HomePage(),
              FeedScreen(),
              NotitcationTap(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.favorite_border_outlined)),
              Tab(icon: Icon(Icons.notifications_none)),
              Tab(icon: Icon(Icons.person_outline)),
            ],
            labelColor: Color(0xFFFFB080),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Color(0xFFFFB080),
          ),
        ),
      ),
    );
  }
}