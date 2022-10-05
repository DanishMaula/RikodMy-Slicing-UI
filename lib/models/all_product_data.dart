class AllProduct {
  String name;
  String description;
  String stock;
  String price;
  String image;

  AllProduct({
    required this.name,
    required this.description,
    required this.stock,
    required this.price,
    required this.image,
  });
}

List<AllProduct> allProductList = [
  AllProduct(
      name: 'Xiao Mi Yi || 4K',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      stock: "Stock : 15",
      price: 'RM 100.19',
      image: 'assets/images/xiaomi.png'),
  AllProduct(
      name: 'Banner Complete Skin Care',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      stock: 'Stock : 200',
      price: 'RM 15.23',
      image: 'assets/images/skincare.png'),
  AllProduct(
      name: 'HASSTON',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      stock: 'Stock : 3',
      price: 'RM 30.54',
      image: 'assets/images/hasston.png'),
  AllProduct(
      name: 'Premium Dutch Oven',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      stock: 'Stock : 1',
      price: 'RM 90.54',
      image: 'assets/images/oven.png'
      )
];


