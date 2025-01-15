class Anotacao {
  int? id;
  String titulo = ''; // Valor padrão
  String descricao = ''; // Valor padrão
  String data = ''; // Valor padrão

  // Construtor principal
  Anotacao(this.titulo, this.descricao, this.data);

  // Construtor que cria uma instância a partir de um mapa
  Anotacao.fromMap(Map map) {
    this.id = map['id'];
    this.titulo = map['titulo'] ; // Valor padrão caso o campo esteja ausente ou nulo
    this.descricao = map['descricao']; // Valor padrão caso o campo esteja ausente ou nulo
    this.data = map['data']; // Valor padrão caso o campo esteja ausente ou nulo
  }

  // Método que converte a instância em um mapa
  Map toMap() {
    Map<String, dynamic> map = {
      "titulo": this.titulo,
      "descricao": this.descricao,
      "data": this.data,
    };

    // Adiciona o campo 'id' apenas se ele não for nulo
    if (this.id != null) {
      map["id"] = this.id;
    }
    return map;
  }
}
 