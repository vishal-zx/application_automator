import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final formKey = GlobalKey<FormState>(); 
  final formKeyReset = GlobalKey<FormState>(); 
  String email = "";
  String username = "";
  String emailReset = "";
  String password = "";
  bool _showPass = false;
  int role = -1;

  void _togglePass(){
    setState(() {
      _showPass = !_showPass;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var mqh = MediaQuery.of(context).size.height;
    var mqw = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            height: mqh*0.8,
            width: mqw,
            margin: EdgeInsets.symmetric(horizontal: mqw*0.05, vertical: mqh*0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Application\nAutomator",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: mqh*0.05),
                TextFormField(
                  key: formKey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: mqh*0.02),
                TextFormField(
                  // key: formKey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: !_showPass,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: _togglePass,
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: mqh*0.04),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mqh*0.05),
                
              ],
            ),
          ),
        )
      ),
    );
  }
}