import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          ListTile(
            title: Text('Shoxrux Quroqov'),
            subtitle: Text('shoxruxquroqov@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Sozlamalar'),
          ),
          ListTile(
            leading: Icon(Icons.file_open),
            title: Text('Foydalanuvchi qo\'llanmasi'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('FAQ'),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('Biz bilan bog\'lanish'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Hisobdan chiqish'),
          )
        ],
      ),
    );
  }
}
