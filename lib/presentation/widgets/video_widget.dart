import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNewandHotImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
              icon:const Icon(Icons.volume_off),
            ),
          ),
        ),
      ],
    );
  }
}
