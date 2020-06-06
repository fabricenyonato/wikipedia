import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        ThemeData themeData = Theme.of(context);

        List<String> languages = [
            'assets/images/78ffb804fc3f09aeb02c2c07e45afebf69655051.png',
            'assets/images/487096e51416d9a9e2344333e3ef5c31a60c067d.png',
            'assets/images/a0a3841fdfba8bc401fe52a36343499fda4e27f9.png',
            'assets/images/ab562694588964ad2c0eec5d473697a413580727.png',
            'assets/images/aebd374d325cadf6191af62eed26ae61eed3ea7c.png',
        ];

        List<_Article> articles = [
            _Article(
                imageSrc: 'assets/images/joker.png',
                name: 'The Mandalorian',
                views: 1223445,
            ),

            _Article(
                imageSrc: 'assets/images/the_mandalorian.png',
                name: 'Joker (2019 film)',
                views: 1223445,
            ),
        ];

        Widget bottomNav = BottomAppBar(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                    children: [
                        Text(
                            'What do you want to learn?',
                            style: TextStyle(color: Colors.grey),
                        ),

                        Spacer(),

                        /* _NavBarButon(icon: Icons.search),
                        _NavBarButon(icon: Icons.menu) */

                        Icon(
                            Icons.search,
                            color: themeData.primaryColor
                        ),

                        SizedBox(width: 20),

                        Icon(
                            Icons.menu,
                            color: themeData.primaryColor
                        )
                    ]
                )
            )
        );

        Widget logoWidget = Center(
            child: Column(
                children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        constraints: BoxConstraints.expand(
                            height: 100,
                        ),
                        child: Image.asset(
                            'assets/images/wikipedia_logo.jpg',
                            fit: BoxFit.contain,
                        ),
                    ),

                    SizedBox(height: 10),

                    Text(
                        'Wikipedia',
                        style: themeData.textTheme.display1.apply(color: Colors.black,),
                    ),

                    SizedBox(height: 5),

                    Text(
                        'The  Free Encyclopedia',
                        style: TextStyle(color: Colors.grey[700])
                    ),
                ],
            )
        );

        Widget languagesWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Text(
                        'Choose your language',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        )
                    )
                ),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                            SizedBox(width: 16),

                            for (int i = 0, l = languages.length - 1; i <= l; i++) ...[
                                _Language(src: languages[i]),
                                if (i != l) SizedBox(width: 10)
                            ],

                            SizedBox(width: 16)
                        ]
                    )
                )
            ]
        );

        Widget articlesWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Text(
                        'Articles of the Week',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        )
                    )
                ),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                            SizedBox(width: 16),

                            for (int i = 0, l = articles.length - 1; i <= l; i++)
                                ...[
                                    articles[i],
                                    if (i != l) SizedBox(width: 20)
                                ],

                            SizedBox(width: 16)
                        ]
                    )
                )
            ]
        );

        Widget thisDayWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Text(
                        'On this day, January 2nd',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        )
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                                TextSpan(
                                    text:  '3 janvier',
                                    style: TextStyle(color: themeData.primaryColor)
                                ),

                                TextSpan(
                                    text:  ': le général iranien ',
                                ),

                                TextSpan(
                                    text:  'Qassem Soleimani',
                                    style: TextStyle(
                                        color: themeData.primaryColor,
                                        fontWeight: FontWeight.bold
                                    )
                                ),

                                TextSpan(
                                    text:  ', commandant de ',
                                ),

                                TextSpan(
                                    text:  'la force Al-Qods',
                                    style: TextStyle(
                                        color: themeData.primaryColor,
                                    )
                                ),

                                TextSpan(
                                    text:  ', est abattu en ',
                                ),

                                TextSpan(
                                    text:  'Irak',
                                    style: TextStyle(
                                        color: themeData.primaryColor,
                                    )
                                ),

                                TextSpan(
                                    text:  ' par une frappe américaine sur l\'',
                                ),

                                TextSpan(
                                    text:  'aéroport de Bagdad',
                                    style: TextStyle(
                                        color: themeData.primaryColor,
                                    )
                                ),

                                TextSpan(
                                    text:  '.',
                                ),
                            ]
                        )
                    )
                ),

                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                                TextSpan(
                                    text:  '29 décembre',
                                    style: TextStyle(color: themeData.primaryColor)
                                ),

                                TextSpan(
                                    text:  ': ',
                                ),

                                TextSpan(
                                    text:  'Umaro Sissoco Embaló',
                                    style: TextStyle(color: themeData.primaryColor)
                                ),

                                TextSpan(
                                    text:  ' remporte le second tour de l\'',
                                ),

                                TextSpan(
                                    text:  'élection présidentielle',
                                    style: TextStyle(
                                        color: themeData.primaryColor,
                                        fontWeight: FontWeight.bold
                                    )
                                ),

                                TextSpan(
                                    text:  ' en ',
                                ),

                                TextSpan(
                                    text:  'Guinée-Bissau',
                                    style: TextStyle(color: themeData.primaryColor)
                                ),
                            ]
                        )
                    )
                ),
            ]
        );

        return Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: bottomNav,
            body: ListView(
                children: [
                    logoWidget,

                    SizedBox(height: 40),

                    languagesWidget,

                    SizedBox(height: 40),

                    articlesWidget,

                    SizedBox(height: 40),

                    thisDayWidget,
                ]
            )
        );
    }
}


class _Language extends StatelessWidget {
    final String src;

    _Language({@required this.src});

    @override
    Widget build(BuildContext context) {
        return Container(
            constraints: BoxConstraints.expand(
                height: 40,
                width: 40
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: ExactAssetImage(src),
                    fit: BoxFit.contain,
                )
            ),
        );
    }
}


class _Article extends StatelessWidget {
    final String imageSrc;
    final String name;
    final int views;

    _Article({
        @required this.imageSrc,
        @required this.name,
        @required this.views,
    });

    @override
    Widget build(BuildContext context) {
        return Container(
            width: 250,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        constraints: BoxConstraints.expand(
                            height: 125,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: ExactAssetImage(imageSrc),
                                fit: BoxFit.cover,
                            )
                        ),
                    ),

                    SizedBox(height: 10),

                    Text(
                        name,
                        style: TextStyle(
                            fontSize: 20
                        ),
                    ),

                    SizedBox(height: 5),

                    Text(
                        '$views views',
                        style: TextStyle(color: Colors.grey[700]),
                    )
                ]
            )
        );
    }
}


class _NavBarButon extends StatelessWidget {
    final IconData icon;

    _NavBarButon({
        @required this.icon
    });

    @override
    Widget build(BuildContext context) {
        return Icon(
            icon,
            color: Theme.of(context).primaryColor,
        );

        // return InkWell(
        //     child: Container(
        //         height: 40,
        //         width: 40,
        //         child: Icon(
        //             icon,
        //             color: Theme.of(context).primaryColor,
        //         ),
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.all(Radius.circular(40)),
        //         )
        //     ),
        //     onTap: () {}
        // );
    }
}
