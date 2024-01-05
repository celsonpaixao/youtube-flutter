import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';
import 'package:login_screan/view/joinus/joinuspage.dart';
import 'package:login_screan/view/login/components/loginpasswordinput.dart';
import 'package:login_screan/view/login/components/loginusernameinput.dart';
import 'package:svg_flutter/svg.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  var loginusernamecontroller = TextEditingController();
  var loginpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'Assets/Images/Login Img.svg',
                width: 250,
              ),
              Text(
                "Login",
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
                    SizedBox(
                      height: 50.5,
                      child: LoginUsernameInput(
                        loginusernamecontroller: loginusernamecontroller,
                      ),
                    ),
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
                    SizedBox(
                      height: 50.5,
                      child: LoginPasswordInput(
                        loginpasswordcontroller: loginpasswordcontroller,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: blueprimary.withOpacity(0.7)),
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
                  onPressed: () {},
                  child: Text(
                    'Login',
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
                  onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => JoinUsPage(),));
                  },
                  child: Text(
                    'I have not an account yet',
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
    );
  }
}
