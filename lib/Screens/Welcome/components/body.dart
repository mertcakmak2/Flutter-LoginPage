import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/Screens/Welcome/components/background.dart';
import 'package:login_ui/components/RoundedButton.dart';
import 'package:login_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Welcome To App", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          RoundedButton(text:"LOGIN", press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
          }),
          RoundedButton(text:"SIGN UP", textColor: Colors.black, color: kPrimaryLightColor, press: (){})
        ]
      )
    );
  }
}

// class RoundedButton extends StatelessWidget {

//   final String text;
//   final Function press;
//   final Color color, textColor;
  
//   const RoundedButton({
//     Key? key, 
//     required this.text, 
//     required this.press, 
//     this.color = kPrimaryColor, 
//     this.textColor = Colors.white
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container( 
//       width: size.width * 0.8,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(29),
//         child: FlatButton(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//           color: kPrimaryColor,
//           onPressed: (){}, 
//           child: Text(text, style: TextStyle(color: textColor),)
//         ),
//       ),
//     );
//   }
// }

