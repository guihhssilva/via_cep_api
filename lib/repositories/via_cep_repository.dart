import 'package:dio/dio.dart';
import 'package:via_cep_api/models/via_cep_model.dart';
//import 'package:via_cep_api/models/via_cep_model.dart';

class ViaCepRepository {
  final dio = Dio();

  Future<ViaCepModel> getCep(String cep) async {
    var response = await dio.get("https://viacep.com.br/ws/$cep/json/");
    print(response.data);
    return ViaCepModel.fromJson(response.data);
  }
}
