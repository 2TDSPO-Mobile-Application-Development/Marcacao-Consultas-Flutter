class Paciente {
  final int id;
  final String nome;
  final String cpf;
  final String email;
  final String? telefone;

  const Paciente({
    required this.id,
    required this.nome,
    required this.cpf,
    required this.email,
    this.telefone,
  });

  factory Paciente.fromJson(Map<String, dynamic> json) {
    return Paciente(
      id: json['id'],
      nome: json['nome'],
      cpf: json['cpf'],
      email: json['email'],
      telefone: json['telefone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'cpf': cpf,
      'email': email,
      'telefone': telefone,
    };
  }
}
