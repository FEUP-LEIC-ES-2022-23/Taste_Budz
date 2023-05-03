import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomLikedNotifcation extends StatelessWidget {
  const CustomLikedNotifcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Stack(children: const [
            Padding(
              padding: EdgeInsets.only(left: 8),

            ),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/platee.jpg"),
            ),
          ]),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "New recommendation",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: mainText),
              ),
              const SizedBox(height: 5),
              Text(
                "Check it out now.",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: SecondaryText),
              ),
          ]),
        ),
      ],
    );
  }}
