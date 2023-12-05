// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("This is a Joke"),
            accountEmail: Text("ElBromas@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/FhEjNwKUcAAtIrl.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: const ListTile(
              title: Text(
                "MEME 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text("MEME 2"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("MEME 3"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("MEME 4"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("MEME 5"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
