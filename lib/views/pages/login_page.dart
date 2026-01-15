import 'package:flutter/material.dart';
import 'package:my_project_1/views/widget_tree.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  String confirmedEmail = '123';
  String confirmedPassword = '456';

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeroWidget(title: 'LOGIN PAGE'),
          
          const SizedBox(height: 30),
    
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10)
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10)
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton(onPressed:() {
              return onLogin();
            }, 
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            child: Text('Login')),
          ),
    
          // ValueListenableBuilder(
          //   valueListenable: emailController, 
          //   builder:(context, value, child) {
          //     return Text('Email: ${emailController.text}');
          //   },
          // ),

          // ValueListenableBuilder(
          //   valueListenable: passwordController, 
          //   builder:(context, value, child) {
          //     return Text('Password: ${passwordController.text}');
          //   },
          // )

        ],
      )
    );
  }
  void onLogin() {
    String email = emailController.text;
    String password = passwordController.text;

    if(email == confirmedEmail && password == confirmedPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful!'))
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return WidgetTree();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password'))
      );
    }
  }
}