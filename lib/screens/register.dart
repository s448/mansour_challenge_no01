import 'package:flutter/material.dart';
import 'package:mansour_challenge/customWidgets/custom.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Let\'s get started !",
              style: TextStyle(fontSize: 22),
            )),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Create an account to Q allure to get all features",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
                hint: 'Username', icon: Icons.person, obscureText: false),
            CustomTextField(
                hint: 'Email', icon: Icons.email, obscureText: false),
            CustomTextField(
                hint: 'Phone', icon: Icons.phone_android, obscureText: false),
            CustomTextField(
                hint: 'Password', icon: Icons.lock, obscureText: true),
            CustomTextField(
                hint: 'Confirm password', icon: Icons.lock, obscureText: true),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: TextButton(
                child: Text(
                  'Create',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade900)),
                onPressed: () {},
              ),
            ),
                   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"),
                TextButton(
                  onPressed: (() {
                  }),
                  child: Text("Sign up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
