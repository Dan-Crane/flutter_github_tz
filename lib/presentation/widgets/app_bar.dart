import 'package:flutter/material.dart';

AppBar appBar({@required BuildContext ctx, String descr}) => AppBar(
      title: Text(descr),
      bottom: PreferredSize(
        child: Container(
          color: Theme.of(ctx).primaryColor,
          height: 1.0,
        ),
        preferredSize: Size.fromHeight(1.0),
      ),
    );
