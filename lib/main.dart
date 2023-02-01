import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_chat/fake_data.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:flutter_chat/screens/call_screen/call_screen.dart';
import 'package:flutter_chat/screens/home_screen/home_screen.dart';

import 'screens/chat_screen/chat_screen.dart';

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      // Return either Widgets or BeamPages if more customization is needed
      HomeScreen.routeName: (context, state, data) => const HomeScreen(),
      ChatScreen.routeName: (context, state, data) =>
          ChatScreen(chat: fakeChat.copyWith(users: [data as User])),
      CallScreen.routeName: (context, state, data) =>
          CallScreen(user: data as User)
      // '/books/:bookId': (context, state, data) {
      //   // Take the path parameter of interest from BeamState
      //   final bookId = state.pathParameters['bookId']!;
      //   // Collect arbitrary data that persists throughout navigation
      //   final info = (data as MyObject).info;
      //   // Use BeamPage to define custom behavior
      //   return BeamPage(
      //     key: ValueKey('book-$bookId'),
      //     title: 'A Book #$bookId',
      //     popToNamed: '/',
      //     type: BeamPageType.scaleTransition,
      //     child: BookDetailsScreen(bookId, info),
      //   );
      // }
    },
  ),
);

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
