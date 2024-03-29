import 'package:flutter/material.dart';
import 'views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			initialRoute: '/',
			routes: {
				'/': (BuildContext context) => Home(),
			},
		);
	}
}