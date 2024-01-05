import 'package:flutter/material.dart';
import 'package:login_screan/view/joinus/components/joinusbody.dart';

class JoinUsPage extends StatefulWidget {
  const JoinUsPage({super.key});

  @override
  State<JoinUsPage> createState() => _JoinUsPageState();
}

class _JoinUsPageState extends State<JoinUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JoinUsBody(),
    );
  }
}