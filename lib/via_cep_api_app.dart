import 'package:flutter/material.dart';
import 'package:via_cep_api/pages/cep_list_page.dart';

class ViaCepApiApp extends StatelessWidget {
  const ViaCepApiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ViaCepApiApp',
      theme: ThemeData(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          iconSize: 42,
          foregroundColor: Colors.white,
          backgroundColor: Colors.greenAccent,
        ),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                textStyle: const MaterialStatePropertyAll(TextStyle(
                  fontSize: 18,
                )),
                backgroundColor:
                    const MaterialStatePropertyAll(Colors.greenAccent),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))))),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.greenAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w900,
          ),
          iconTheme: IconThemeData(size: 42, color: Colors.white),
        ),
        primaryColor: Colors.greenAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const CepListPage(),
    );
  }
}
