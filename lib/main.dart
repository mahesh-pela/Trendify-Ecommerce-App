import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendify/Providers/cart_provider.dart';
import 'package:trendify/nav_var_screen.dart';
import 'package:provider/provider.dart';

import 'Screens/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
        useMaterial3: true,
      ),
      home: const NavigationMenu(),
    ));
}

