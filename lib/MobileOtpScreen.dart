import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'helpers/Constants.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class MobileOtpScreen extends StatefulWidget {
  @override
  _MobileOtpScreen createState() => _MobileOtpScreen();
}

class _MobileOtpScreen extends State<MobileOtpScreen> {
  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: appBaseThemeColor, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Center(
            child: Text(
          text[position],
          style: TextStyle(color: appBaseThemeColor),
        )),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: appBaseThemeColor.withAlpha(20),
            ),
            child: Icon(Icons.arrow_back_ios, color: appBaseThemeColor, size: 16,),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: <Widget>[
                        Container(
                            constraints: const BoxConstraints(maxWidth: 400),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                                'Verification Code',
                                style: TextStyle(
                                    color: appBaseThemeColor,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Open Sans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900))),
                        Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                                'Enter 6 digits verification code we just sent you on your number',
                                style: TextStyle(
                                    color: appBaseThemeColor,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Open Sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 400),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              otpNumberWidget(0),
                              otpNumberWidget(1),
                              otpNumberWidget(2),
                              otpNumberWidget(3),
                              otpNumberWidget(4),
                              otpNumberWidget(5),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
                    constraints: const BoxConstraints(maxWidth: 150, maxHeight: 100),
                    child: RaisedButton(
                      onPressed: () {},
                      color: appBaseThemeColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Confirm',
                              style: TextStyle(color: Colors.white),
                            ),
//                            Container(
//                              padding: const EdgeInsets.all(8),
//                              decoration: BoxDecoration(
//                                borderRadius:
//                                    const BorderRadius.all(Radius.circular(20)),
//                                color: appBaseThemeColor,
//                              ),
//                              child: Icon(
//                                Icons.arrow_forward_ios,
//                                color: Colors.white,
//                                size: 15,
//                              ),
//                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  NumericKeyboard(
                    onKeyboardTap: _onKeyboardTap,
                    textColor: appBaseThemeColor,
                    rightIcon: Icon(
                      Icons.backspace,
                      color: appBaseThemeColor,
                    ),
                    rightButtonFn: () {
                      setState(() {
                        text = text.substring(0, text.length - 1);
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
