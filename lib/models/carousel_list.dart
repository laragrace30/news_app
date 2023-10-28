class Carousel {
  final String image;
  final String title;
  final String author;
  final String date;
  final String time;
  final String profileImage;
  final String description;

  Carousel({
    required this.image,
    required this.title,
    required this.author,
    required this.date,
    required this.time,
    required this.profileImage,
    required this.description,
  });
}

class CarouselList {
  final List<Carousel> cardList = [
    Carousel(
      image: 'assets/image/Vector.png',
      title: 'Feel the thrill on the only surf simulator in Maldives 2022',
      author: 'Sang Dong Min',
      date: 'Sep 9',
      time: '8 mins read',
      profileImage: 'assets/image/Vector1.png',
      description: 'Surfing in Maldives is an experience to behold, as the country has an innumerable amount of wave spots. Cheval Blanc also hosts a number of water sports activities for particular guests who are thrill-seekers.',
    ),
    Carousel(
      image: 'assets/image/Vector2.jpg',
      title: 'Hong Kong wins over Wall Street CEOs after lifting strict',
      author: 'Pan Bong',
      date: 'Jan 3',
      time: '8 mins read',
      profileImage: 'assets/image/Vector3.png',
      description: 'Hong Kong has finally secured commitments from some of the world biggest banks to participate in a long-awaited summit, as it seeks to reaffirm its status as a global financial hub.',
    ),
    Carousel(
      image: 'assets/image/Vector4.png',
      title: 'Unravel mysteries of the Maldives',
      author: 'Keanu Carpent',
      date: 'May 17',
      time: '8 mins read',
      profileImage: 'assets/image/Vector5.png',
      description: 'Just say anything, George, say what evers natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, its 8:00. Hey, McFly, I thought I told you never ',
    ),
  ];
}
