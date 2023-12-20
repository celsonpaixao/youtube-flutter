class ApartamentsModel {
  final String descricao;
  final String categoria;
  final String provincial;
  final String preco;
  final String endereco;
  final String imagem;

  ApartamentsModel({
    required this.descricao,
    required this.categoria,
    required this.provincial,
    required this.preco,
    required this.endereco,
    required this.imagem,
  });
}

List<ApartamentsModel> Apartamento = [
  ApartamentsModel(
    descricao:
        'Apartamentos de alto padrão: vantagens de morar em um - Estilo Fontana',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '1.000.000',
    endereco: 'Talatona',
    imagem: 'apartament_app/Assets/img/apartamento (0).jpg',
  ),
  ApartamentsModel(
    descricao: 'Apartamento Duplex: Conheça esse modelo de Apartamento',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '1.500.000',
    endereco: 'Talatona',
    imagem: 'apartament_app/Assets/img/apartamento (1).jpg',
  ),
  ApartamentsModel(
    descricao:
        'Apartamentos personalizados: exclusividade na compra de imóveis de alto padrão | R.Yazbek',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '2.070.000',
    endereco: 'Patriota',
    imagem: 'apartament_app/Assets/img/apartamento (2).jpg',
  ),
];
