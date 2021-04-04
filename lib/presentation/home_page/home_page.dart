import 'package:flutter/material.dart';
import 'package:github_tz/presentation/home_page/widgets/search_input.dart';
import 'package:github_tz/presentation/result_page/widgets/custom_tile.dart';
import 'package:github_tz/presentation/result_page/widgets/descr.dart';
import 'package:github_tz/presentation/result_page/widgets/title.dart';
import 'package:github_tz/presentation/widgets/app_bar.dart';

import '../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(ctx: context, descr: S.of(context).search_P_app_bar),
      body: Column(
        children: [
          ResultPageTitle(text: 'НАЗВАНИЕ ЗАПРОСА'),
          Descr(repoLength: 54),
          CustomTile(),
          SizedBox(height: 80),
          SearchInput(),
        ],
      ),
    );
  }
}
