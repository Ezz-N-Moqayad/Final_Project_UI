import 'package:flutter/material.dart';

class SingIN extends StatefulWidget {
  const SingIN({Key? key}) : super(key: key);

  @override
  State<SingIN> createState() => _SingINState();
}

class _SingINState extends State<SingIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 33),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color(0xff23203F),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 33, bottom: 10),
                  child: Text(
                    'Login to continue your account,',
                    style: TextStyle(
                      color: Color(0xff716F87),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabled: true,
                      hintText: 'Email ',
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
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff5D5D5D),
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                        color: Color(0xff5D5D5D),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                    onPressed: () {},
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
                      'Don’t have an account?',
                      style: TextStyle(
                        color: Color(0xff9391A4),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
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
      ),
    );
  }
}
