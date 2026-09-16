import 'medico.dart';
import 'paciente.dart';
import 'status_consulta.dart';

class Consulta {
  final int id;
  final Medico medico;
  final Paciente paciente;
  final DateTime data;
  final double valor;
  final StatusConsulta status;
  final String? observacoes;

  Consulta({
    required this.id,
    required this.medico,
    required this.paciente,
    required this.data,
    required this.valor,
    required this.status,
    this.observacoes,
  });

  // O método copyWith é usado na Home para atualizar o status
  Consulta copyWith({
    int? id,
    Medico? medico,
    Paciente? paciente,
    DateTime? data,
    double? valor,
    StatusConsulta? status,
    String? observacoes,
  }) {
    return Consulta(
      id: id ?? this.id,
      medico: medico ?? this.medico,
      paciente: paciente ?? this.paciente,
      data: data ?? this.data,
      valor: valor ?? this.valor,
      status: status ?? this.status,
      observacoes: observacoes ?? this.observacoes,
    );
  }

  factory Consulta.fromJson(Map<String, dynamic> json) {
    return Consulta(
      id: json['id'],
      medico: Medico.fromJson(json['medico']),
      paciente: Paciente.fromJson(json['paciente']),
      data: DateTime.parse(json['data']),
      valor: (json['valor'] as num).toDouble(),
      status: StatusConsulta.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => StatusConsulta.agendada,
      ),
      observacoes: json['observacoes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'medico': medico.toJson(),
      'paciente': paciente.toJson(),
      'data': data.toIso8601String(),
      'valor': valor,
      'status': status.name,
      'observacoes': observacoes,
    };
  }
}
