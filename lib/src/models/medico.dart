import 'especialidade.dart';

class Medico {
  final int id;
  final String nome;
  final String crm;
  final Especialidade especialidade;
  final bool ativo;

  Medico({
    required this.id,
    required this.nome,
    required this.crm,
    required this.especialidade,
    required this.ativo,
  });

  factory Medico.fromJson(Map<String, dynamic> json) {
    return Medico(
      id: json['id'],
      nome: json['nome'],
      crm: json['crm'],
      especialidade: Especialidade.fromJson(json['especialidade']),
      ativo: json['ativo'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'crm': crm,
      'especialidade': especialidade.toJson(),
      'ativo': ativo,
    };
  }
}
