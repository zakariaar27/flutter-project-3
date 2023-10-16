import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_3/utils/image_url.dart';

class KAppImage extends StatelessWidget {
  const KAppImage({
    super.key,required this.imageUrl, this.height=100, this.width=100,
  });
final String imageUrl;
final double height;
final double width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
        ),
      ),
      placeholder: (context, url) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(loadingImg),
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(errorImg),
          ),
        ),
      ),
    );
  }
}
