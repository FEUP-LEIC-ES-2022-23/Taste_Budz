import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Main Page/widgets/nearby_places.dart';
import 'package:tastebudz/Screens/Main Page/widgets/popular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tastebudz/Screens/Main%20Page/constants.dart';
import 'package:tastebudz/Screens/Main%20Page/pages/viewall.dart';

import '../rating/rating_page.dart';
import '../widgets/search_form.dart';
import '../../Notifications/notifcation_tap.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/Location.svg",
              width: 15, // set width to 30 logical pixels
              height: 15, // set height to 30 logical pixels
            ),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "Porto, Portugal",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotitcationTap()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 6,
            ),
            Text(
              "Welcome back,",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),

            Text(
              "Emma Johnson",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const SizedBox(
              height: 2,
            ),
            // CATEGORIES
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular in Porto",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestaurantScreen()),
                    );
                  },

                  child: const Text("View All"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFB080)),
                  ),
                )
              ],
            ),
            const RecommendedPlaces(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby From You",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestaurantScreen()),
                    );
                  },

                  child: const Text("View All"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFB080)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const NearbyPlaces(),
          ],
        ),
      ));
  }
}
