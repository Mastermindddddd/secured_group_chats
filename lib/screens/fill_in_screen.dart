import 'package:flutter/material.dart';

class FillInScreen extends StatefulWidget {
  const FillInScreen({Key? key}) : super(key: key);

  @override
  _FillInScreenState createState() => _FillInScreenState();
}

class _FillInScreenState extends State<FillInScreen> {
  String name = '';
  String address = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill In Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Full Name',
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your address',
                labelText: 'Address',
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  phone = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // TODO: Submit the user's information to the server
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
