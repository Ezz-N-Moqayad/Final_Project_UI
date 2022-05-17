import 'package:flutter/material.dart';

// ignore: camel_case_types
class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

// ignore: camel_case_types
class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                    color: Color(0xff23203F),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 33),
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    color: Color(0xff9391A4),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: 'user name ',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // focusColor: Colors.red,
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 60,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: 'Last name ',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 60,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  // obscuringCharacter: '*',
                  // obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: 'Email  ',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // focusColor: Colors.red,
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 60,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: 'phone  ',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 60,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: '*',
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: 'Password  ',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 60,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff5D5D5D),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(328, 60),
                    primary: const Color(0xff6A90F2),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // ignore_for_file: avoid_print
                    print("You pressed Icon Elevated Button");
                  },
                  icon: Image.asset('images/facebook.png'),
                  //icon data for elevated button
                  label: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      "Login with facebook",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(328, 60),
                    primary: const Color(0xff4267B2),
                  ), //label text
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Color(0xff9391A4),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xff23203F),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
