import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/plantify_icon.png"),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "PLANTIFY",
                    style: TextStyle(fontSize: 24, fontFamily: "Philosopher"),
                  ),
                  Spacer(),
                  Transform.scale(
                      scale: 1.3,
                      child:
                          Image.asset("assets/images/notification_icon.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Transform.scale(
                      scale: 1.3,
                      child: Image.asset("assets/images/widgets.png"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
