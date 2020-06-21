import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MobileOtpScreen.dart';
import 'helpers/Constants.dart';
import 'beauty_textfield/beauty_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNumberScreen extends StatefulWidget {
  @override
  _MobileNumberScreen createState() => _MobileNumberScreen();
}

class _MobileNumberScreen extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: mobile_number_title_text,
//                style: GoogleFonts.lato(fontStyle: FontStyle.normal),
                style: TextStyle(
                    color: appBaseThemeColor,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Open Sans',
                    fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              width: 150,
              height: 180,
              child: Image.asset(
                "assets/images/contacts.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 300),
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'We will send you an ',
                      style: TextStyle(color: Colors.grey[500],
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 12)),
                  TextSpan(
                      text: 'One Time Password ',
                      style: TextStyle(
                          color: appBaseThemeColor,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 14)),
                  TextSpan(
                      text: 'on this mobile number.',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 12)),
                ]),
              ),
            ),
            BeautyTextfield(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              width: double.maxFinite,
              height: 55,
              duration: Duration(milliseconds: 300),
              inputType: TextInputType.text,
              prefixIcon: Icon(Icons.phone_iphone),
              placeholder: mobile_number_title_text,
              fontFamily: 'Open Sans',
              fontStyle: FontStyle.normal,
              //textColor: Colors.black,
              onTap: () {
                print('Click');
              },
              onChanged: (t) {
                print(t);
              },
              onSubmitted: (d) {
                print(d.length);
              },
              //suffixIcon: Icon(Icons.remove_red_eye),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              height: 100,
              width: 180,
              child: RaisedButton(
                child: Text(
                  button_send_title,
                  style: TextStyle(fontSize: 14.0),
                ),
                onPressed: () {
                  /*...*/
                  print('$button_send_title button Pressed');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MobileOtpScreen()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: appBaseThemeColor,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
