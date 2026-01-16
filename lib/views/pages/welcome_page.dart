import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_flutter/views/pages/login_page.dart';
import 'package:my_flutter/views/pages/onboarding_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
  final size = MediaQuery.of(context).size;
  final bool isTabletOrDesktop = size.width >= 600;
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: FractionallySizedBox(
              widthFactor: isTabletOrDesktop ? 0.5 : 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lotties/Fish_Loader.json'),
                  FittedBox(child: Text('Welcome to the App!', style: TextStyle(fontSize: 30.0, letterSpacing: 10.0))),
                  SizedBox(height: 50),
                  FilledButton(
                    style: ElevatedButton.styleFrom(
                      // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)
                      minimumSize: Size(double.infinity, 50)
                    ),
                    onPressed: () => {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) {
                          return OnboardingPage();
                        })
                      )
                    }, 
                  child: const Text(
                      'Get Started',
                      style: TextStyle(
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
                        color: Colors.teal,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}