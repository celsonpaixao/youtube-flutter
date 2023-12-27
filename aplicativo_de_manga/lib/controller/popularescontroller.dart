import 'package:aplicativo_de_manga/models/popularmodel.dart';

class PopularController {
  static List<PopularModel> showPopularList() {
    return [
      PopularModel(
        titulo: 'Jujutsu kaisen',
        imagem:
            'https://m.media-amazon.com/images/I/81TmHlRleJL._AC_UF1000,1000_QL80_.jpg',
      ),
      PopularModel(
        titulo: 'Dandadan',
        imagem:
            'https://m.media-amazon.com/images/I/819x3NSAh+L._AC_UF1000,1000_QL80_.jpg',
      ),
      PopularModel(
        titulo: 'One piece',
        imagem: 'https://i.ebayimg.com/images/g/cDAAAOSwZo5kk8i8/s-l1200.webp',
      ),
      PopularModel(
        titulo: 'Black clover',
        imagem: 'https://i.ebayimg.com/images/g/bXoAAOSwsgNkeByx/s-l1200.webp',
      ),
      PopularModel(
        titulo: 'Boku no hero academia ',
        imagem: 'https://editoradevir.pt/wp-content/uploads/2020/11/MHA07.jpg',
      ),
    ];
  }
}
