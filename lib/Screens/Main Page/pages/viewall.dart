import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/nearby_places_model.dart';
import 'details/view/product_details.dart';
import 'filters.dart';

class RestaurantScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0, // Set elevation to 0
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
    IconButton(
    icon: SvgPicture.asset(
    'assets/icons/Filter.svg', // Replace with the path to your filters SVG
    width: 24,
    height: 24,
      color: Colors.black,
    ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => FiltersPage(),
    ),
    );
    },
    ),
    ],
    ),

        body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        'We think you might enjoy these specially selected restaurants',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    Expanded(
    child: ListView.builder(
    itemCount: nearbyPlaces.length,
    itemBuilder: (context, index) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: SizedBox(
    height: 135,
    width: double.maxFinite,
    child: Card(
    elevation: 0.4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsView(),
                        ),
                      );
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        nearbyPlaces[index].image,
                        height: double.maxFinite,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Casa de Pasto da Palmeira',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.0,
                              height: 1.5,
                            ),
                          ),

                          const SizedBox(height: 5),
                          Text(
                            "Comida tradicional portuguesa",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(120, 130, 138, 1),
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.6666666666666667
                            ),
                          ),

                          const SizedBox(height: 5),
                          // DISTANCE WIDGET

                          const Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: 16,
                              ),
                              const Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFFFFB080),
                                    ),
                                    text: "",
                                    children: const [
                                      TextSpan(
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                          ),
                                          text: "")
                                    ]),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }),
    )
    ])
    );
  }
}
