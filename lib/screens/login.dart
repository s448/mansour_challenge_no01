import 'package:flutter/material.dart';
import 'package:mansour_challenge/customWidgets/custom.dart';

import 'register.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Image.asset(
              'lib/assets/s.png',
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              "Login to your existing account of Q allure",
              style: TextStyle(fontSize: 12,color: Colors.grey),
            )),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
                hint: 'Email Adress', icon: Icons.person, obscureText: false),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Password', icon: Icons.lock, obscureText: true),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
              child: Text('Forgot password ?'),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: TextButton(
                child: Text(
                  'Login',
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
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Or Connect using'),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.g_mobiledata,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          "Google +",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    color: Colors.red.shade700,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  MaterialButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "facebook",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    color: Colors.blue.shade700,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don\'t have an account ?"),
                TextButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => register()));
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
