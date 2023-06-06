import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      width: 250,
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
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
            child: new ListTile(
              title: Text(
                "MEME 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            title: Text("MEME 2"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("MEME 3"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("MEME 4"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("MEME 5"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
