class PopularesModel {
  final String titulo;
  final String imagem;

  PopularesModel({required this.titulo, required this.imagem});
  List<PopularesModel> populares = [
    PopularesModel(
      titulo: 'Black clover',
      imagem: 'https://i.ebayimg.com/images/g/bXoAAOSwsgNkeByx/s-l1200.webp',
    ),
    PopularesModel(
      titulo: 'Boku no hero academia ',
      imagem: 'https://editoradevir.pt/wp-content/uploads/2020/11/MHA07.jpg',
    ),
    PopularesModel(
      titulo: 'One piece',
      imagem: 'https://i.ebayimg.com/images/g/cDAAAOSwZo5kk8i8/s-l1200.webp',
    ),
    PopularesModel(
      titulo: 'Dandadan',
      imagem:
          'https://m.media-amazon.com/images/I/819x3NSAh+L._AC_UF1000,1000_QL80_.jpg',
    ),
    PopularesModel(
      titulo: 'Jujutsu kaisen',
      imagem:
          'https://m.media-amazon.com/images/I/81TmHlRleJL._AC_UF1000,1000_QL80_.jpg',
    ),
  ];
}