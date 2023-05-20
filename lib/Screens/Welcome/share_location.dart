import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Welcome/enjoy.dart';

class ShareLocationPage extends StatefulWidget {
  final void Function(String city) onCitySelected;

  const ShareLocationPage({Key? key, required this.onCitySelected})
      : super(key: key);

  @override
  State<ShareLocationPage> createState() => _ShareLocationPageState();
}

class _ShareLocationPageState extends State<ShareLocationPage> {
  final _cityController = TextEditingController();

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    const titleText = 'Share your location with us !';
    const titleTextStyle = TextStyle(
      color: Color.fromRGBO(50, 50, 77, 1),
      fontFamily: 'DM Sans',
      fontSize: 24,
      letterSpacing: -0.5,
      fontWeight: FontWeight.bold,
      height: 1.25,
    );
    const descriptionText =
        'Let us help you find great dining options in your area. Please enter your location.';
    const descriptionTextStyle = TextStyle(
      color: Color.fromRGBO(142, 142, 169, 1),
      fontFamily: 'Mulish',
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1.75,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 100),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
        Container(
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text(
              titleText,
              textAlign: TextAlign.center,
              style: titleTextStyle,
            ),
            SizedBox(height: 14),
            Text(
              descriptionText,
              textAlign: TextAlign.center,
              style: descriptionTextStyle,
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Enter the city you are in:',
                style: TextStyle(
                  color: Color.fromRGBO(142, 142, 169, 1),
                  fontFamily: 'Mulish',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.75,
                )
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'City',
                hintText: 'e.g. Porto',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2.0,
                  ),
                ),
              ),
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              onChanged: (value) {
                setState(() {
                });
              },
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height* 0.34,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width* 0.8,
              child: ElevatedButton(
                onPressed: () {
                  final city = _cityController.text;
                  widget.onCitySelected(city);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const EnjoyScreen();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB080),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]
    )
    )
    );
  }
}

