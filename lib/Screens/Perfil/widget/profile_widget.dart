import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 3,
            right: 24,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 250,
          height: 250,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }
  Widget buildEditIcon(Color color, {bool isEdit = false}) {
    return ElevatedButton(
      onPressed: () {
        // code to handle button press
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 4,
        padding: EdgeInsets.zero,
        shape: CircleBorder(),
      ),
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Icon(
            isEdit ? Icons.settings : Icons.settings,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
    );
  }


  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: Colors.white,
          child: child,
        ),
      );
}
