import 'package:authapp/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:authapp/components/my_textfield.dart';
import 'package:authapp/components/app_drawer.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
    void signUserIn(){



    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu), // Hamburger icon
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 173, 173),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icon(Icons.lock),
              ),

              SizedBox(height: 10),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20),

               child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //forgot password textfield
              Text('Forgot password?',
                    style: TextStyle(color: Colors.grey[600]),
                    ),
                        ],
              ),
               ),
               
             // sign in button
             MyButton(
              onTap: signUserIn,
              
             ),
        Row(
          children: [
            Expanded(
              child:Divider(
                thickness :0.5,
                color: Colors.grey[100],) 
            
            )
          ],
        ),
         SizedBox(height: 10),
         
               Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
        'Not a member?',
          style: TextStyle(color: Colors.grey[700]),
            ), // Text
          const SizedBox(width: 4),
        
        const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup'); 
                      },
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
          ],
),    
           SizedBox(height: 20),
                // Image
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Image.asset(
                    'lib/images/image1.png',
                    fit: BoxFit.contain,
                    width: 380,
                    height: 300,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
