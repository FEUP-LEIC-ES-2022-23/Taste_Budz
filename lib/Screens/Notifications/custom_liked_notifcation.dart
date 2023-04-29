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
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/Avatar3.png"),
              ),
            ),
            Positioned(
              bottom: 8,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/Avatar2.png"),
              ),
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
              RichText(
                maxLines: 2,
                text: TextSpan(
                    text: "John Steve",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: mainText),
                    children: [
                      TextSpan(
                        text: " and \n",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: SecondaryText),
                      ),
                      const TextSpan(text: "Sam Winchester")
                    ]),
              ),
              const SizedBox(
                height: 4,
              ),
              Text("Liked your recipe.",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: SecondaryText)),
            ],
          ),
        ),
        Image.asset(
          "assets/images/Cover.png",
          height: 48,
          width: 48,
        ),
      ],
    );
  }}
