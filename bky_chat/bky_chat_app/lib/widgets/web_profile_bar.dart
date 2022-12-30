// ignore_for_file: unused_import, prefer_const_constructors

import 'package:bky_chat_app/colors.dart';
import 'package:flutter/material.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color : dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQFxXyEOCW-YGw/profile-displayphoto-shrink_800_800/0/1661427086857?e=1677715200&v=beta&t=IXJ5ISMLlBob_81mauZniVav_x0CROd2awr2c4stpuA',
            ),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: () {},
               icon: const Icon(
                Icons.comment,
                 color:Colors.grey,
                 ),
                ),
              IconButton(onPressed: () {},
           icon: const Icon(
            Icons.more_vert,
             color:Colors.grey,
            ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
