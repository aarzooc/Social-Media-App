class Author{
  String name;
  String imageUrl;

  Author({
    this.name,
    this.imageUrl
  });
}

final Author hammad = Author(
  name: 'Hammad Qazi',
  imageUrl: 'assets/images/pfp1.jpg'
);

final Author blue = Author(
  name: 'Blue Flower',
  imageUrl: 'assets/images/pfp2.jpg'
);

final Author pink = Author(
  name: 'Pink Flower',
  imageUrl: 'assets/images/pfp3.jpg'
);

final Author fly = Author(
  name: 'Blue Butterfly',
  imageUrl: 'assets/images/pfp4.jpg'
);

final Author starbs = Author(
  name: 'Yum Starbucks',
  imageUrl: 'assets/images/pfp5.jpg'
);

final List<Author> authors = [
  starbs,
  fly,
  pink,
  blue,
  hammad
];