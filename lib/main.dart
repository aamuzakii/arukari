import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/aruna-logo.png',
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Silahkan masukkan Username dan Password Anda',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the About Page.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
