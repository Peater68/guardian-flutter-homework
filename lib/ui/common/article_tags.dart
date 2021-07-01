import 'package:flutter/widgets.dart';

class ArticleTags extends StatelessWidget {
  final List<String> _tags;

  const ArticleTags(this._tags);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _tags
          .map(
            (tag) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0, right: 8.0),
              child: Text(
                "#$tag",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          )
          .toList(),
    );
  }
}
