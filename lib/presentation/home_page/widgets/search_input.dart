import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: Theme.of(context).textTheme.subtitle1,
        decoration: InputDecoration(
          labelText: 'Введите название репозитория',
          labelStyle: TextStyle(color: Theme.of(context).primaryColor),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(50),
          //   borderSide: BorderSide(
          //     width: 1,
          //     color: Colors.red,
          //   ),
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).accentColor),
          ),
          isDense: true,
          suffix: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).accentColor,
            ),
            child: Center(
              child: Text(
                'НАЙТИ',
                style: TextStyle(color: Theme.of(context).hintColor),
              ),
            ),
          ),
          // hintText: 'Введите название репозитория',
        ),
      ),
    );
  }
}
