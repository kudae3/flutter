import 'package:flutter/material.dart';
import 'package:my_project_1/data/notifiers.dart';
import 'package:my_project_1/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/bg.jpg'),
          ),

          SizedBox(height: 30),
          
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              currentIndexNotifier.value = 0;
            Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) {
                return WelcomePage();
              })
            );
          },
        )],
      ),
    );
  }
}