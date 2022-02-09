import 'package:flutter/material.dart';
import 'package:thirty_days_program/utills/routes.dart';

// ignore: camel_case_types
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/images.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 28.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hi $name !, Welcome to 30 Days of Flutter",
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            const SizedBox(height: 28.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              //padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(height: 40.0),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          /*shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle*/
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),
                  /* ElevatedButton(
                    onPressed: () {
                      //print("Hi Himel");
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: const Text("Login"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  ),*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
