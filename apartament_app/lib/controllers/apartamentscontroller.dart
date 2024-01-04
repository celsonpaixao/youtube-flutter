import 'package:apartament_app/models/apartamentsmodel.dart';

class ApartamentsController {
  static List<ApartamentsModel> showApartaments() {
    return [
      ApartamentsModel(
        titlo: 'Apartamentos de alto padrão',
        descricao: ' vantagens de morar em um - Estilo Fontana',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '1.000.000',
        endereco: 'Talatona',
        imagem: 'assets/img/apartamento1.jpg',
      ),
      ApartamentsModel(
        titlo: 'Apartamento Duplex',
        descricao: 'Conheça esse modelo de Apartamento',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '1.500.000',
        endereco: 'Talatona',
        imagem: 'assets/img/apartamento2.png',
      ),
      ApartamentsModel(
        titlo: 'Apartamentos personalizados',
        descricao: 'exclusividade na compra de imóveis de alto padrão',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '2.070.000',
        endereco: 'Patriota',
        imagem: 'assets/img/apartamento3.jpg',
      ),
      ApartamentsModel(
        titlo: 'Apartamentos de alto padrão',
        descricao: 'vantagens de morar em um - Estilo Fontana',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '1.000.000',
        endereco: 'Talatona',
        imagem: 'assets/img/apartamento4.jpg',
      ),
      ApartamentsModel(
        titlo: 'Apartamento Duplex ',
        descricao: 'Conheça esse modelo de Apartamento',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '1.500.000',
        endereco: 'Talatona',
        imagem: 'assets/img/apartamento5.jpg',
      ),
      ApartamentsModel(
        titlo: 'Apartamentos personalizados',
        descricao: 'exclusividade na compra de imóveis de alto padrão',
        categoria: '5 estrelas',
        provincial: 'Luanda',
        preco: '2.070.000',
        endereco: 'Patriota',
        imagem: 'assets/img/apartamento6.jpg',
      ),
    ];
  }
}
