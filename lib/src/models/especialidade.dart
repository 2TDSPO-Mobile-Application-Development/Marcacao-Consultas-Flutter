class Especialidade {
  final int id;
  final String nome;
  final String descricao;

  const Especialidade({
    required this.id,
    required this.nome,
    required this.descricao,
  });

  factory Especialidade.fromJson(Map<String, dynamic> json) {
    return Especialidade(
      id: json['id'],
      nome: json['nome'],
      descricao: json['descricao'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nome': nome, 'descricao': descricao};
  }
  
}
