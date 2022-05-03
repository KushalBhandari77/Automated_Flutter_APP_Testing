import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_flutter_app/favorite_page.dart';
import 'package:testing_flutter_app/home_page.dart';
import 'package:testing_flutter_app/models/favorites.dart';

void main() {
  runApp(AppTesting());
}

class AppTesting extends StatelessWidget {
  const AppTesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          FavoritesPage.routeName: (context) => const FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
