import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  bool value = false;
  double sliderValue = 0.0;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            onEditingComplete: () => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Your name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: emailController,
            onEditingComplete: () => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Your email',
              border: OutlineInputBorder(),
            ),
          ),
          
          Checkbox(value: value, onChanged:(value) {
            setState(() {
              this.value = value!;
            });
          }),

          CheckboxListTile(
            title: Text('Receive Newsletter'),
            value: value, 
            onChanged:(value) {
            setState(() {
              this.value = value!;
            });
          },),

          Switch(value: value, onChanged:(newValue) {
            setState(() {
              value = newValue;
            });
          }),
          
          SwitchListTile.adaptive(title: Text('Newsletter'), value: value, onChanged:(newValue) {
            setState(() {
              value = newValue;
            });
          }),

          ValueListenableBuilder(
            valueListenable: nameController, builder:(context, value, child) {
            return Text('Your name is: ${nameController.text}');
          }),

          ValueListenableBuilder(
            valueListenable: emailController,
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Text('Your email is: ${emailController.text}');
            },
          ),


          Slider(
            value: sliderValue, 
            max: 100,
            divisions: 5,
            onChanged: (newValue) {
              setState(() {
                sliderValue = newValue;
              });
              print(sliderValue);
            }),
          
          
        ],
      ),
    );
  }
}