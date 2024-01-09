// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageAudioWidget extends StatelessWidget {
  final String linkImage;
  const ImageAudioWidget({
    Key? key,
    required this.linkImage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: linkImage.contains('http')
              ? NetworkImage(
                  linkImage) // Fix typo: Image.network -> NetworkImage
              : AssetImage(linkImage)
                  as ImageProvider<Object>, // Fix typo: linkImages -> linkImage
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
