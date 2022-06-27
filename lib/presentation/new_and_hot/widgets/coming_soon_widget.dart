import 'package:flutter/material.dart';

import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/home/widgets/custombutton_widget.dart';
import 'package:netflix_ui/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieNAme;
  final String description;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieNAme,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(month,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(day,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ]),
        ),
        SizedBox(
          height: 500,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                image: posterPath,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieNAme,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          letterSpacing: -2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CustomButtonWidget(
                    icon: Icons.access_alarm,
                    text: "Remind me",
                    textSize: 12,
                    iconSize: 20,
                  ),
                  kWidth,
                  const CustomButtonWidget(
                    icon: Icons.info,
                    text: "Info",
                    textSize: 12,
                    iconSize: 20,
                  ),
                  kWidth,
                ],
              ),
              kHeight,
              Text('Coming On $day $month'),
              kHeight,
              Text(
                movieNAme,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              Text(
                description,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
