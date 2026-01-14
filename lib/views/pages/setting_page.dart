import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final String title;
  const SettingPage({super.key, required this.title});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  bool value = false;
  double sliderValue = 0.0;
  String? selectedValue;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 16)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: () => showDialog(
                  context: context, 
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Dialog'),
                      content: Text('This is an alert dialog.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context), 
                          child: Text('Close')
                        )
                      ],
                    );
                  }
                ),
                child: Text('Alert Dialog'),
              ),
          
              DropdownButton(
                value: selectedValue,
                hint: Text('Select an item'),
                items: [
                  DropdownMenuItem(value: '1', child: Text('Item 1')),
                  DropdownMenuItem(value: '2', child: Text('Item 2')),
                  DropdownMenuItem(value: '3', child: Text('Item 3')),
                ], 
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
      
              SizedBox(height: 20),
              
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
                // print(sliderValue);
              }),
        
              GestureDetector(
                child: 
                  Image.asset('assets/images/bg.jpg'), 
                  onTap: () => (),
              ),
      
              InkWell(
                splashColor: Colors.cyan,
                onTap: () => (),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
      
              const SizedBox(height: 20),
      
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: () => (),
                child: Text('Button'),
              ),
      
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: () => (),
                child: Text('Button'),
              )
      
            ],
          ),
        ),
      ),
    );
  }
}