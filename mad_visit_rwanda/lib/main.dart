// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const visitRwandaApp());
}
// ignore: camel_case_types
class visitRwandaApp extends StatelessWidget {
  const visitRwandaApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'visit Rwanda',
      home: const LoginPage (),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
 

  @override
  Widget build(BuildContext context) {
     void _login () {
      print("Login");
     }
     // ignore: unused_element
     void _forgotPassword () {
      print("forgot password");
      // ignore: unused_element
     }
     
  void _register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }
  

    return Scaffold(
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
              image: NetworkImage('https://pbs.twimg.com/profile_images/999180694088704000/FuSqjpJD_400x400.jpg'),
              height: 200,
              ),

               Image(image: AssetImage('assets/Images/images.jpeg'),
         height: 100,   ),
              ],
            )
        ),
        const Icon(Icons.lock,
        size: 80,),
        const SizedBox(height: 30,),
        
            const Text('Login Page',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),),
        const SizedBox(height: 20,),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter valid email id as'
        ),
        keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20,),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            hintText: 'Enter secure password'
        ),
        keyboardType: TextInputType.number,
        ),

       ElevatedButton(
  onPressed: _login,
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, 
    backgroundColor: Colors.blueGrey,
    shadowColor: Colors.red,
    elevation: 5,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0))
    ),
    minimumSize: const Size(150, 50),
  ),
child: const Text('Login'),
),

TextButton(onPressed: _forgotPassword, child: const Text('Forgot Password?'),),
 TextButton(
              onPressed: () => _register(context),
              child: const Text('Register'),)
          ],

        ),
        ),
        );

  }
}
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  void _registerUser(String name, String email, String password, String confirmPassword) {
    print('Name: $name');
    print('Email: $email');
    print('Password: $password');
    print('Confirm Password: $confirmPassword');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ' Names',
              hintText: 'Enter your names'
            ),
          ),
         const SizedBox(height: 20,),
        const TextField(
                 decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                 ), 
                 keyboardType: TextInputType.emailAddress,
         ),
          const SizedBox(height: 20,),
         const TextField(
                 decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                 ), 
                 keyboardType: TextInputType.visiblePassword,),
         const SizedBox(height: 20,),
         const TextField(
                 decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
                  border: OutlineInputBorder(),
                 ), 
                 keyboardType: TextInputType.visiblePassword,),
         const SizedBox(height: 20,),
         ElevatedButton(
  onPressed: () {
    _registerUser('name', 'email', 'password', 'confirmPassword'
    );
  },
  child: const Text('Register'),
),
        ]
      ),  
      
  ),
    );
  }
}