import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project_1/views/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/Fish_Loader.json'),
              FittedBox(child: Text('Welcome to the App!', style: TextStyle(fontSize: 30.0, letterSpacing: 10.0))),
              SizedBox(height: 23),
              FilledButton(
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)
                  minimumSize: Size(double.infinity, 50)
                ),
                onPressed: () => {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    })
                  )
                }, 
              child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              
              SizedBox(height: 10),
              
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  minimumSize: Size(double.infinity, 50)
                ),
                onPressed: () => {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    })
                  )
                }, 
              child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
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