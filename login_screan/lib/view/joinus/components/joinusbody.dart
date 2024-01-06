import 'package:flutter/material.dart';
import 'package:login_screan/autentications/autentication.dart';
import 'package:login_screan/style/colors.dart';
import 'package:login_screan/view/joinus/components/joinusimail.dart';
import 'package:login_screan/view/joinus/components/joinuspassword.dart';
import 'package:login_screan/view/joinus/components/joinususernameinput.dart';
import 'package:login_screan/view/login/loginpage.dart';
import 'package:svg_flutter/svg.dart';

class JoinUsBody extends StatefulWidget {
  const JoinUsBody({super.key});

  @override
  State<JoinUsBody> createState() => _JoinUsBodyState();
}

class _JoinUsBodyState extends State<JoinUsBody> {
  var _joinusnusernamecontroller = TextEditingController();
  var _joinusuemailcontroller = TextEditingController();
  var _joinuspasswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  var _joinusautentication = Autentication();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'Assets/Images/Join us img.svg',
                  width: 250,
                ),
                Text(
                  "Join Us !",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                      JoinUsUsernameInput(
                          joinusnusernamecontroller:
                              _joinusnusernamecontroller),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                      JoinUsEmailInput(
                          joinusuemailcontroller: _joinusuemailcontroller)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                      JoinUsPasswordInput(
                          joinuspasswordcontroller: _joinuspasswordcontroller),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: bluesecundary,
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                      )),
                      // Text(
                      //   'Or',
                      //   style: TextStyle(
                      //       fontSize: 11,
                      //       fontFamily: 'Poppins',
                      //       fontWeight: FontWeight.w600,
                      //       color: blueprimary.withOpacity(
                      //         0.7,
                      //       )),
                      // ),
                      // Expanded(
                      //   child: Divider(
                      //     color: bluesecundary,
                      //     indent: 5,
                      //     endIndent: 5,
                      //     thickness: 2,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: blueprimary,
                      borderRadius: BorderRadius.circular(25.5),
                      boxShadow: [
                        BoxShadow(
                            color: blueprimary.withOpacity(0.7),
                            offset: Offset(0, 8),
                            blurRadius: 10)
                      ]),
                  child: TextButton(
                    onPressed: ClickCreateAnAccount,
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Text(
                      'I have Create an account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          // decoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal,
                          color: blueprimary.withOpacity(
                            0.7,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ClickCreateAnAccount() {
    String namevalue = _joinusnusernamecontroller.value.text;
    String emailvalue = _joinusuemailcontroller.value.text;
    String passwordvalue = _joinuspasswordcontroller.value.text;

    _joinusautentication.ClickJoinUs(
        namevalue: namevalue,
        emailvalue: emailvalue,
        passwordvalue: passwordvalue,
        context: context,
        key: _formkey);
  }
}
