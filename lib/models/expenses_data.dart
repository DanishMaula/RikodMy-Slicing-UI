class LedgerExpenses {
  String price;
  String desc;
  String date;
  String image;

  LedgerExpenses({
    required this.price,
    required this.desc,
    required this.date,
    required this.image,
  });
}

List<LedgerExpenses> ledgerExpensesList = [
  LedgerExpenses(
      price: 'RM 100',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://sinarjambi.com/wp-content/uploads/2022/06/IMG_20220607_140124_125-scaled.jpg'),
  LedgerExpenses(
      price: 'RM 3523',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://codeshop.co.id/wp-content/uploads/2022/03/new-bill-seeks-to-make-paper-reciepts-a-think-of-the-past-cropped-800x450-1.jpg'),
  LedgerExpenses(
      price: 'RM 7408',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://i1.wp.com/nihaoindo.com/wp-content/uploads/2021/12/2000x1125_0706057829474.jpeg?resize=1000%2C563&ssl=1'),
  LedgerExpenses(
      price: 'RM 6563',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://cdn1-production-images-kly.akamaized.net/IaE_0nYzNtdmg9oc8DUzhBK7Ka4=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1593602/original/061537400_1494821451-34562682006_d0e64021bf_c.jpg'),
  LedgerExpenses(
      price: 'RM 2397',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYYCuQi4AAOKFda3C1ZGgK261LkwfHwVYINQ&usqp=CAU'),
];
