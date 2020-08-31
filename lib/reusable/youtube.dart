import 'package:flutter/material.dart';
import 'package:youtube_flutter/models/example_content.dart';

class YoutubeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/Home_clean.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        ListView.builder(
          cacheExtent: MediaQuery.of(context).size.height,
          itemCount: ExampleContent.exampleVideos.length,
          itemBuilder: (context, index) {
            return InkResponse(
              onTap: () {
                  
              },
              child: YoutubeCard(
                content: ExampleContent.exampleVideos[index],
              ),
            );
          }
        )
      ],
    );
  }
}