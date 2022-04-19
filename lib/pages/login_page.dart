import 'package:flutter/material.dart';
import 'package:flutter_application_2_api_rest/utils/responsive.dart';
import 'package:flutter_application_2_api_rest/widgets/circle_widget.dart';
import 'package:flutter_application_2_api_rest/widgets/icon_container_widget.dart';
import 'package:flutter_application_2_api_rest/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double blueSize = responsive.wp(57);
    final double purpleSize = responsive.wp(80);
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
                  top: -blueSize * 0.55,
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
                  top: -purpleSize * 0.5,
                  right: -purpleSize * 0.2,
                  child: CircleWidget(
                    size: purpleSize,
                    colors: [Colors.purpleAccent, Colors.purple],
                  ),
                ),
                Positioned(
                  top: purpleSize * 0.35,
                  child: Column(
                    children: [
                      IconContainerWidget(
                        size: responsive.wp(17),
                      ),
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      Text(
                        'Helo Again \n ¡Welcome Back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(1.6),
                        ),
                      )
                    ],
                  ),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
