class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({required this.title, required this.description, required this.url, required this.coverUrl});

  static List<Song> songs = [
    Song(title: "Sunset", description: "Sunset", url: "assets/music/sunset.mp3", coverUrl: "assets/image/sunset.jpg"),
    Song(title: "Chill", description: "Chill", url: "assets/music/chill.mp3", coverUrl: "assets/image/chill.jpg"),
    Song(title: "Magic", description: "Magic", url: "assets/music/magic.mp3", coverUrl: "assets/image/magic.jpg")
  ];
}