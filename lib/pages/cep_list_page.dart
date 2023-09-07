import 'package:flutter/material.dart';
import 'package:via_cep_api/models/via_cep_model.dart';
import 'package:via_cep_api/repositories/via_cep_repository.dart';

class CepListPage extends StatefulWidget {
  const CepListPage({super.key});

  @override
  State<CepListPage> createState() => _CepListPageState();
}

class _CepListPageState extends State<CepListPage> {
  TextEditingController searchController = TextEditingController();
  ViaCepRepository viaCepRepository = ViaCepRepository();
  ViaCepModel viaCepModel = ViaCepModel();
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
                    content: TextField(
                      controller: searchController,
                      keyboardType: const TextInputType.numberWithOptions(),
                      maxLength: 8,
                    ),
                    actions: [
                      IconButton(
                          onPressed: () async {
                            var cep = searchController.text.toString();
                            await viaCepRepository.getCep(cep);
                          },
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
