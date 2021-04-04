import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class Descr extends StatelessWidget {
  const Descr({Key key, @required this.repoLength}) : super(key: key);

  final int repoLength;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            color: Theme.of(context).colorScheme.primaryVariant,
            fontWeight: FontWeight.w600,
            fontSize: 10,
            letterSpacing: 0.8,
          ),
          children: [
            TextSpan(text: S.of(context).result_P_subtitle),
            TextSpan(text: repoLength.toString()),
          ],
        ),
      ),
    );
  }
}
