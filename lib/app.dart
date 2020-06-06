import 'package:flutter/material.dart';

import 'home_page.dart';


class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Wikipedia',
            theme: ThemeData(
                primarySwatch: Colors.orange,
                fontFamily: 'Josefin Sans',
                textTheme: TextTheme(
                    headline1: TextStyle(fontWeight: FontWeight.bold),
                ),
            ),
            home: HomePage(),
        );
    }
}
