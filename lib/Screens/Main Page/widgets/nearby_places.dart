import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Main Page/models/nearby_places_model.dart';


import '../pages/details/view/product_details.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
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
                        builder: (context) => ProductDetailsView(

                        ),
                      ));
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
    );
  }
}
