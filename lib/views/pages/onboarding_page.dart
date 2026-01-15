import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project_1/views/pages/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/Welcome.json'),
              SizedBox(height: 70),
              FittedBox(child: Text('Welcome to the App!, you are now on onboarding page.', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, letterSpacing: 2.0))),
              SizedBox(height: 50),
              ElevatedButton(onPressed: () {
                Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  })
                );
              }, child: Text('Continue'))
            ],
          ),
        ),
      ),
    );
  }
}