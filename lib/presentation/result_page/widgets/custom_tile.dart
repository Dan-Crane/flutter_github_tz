import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Header(),
          Spacer(),
          Divider(height: 1.0, thickness: 1.0),
          SizedBox(height: 10),
          _Body(date: 'date'),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HeaderInfo(
            repoName: 'Название репозитория',
            userName: 'aoue UE',
            avatar:
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.ryanphotographic.com%2Fimages%2FJPEGS%2FFelis%2520manul%2520Pallas%27s%2520cat.jpg&f=1&nofb=1'),
        _HeaderStarBtn(stars: 67),
      ],
    );
  }
}

class _HeaderInfo extends StatelessWidget {
  const _HeaderInfo({
    Key key,
    @required this.repoName,
    @required this.userName,
    @required this.avatar,
  }) : super(key: key);

  final String repoName;
  final String userName;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          repoName,
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              child: ClipOval(
                child: Image.network(avatar, fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 8),
            Text(
              userName,
              style: TextStyle(
                fontFamily: 'SFProDisplay',
                height: 1,
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _HeaderStarBtn extends StatelessWidget {
  const _HeaderStarBtn({Key key, @required this.stars}) : super(key: key);

  final int stars;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryVariant,
        borderRadius: BorderRadius.circular(50),
      ),
      constraints: BoxConstraints(minWidth: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.star_border, size: 16, color: Colors.white),
          SizedBox(width: 2),
          Text(
            stars.toString(),
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key, @required this.date}) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).result_card_info,
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              color: Theme.of(context).colorScheme.primaryVariant,
              fontWeight: FontWeight.normal,
              fontSize: 10,
            ),
          ),
          TextSpan(
            text: date,
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
