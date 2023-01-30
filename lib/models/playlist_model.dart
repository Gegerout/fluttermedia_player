import 'package:media_player/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlist = [
    Playlist(title: "Hip-Hop R&B Mix", songs: Song.songs, imageUrl: "https://mir-s3-cdn-cf.behance.net/project_modules/1400/dbf22592780385.5e543538a0810.jpg"),
    Playlist(title: "Rock and Roll", songs: Song.songs, imageUrl: "https://sun6-22.userapi.com/s/v1/if1/vfIqJT3wvky1FCNEFmwjpbX3N6O6agirHsALNADT6tNFehOinaTKLTQ87wp6etmT3KlMnkY5.jpg?size=1793x1793&quality=96&crop=63,63,1793,1793&ava=1"),
    Playlist(title: "Techno", songs: Song.songs, imageUrl: "https://sun6-21.userapi.com/s/v1/ig2/wYXi3L4XimvMZSRbjqLVQESsyM-uI0jC08He0Jn6y2gq2SEyeEwEp7yEkDnTck8su1lHtiiy7hjiuNHYGYIQcovc.jpg?size=2017x2017&quality=96&crop=71,71,2017,2017&ava=1")
  ];
}