class Dog {
  final int id;
  final String nome;
  final String raca;
  final String briquedoFavorito;
  final String sexo;
  final String foto;
  final int idade;

  Dog({
    required this.id,
    required this.nome,
    required this.raca,
    required this.briquedoFavorito,
    required this.sexo,
    required this.idade,
    required this.foto
  });

  Map<String, dynamic> toMap() {
    return {
      "id" : id,
      "nome" : nome,
      "raca" : raca,
      "brinquedoFavorito" : briquedoFavorito,
      "sexo" : sexo,
      "foto" : foto,
      "idade" : idade,
    };
  }

  @override
  String toString() {
    return "Dog{id: $id, nome: $nome, raca: $raca, brinquedoFavorito: $briquedoFavorito, sexo: $sexo, idada: $idade}";
  }
}