import 'package:flutter/material.dart';

class LoyaltyRewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 15),
            child: Text(
              'My Rewards',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 0,
                  child: Container(
                    width: 301,
                    height: 78,
                    child: Text(
                      'Use your rewards or new ones',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        height: 1.3636363636,
                        letterSpacing: -0.5,
                        color: Color(0xff32324d),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: loyaltyRewards.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(22, 0, 10, 0), // Adjust the padding as needed
                  margin: EdgeInsets.only(right: 10), // Adjust the margin as needed
                  width: 327,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff32324d),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: FractionallySizedBox(
                          widthFactor: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 35.5, 30, 35.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                  child: Text(
                                    'New user',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.8333333333,
                                      letterSpacing: 0,
                                      color: Color(0xffa5a5ba),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: BoxConstraints(maxWidth: 100),
                                    child: Text(
                                      '30% Discount for all the menu',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1,
                                        letterSpacing: 0,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: FractionallySizedBox(
                          widthFactor: 0.5,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x0affffff),
                              borderRadius: BorderRadius.circular(99),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 20,
                                  top: 20,
                                  child: Align(
                                    child: SizedBox(
                                      width: 158,
                                      height: 158,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(79),
                                          color: Color(0x0fffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 54,
                                  top: 49,
                                  child: Align(
                                    child: SizedBox(
                                      width: 69,
                                      height: 101,
                                      child: Image.network(
                                        'assets/r.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 98,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0a323247),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Color(0x070c1a4b),
                        offset: Offset(0, 0),
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  'Share TasteBudz with a friend',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.375,
                                    color: Color(0xff212134),
                                  ),
                                ),
                              ),
                              Text(
                                'Earn a 30% promo code',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.7142857143,
                                  color: Color(0xff8e8ea9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 44,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 98,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0a323247),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Color(0x070c1a4b),
                        offset: Offset(0, 0),
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 44),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  '2 for 1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.375,
                                    color: Color(0xff212134),
                                  ),
                                ),
                              ),
                              Text(
                                'Buy 2 dishes and get 1 for free',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.7142857143,
                                  color: Color(0xff8e8ea9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 44,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 98,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0a323247),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Color(0x070c1a4b),
                        offset: Offset(0, 0),
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 23),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  '3.200 points',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.375,
                                    color: Color(0xff212134),
                                  ),
                                ),
                              ),
                              Text(
                                'Transform your points in real USD',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.7142857143,
                                  color: Color(0xff8e8ea9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 44,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  List<Map<String, dynamic>> loyaltyRewards = [
    {
      'title': 'Free Dessert',
      'description': 'Get a free dessert on your next visit',
      'points': 50,
    },
    {
      'title': 'Discount Coupon',
      'description': 'Receive a 20% discount on your order',
      'points': 100,
    },
    // Add more loyalty rewards as needed
  ];

}
