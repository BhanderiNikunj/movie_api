import 'package:flutter/material.dart';
import 'package:movie_api/Screen/Home/Provider/HomeProvider.dart';
import 'package:movie_api/Screen/Home/View/HomeScreen.dart';
import 'package:movie_api/Screen/Search/View/SearchScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomeScreen(),
          'search':(context) => const SearchScreen(),
        },
      ),
    ),
  );
}
