import 'package:flutter/material.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HeroWidget(title: 'LOGIN PAGE'));
  }
}