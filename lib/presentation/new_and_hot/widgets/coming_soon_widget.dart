import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/home/widgets/custombutton_widget.dart';
import 'package:netflix_ui/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: const [
            Text('FEB',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ]),
        ),
        SizedBox(
          height: 500,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  VideoWidget(),
              Row(
                children: [
                  const Text(
                    "TALL GRIRL2",
                    style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
               const   Spacer(),
                  Row(
                    children:const [
                      CustomButtonWidget(
                        icon: Icons.access_alarm,
                        text: "Remind me",
                        textSize: 12,
                        iconSize: 20,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        text: "Info",
                        textSize: 12,
                        iconSize: 20,
                      ),
                      kWidth
                    ],
                  ),
                ],
              ),
              kHeight,
              const Text('Coming On Friday'),
              kHeight,
              const Text(
                'TALL GIRL 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                'Landing the Lead in the school musical is a dream come true for Jodi,until the pressure sends her confidence--and her relationship --into a trailspin',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
