import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ResultPageTitle extends StatelessWidget {
  const ResultPageTitle({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: S.of(context).result_P_title,
              style: Theme.of(context).textTheme.headline1,
            ),
            TextSpan(
              text: '"${text.toUpperCase()}"',
              style: Theme.of(context).textTheme.headline1.merge(
                    TextStyle(color: Theme.of(context).accentColor),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
