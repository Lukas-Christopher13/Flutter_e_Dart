class Nota {
  String? titulo;
  String? nota;

  Nota({this.titulo, this.nota});

  Map<String, dynamic> toMap() {
    return {
      "titulo" : titulo,
      "nota" : nota,
    };
  }
}