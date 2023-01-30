import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/models/playlist_model.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/playlist", arguments: playlist);
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  playlist.imageUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,)
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playlist.title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 17),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    "${playlist.songs.length} песни",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.play_circle, size: 35,), color: Colors.deepPurple,)
          ],
        ),
      ),
    );
  }
}