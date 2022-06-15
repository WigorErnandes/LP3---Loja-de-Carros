import 'package:flutter/material.dart';
import 'package:flutter_lp/home_screen.dart';
import 'package:flutter_lp/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      initialRoute: '/login',
      routes: {
        // declara as rotas das outras telas
          '/login': (context) => LoginScreen(),
          '/home': (context) => const HomeScreen(),
          //'/signup': (context) => const SignupScreen(),
          //'/carrinho': (context) => const CartScreen(),
          // '/users': (context) => const UsersPage(),
          // '/orders': (context) => const OrdersPage(),
          // '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
