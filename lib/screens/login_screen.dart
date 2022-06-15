import 'package:flutter/material.dart';
import 'package:flutter_lp/models/user/users_local.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  UserLocal userLocal = UserLocal();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Image(
            width: 280,
            height: 280,
            image: AssetImage('assets/image/car.png'),
          ),
          const Text(
            'STYLE CARS',
            style: TextStyle(
                color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, right: 180, top: 30, bottom: 30),
            child: Card(
              elevation: 1.0,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          TextFormField(
                            initialValue: userLocal.email,
                            decoration: const InputDecoration(hintText: 'Email...'),
                            validator: (value) {
                              if (value == null) {
                                return 'Por Favor, insira o email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                              initialValue: userLocal.password,
                              decoration: const InputDecoration(hintText: 'Senha...'),
                              validator: (value) {
                                if (value == null) {
                                  return 'Por Favor, insira o senha';
                                }
                                return null;
                              })
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      OutlinedButton(onPressed: () {}, child: const Text('Entrar')),
                      OutlinedButton(onPressed: () {}, child: const Text('Registrar-se')),
                    ],),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
