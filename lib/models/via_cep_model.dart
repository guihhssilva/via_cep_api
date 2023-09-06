import 'dart:convert';

class ViaCepModel {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;

  ViaCepModel({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
  });

  factory ViaCepModel.fromMap(Map<String, dynamic> data) => ViaCepModel(
        cep: data['cep'] as String?,
        logradouro: data['logradouro'] as String?,
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        localidade: data['localidade'] as String?,
        uf: data['uf'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'cep': cep,
        'logradouro': logradouro,
        'complemento': complemento,
        'bairro': bairro,
        'localidade': localidade,
        'uf': uf,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ViaCepModel].
  factory ViaCepModel.fromJson(String data) {
    return ViaCepModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ViaCepModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
