import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_flutter/views/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  String confirmedEmail = 'kudaesithu2@gmail.com';
  String confirmedPassword = '123456';

  @override
  void initState() {
    super.initState();

    emailController.text = confirmedEmail;
    passwordController.text = confirmedPassword;
    
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: FractionallySizedBox(
          widthFactor: size.width > 700 ? 0.5 : 0.9,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Animation
              SizedBox(
                height: size.width > 700 ? 250 : 180,
                child: Lottie.asset(
                  'assets/lotties/Login.json',
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 32),

              // Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Button
              FilledButton(
                onPressed: onLogin,
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


  void onLogin() {
    String email = emailController.text;
    String password = passwordController.text;

    if(email == confirmedEmail && password == confirmedPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful!'))
      );
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return WidgetTree();
      }), (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password'))
      );
    }
  }
}