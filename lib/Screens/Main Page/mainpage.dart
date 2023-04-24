import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: SizedBox.shrink(),
          ),

            body: TabBarView(
            children: [
              HomeScreen(),
              Icon(Icons.favorite_border_outlined),
              Icon(Icons.circle_outlined),
              Icon(Icons.person_outline),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.favorite_border_outlined)),
              Tab(icon: Icon(Icons.circle_outlined)),
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
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: 360,
          height: 46,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 360,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 304,
                child: Container(
                  width: 35.32710266113281,
                  height: 34.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
              ),

              Positioned(
                top: 14,
                left: 84,
                child: Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 14),
                      Text(
                        'Porto, Portugal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontFamily: 'Manrope',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Stack(
          children: [
          Positioned(
          top: 0,
          left: 0,
          child: Text(
            'Good Morning,',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(43, 43, 43, 1),
              fontFamily: 'Manrope',
              fontSize: 18,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ),
        Positioned(
          top: 23,
          left: 0,
          child: Text(
            'Emma Johnson',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(50, 50, 77, 1),
              fontFamily: 'Manrope',
              fontSize: 28,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ),

      ]
    ),
      )
    );
  }
}
