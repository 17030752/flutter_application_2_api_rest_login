import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2_api_rest/utils/responsive.dart';
import 'package:flutter_application_2_api_rest/widgets/circle_widget.dart';
import 'package:flutter_application_2_api_rest/widgets/icon_container_widget.dart';
import 'package:flutter_application_2_api_rest/widgets/login_form.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double blueSize = responsive.wp(57);
    final double purpleSize = responsive.wp(88);
    return Scaffold(
      backgroundColor: Colors.red,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            height: responsive.height,
            width: double.infinity,
            color: Colors.grey[300],
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: -purpleSize * 0.35,
                  right: -purpleSize * 0.15,
                  child: CircleWidget(
                    size: purpleSize,
                    colors: [Colors.purpleAccent, Colors.purple],
                  ),
                ),
                Positioned(
                  top: -blueSize * 0.46,
                  left: -blueSize * 0.15,
                  child: CircleWidget(
                    size: blueSize,
                    colors: [
                      Colors.blueAccent,
                      Colors.blue,
                    ],
                  ),
                ),
                Positioned(
                  top: purpleSize * 0.22,
                  child: Column(
                    children: [
                      Text(
                        'Hello!\nSing up to get started.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: responsive.dp(1.6), color: Colors.white),
                      ),
                      SizedBox(
                        height: responsive.dp(4.5),
                      ),
                      ClipOval(
                        child: Image.network(
                          'https://cdn-icons.flaticon.com/png/512/4139/premium/4139993.png?token=exp=1650339218~hmac=a2b53a14c5c3c5ac07ce7bc518496845',
                          width: responsive.wp(25),
                          height: responsive.wp(25),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    left: 15,
                    top: 15,
                    child: SafeArea(
                      child: CupertinoButton(
                        color: Colors.black26,
                        padding: EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(30),
                        child: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
