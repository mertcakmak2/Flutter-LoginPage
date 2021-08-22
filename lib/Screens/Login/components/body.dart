
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screens/Login/components/background.dart';
import 'package:login_ui/components/RoundedButton.dart';
import 'package:login_ui/components/RoundedInputField.dart';
import 'package:login_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children:[ Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
            SvgPicture.asset("assets/icons/login.svg", height: size.height * 0.35),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(29)
              ),
              child: RoundedInputField(
                hintText: "Your Email", 
                icon: Icons.person,
                visibility: false,
                onChanged: (value) { debugPrint(value); },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(29),
              ),
              child: RoundedInputField(
                hintText: "Password", 
                icon: Icons.lock,
                visibility: true,
                onChanged: (value) { debugPrint(value); },
              ),
            ),
            RoundedButton(text: "Login", press: (){}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(color: kPrimaryColor),
                ),
                GestureDetector(
                  onTap: (){
                    debugPrint("on tap");
                  },
                  child: Text(
                    "Sign up", 
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold))
                )
              ],
            )
          ],
        )
      ),
      ]
    );
  }
}

