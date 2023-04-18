import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: SizedBox.shrink(),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.home_outlined),
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