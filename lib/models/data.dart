class News {
  final String title;
  final String description;
  final String image;
  News({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<News> listOfNews = [
  News(
      title: 'Boris Johnson facing calls to quit as PM as soon as possible',
      description: '',
      image: 'images/Boris_Johnson.jpg'),
  News(
      title: 'Ukraine war: Is the tank doomed?',
      description: 'Ukraine war: Is the tank doomed?',
      image: 'images/ukrain.jpg'),
  News(
      title: 'BBC pundits predict Euro 2022: Can England go all the way?',
      description: 'BBC pundits predict Euro 2022: Can England go all the way?',
      image: 'images/sports.jpg'),
  News(
      title:
          'Ukraine war: Market hit as Russians shell frontline city Slovyansk',
      description:
          'Ukraine war: Market hit as Russians shell frontline city Slovyansk',
      image: 'images/ukraine_img2.jpg'),
  News(
      title: 'British Airways cancels 1,500 more flights',
      description: 'British Airways cancels 1,500 more flights',
      image: 'images/Airways.jpg'),
  News(
      title: 'Ukraine: Cardiff photojournalist shares photos of war',
      description: 'Ukraine: Cardiff photojournalist shares photos of war',
      image: 'images/ukraine_img2.jpg'),
  News(
      title: 'Zimbabwe to mint gold coins to tackle rising prices',
      description: 'Zimbabwe to mint gold coins to tackle rising prices',
      image: 'images/Zimbabwe.jpg'),
  News(
      title: 'Ukraine: The teachers swapping classrooms for trenches',
      description: 'Ukraine: The teachers swapping classrooms for trenches',
      image: 'images/teachers.jpg'),
  News(
      title:
          'Ukraine war: Kremenchuk shopping centre attack claims fact-checked',
      description:
          'Ukraine war: Kremenchuk shopping centre attack claims fact-checked',
      image: 'images/Ukraine3.jpg'),
];
