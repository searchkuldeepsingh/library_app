import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:libraryapp/helpers/Constants.dart';
import 'package:libraryapp/beauty_textfield/beauty_textfield.dart';
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
//      appBar: AppBar(
//        title: Text('Sign In'),
//        backgroundColor: Colors.white,
//      ),
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
                    color: const Color(0xff5c5bb0),
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
              padding: EdgeInsets.all(20),
              height: 80,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: mobile_number_subtitle_text,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 13),
                ),
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
              fontFamily:'Open Sans',
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
                  "Send",
                  style: TextStyle(fontSize: 14.0),
                ),
                onPressed: () {
                  /*...*/
                  print('Send button Pressed');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                ),
                color: const Color(0xff5c5bb0),
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
