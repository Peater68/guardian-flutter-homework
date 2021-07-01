import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class ArticleImage extends StatelessWidget {
  final String _url;

  const ArticleImage(this._url);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: _url,
      placeholder: (context, url) => Image(image: AssetImage('assets/guardian_logo.png')),
      errorWidget: (context, url, error) => Image(image: AssetImage('assets/guardian_logo.png')),
      imageBuilder: (context, imageProvider) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: 80.0, maxHeight: 300.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image(
              fit: BoxFit.fill,
              image: imageProvider,
            ),
          ),
        );
      },
    );
  }
}
