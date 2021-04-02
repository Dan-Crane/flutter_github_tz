import 'package:flutter/material.dart';
import 'package:github_tz/presentation/home_page/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ПОИСК',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        bottom: PreferredSize(
          child: Container(
            color: Theme.of(context).primaryColor,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          SearchInput(),
        ],
      ),
    );
  }
}
