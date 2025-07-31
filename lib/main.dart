import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Logo Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('images/Levsense.jpg'),
                    height: 150,
                    width: 150,
                  ),
                ],
              ),

              const Center(
                child: Text(
                  'Login Credentials',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                    color: Color(0xff2D3142),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              const Center(
                child: Text(
                  'Welcome To Levsense',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                    color: Color(0xff4C5988),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Email Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Pacifico',
                      color: Color(0xff4C5988),
                    ),
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Color(0xff323F4B),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Password Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Pacifico',
                      color: Color(0xff4C5988),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Color(0xff323F4B),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color(0xff323F4B),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE4E7EB),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Login Button
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xffF97038),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      color: Color(0xff4C5988),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Sign up Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don\'t Have an Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                      color: Color(0xff4C5988),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                      color: Color(0xffF97038),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
