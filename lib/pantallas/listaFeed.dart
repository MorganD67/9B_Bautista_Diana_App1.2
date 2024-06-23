import 'package:flutter/material.dart';
import 'package:flutter_application_1/datos/datos.dart';
import 'package:flutter_application_1/widgets/text.dart';

class listaFeed extends StatelessWidget {
  const listaFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: ListCard.map((post) {
          return PostItem(
            username: post['username']!,
            avatar: post['avatar']!,
            postImage: post['postImage']!,
            likes: post['likes']!,
            caption: post['caption']!,
          );
        }).toList(),
      ),
    );
  }
}