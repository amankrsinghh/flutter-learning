import 'package:flutter/material.dart';

class Textfield_example extends StatefulWidget {
  const Textfield_example({super.key});

  @override
  State<Textfield_example> createState() => _Textfield_exampleState();
}

class _Textfield_exampleState extends State<Textfield_example> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Clear the text field when the close icon is pressed
                      email.clear();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "&",
                controller: password,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Clear the text field when the close icon is pressed
                      password.clear();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
        
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(email.text);
                  print(password.text);
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
