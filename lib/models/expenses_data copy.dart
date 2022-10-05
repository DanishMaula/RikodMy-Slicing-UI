class LedgerPettyCash {
  String price;
  String desc;
  String date;
  String image;

  LedgerPettyCash({
    required this.price,
    required this.desc,
    required this.date,
    required this.image,
  });
}

List<LedgerPettyCash> ledgerPettyCashList = [
  LedgerPettyCash(
      price: 'RM 13487',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://img.freepik.com/premium-photo/delivery-man-giving-parcel-box-recipient-man-owner-accepting-cardboard-boxes-package-from-post-shipment-online-selling-e-commerce-shipping-concept_64073-228.jpg'),
  LedgerPettyCash(
      price: 'RM 9387',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://snworksceo.imgix.net/bsd/82b4f810-7b59-4811-b3ee-c5dfcaac4ffd.sized-1000x1000.jpg?w=1000'),
  LedgerPettyCash(
      price: 'RM 2898',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://cdn4.eyeem.com/thumb/d7a4efff927cf3eacaeb3b8f748ca0a3d4a53542-1561359662078/w/800'),
  LedgerPettyCash(
      price: 'RM 2723',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://media.istockphoto.com/photos/hispanic-courier-man-shipping-cardboard-box-to-customer-client-for-picture-id1329248752?k=20&m=1329248752&s=612x612&w=0&h=V0lRyrYI1B_za7qQVN0GHKu5LtLjob97LogU99IFBL8='),
  LedgerPettyCash(
      price: 'RM 9852',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      date: "07.10.2021",
      image: 'https://img.freepik.com/premium-photo/delivery-man-carrying-packages-while-making-home-delivery_58466-9354.jpg'),
];
