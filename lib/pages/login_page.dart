import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/link_text.dart';
import 'package:arukari/helper/constants.dart';

class LoginPage extends StatelessWidget {
  final List<ButtonConfig> buttonConfigs = [
    ButtonConfig(
      label: 'Sign in dengan Google',
      onPress: () {
        // Handle Google Sign In button press
      },
    ),
    ButtonConfig(
      label: 'Sign in dengan ID Karyawan',
      onPress: () {
        // Handle ID Karyawan Sign In button press
      },
    ),
    ButtonConfig(
      label: ' Sign in dengan nomor telepon ',
      onPress: () {
        // Handle ID Karyawan Sign In button press
      },
    ),
  ];

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: IntrinsicHeight(
            child: Container(
              color: Colors.white,
              width: 440,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/aruna-logo.png',
                          height: 37,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
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
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.w300),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              minimumSize: const Size(double.infinity, 50),
                              primary: Constants.darkBlueLogin,
                            ),
                            child: const Text(
                              'Sign in',
                            ),
                          )),
                      SizedBox(
                        width: 360,
                        child: Row(
                          children: [
                            const Expanded(child: ThinLine()),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: const Text(
                                  "atau",
                                  style: TextStyle(
                                    color: Color(0xffb4b4b4),
                                  ),
                                )),
                            const Expanded(child: ThinLine()),
                          ],
                        ),
                      ),
                      ButtonList(buttons: buttonConfigs),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const LinkText(
                              text: "Lupa password",
                              url: "https://github.com/",
                            ),
                            Container(
                                margin: const EdgeInsets.all(8),
                                child: const Text("·")),
                            const LinkText(
                              text: "Buat akun demo",
                              url: "https://github.com/",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
