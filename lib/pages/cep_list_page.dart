import 'package:flutter/material.dart';

class CepListPage extends StatefulWidget {
  const CepListPage({super.key});

  @override
  State<CepListPage> createState() => _CepListPageState();
}

class _CepListPageState extends State<CepListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.list),
          title: const Text("Lista de CEPs"),
        ),
        //body:
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      "Pesquisa de CEP: ",
                      style: TextStyle(color: Color.fromARGB(255, 41, 95, 69)),
                    ),
                    content: const TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      maxLength: 8,
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.greenAccent,
                            size: 56,
                          ))
                    ],
                  );
                });
          },
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
