class Destination {
  final String image;
  final String title;
  final String author;
  final String date;
  final String shareIcon;
  final String profileImage;

  Destination({
    required this.image,
    required this.title,
    required this.author,
    required this.date,
    required this.shareIcon,
    required this.profileImage,
  });
}

class DestinationList {
  final List<Destination> cardList = [
    Destination(
      image: 'assets/image/Vector.png',
      title: 'Feel the thrill on the only surf simulator in Maldives 2022',
      author: 'Sang Dong Min',
      date: 'Sep 9, 2023',
      shareIcon: 'assets/share_icon.svg',
      profileImage: 'assets/image/Vector1.png',
    ),
    Destination(
      image: 'assets/image/Vector2.png',
      title: 'Hong Kong wins over Wall Street CEOs after lifting strict ',
      author: 'Pan Bong',
      date: 'Jan 3, 2023',
      shareIcon: 'assets/share_icon.svg',
      profileImage: 'assets/image/Vector3.png',
    ),
    Destination(
      image: 'assets/image/Vector4.png',
      title: 'Unravel mysteries of the Maldives',
      author: 'Keanu Carpent',
      date: 'May 17, 2022',
      shareIcon: 'assets/share_icon.svg',
      profileImage: 'assets/image/Vector5.png',
    ),
  ];
}
