import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final String action;

  const MenuItem(this.title, this.icon, this.action);
}

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({required Key key, required this.menuItem}) : super(key: key);

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headlineMedium;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(menuItem.icon, size: 128.0, color: textStyle?.color),
            Text(menuItem.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
