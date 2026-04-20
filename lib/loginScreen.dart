import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isPasswordHidden = true;
  bool isRememberMe = false; 

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Successful")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: null,
      body:
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
                child:const Icon(Icons.person_2_outlined,
                color: Color.fromARGB(255, 135, 116, 59),
                size: 50,),
                ),
              Text("Login",style: TextStyle(fontSize: 25),),
              SizedBox(height: 100,),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter email";
                      }
                      if (!value.contains("@")) {
                        return "Invalid email";
                      }
                      return null;
                    },
                  ),
            
                  const SizedBox(height: 20),
            
                  
                  TextFormField(
                    controller: passwordController,
                    obscureText: isPasswordHidden,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordHidden = !isPasswordHidden;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter password";
                      }
                      if (value.length < 6) {
                        return "Min 6 characters";
                      }
                      return null;
                    },
                  ),
            
                  const SizedBox(height: 10),
                    
                     Container(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                             Row(
                               children: [
                                 Checkbox(
                                  value: isRememberMe,
                                  checkColor: Colors.white,
                                  activeColor: Color.fromARGB(255, 135, 116, 59),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isRememberMe = value!;
                                    });
                                  },
                                  
                                    ),
                                    Text(
                          'Remember me',
                          style: TextStyle(color: Color.fromARGB(255, 135, 116, 59), fontWeight: FontWeight.bold),
                        ),
                               ],
                             ),
                                    
                         TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle( fontWeight: FontWeight.bold),
                            ),
                          ),
                         ],
                       ),
                     ),
                  
                    const SizedBox(height: 10),
                     Container(
                      width: double.infinity,
                       child: ElevatedButton(
                        onPressed: login,
                        child: const Text("Login"),
                                       ),
                     ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}