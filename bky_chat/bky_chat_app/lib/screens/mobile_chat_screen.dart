// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bky_chat_app/colors.dart';
import 'package:bky_chat_app/info.dart';
import 'package:bky_chat_app/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.call),),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.more_vert),),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
            ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.emoji_emotions, color: Colors.grey),
                ),
                suffixIcon:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.camera,
                      color: Colors.grey
                    ),
                    Icon(
                      Icons.attach_file, 
                      color: Colors.grey
                    ),
                    Icon(
                    Icons.money, 
                    color: Colors.grey
                    ),
                  ],
                ),
                ),
                hintText: 'Type a message',
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}