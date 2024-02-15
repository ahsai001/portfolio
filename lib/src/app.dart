import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/app/screen/home/home_screen.dart';
import 'package:portfolio/src/app/screen/login/login_screen.dart';
import 'package:portfolio/src/app/screen/project/project_screen.dart';
import 'package:portfolio/src/app/screen/project_detail/project_detail_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
          initialLocation: "/",
          redirect: (context, state) {
            const isAuthenticated = true;
            return null;
          },
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) {
                return const HomeScreen();
              },
            ),
            GoRoute(
              path: "/login",
              builder: (context, state) {
                return const LoginScreen();
              },
            ),
            GoRoute(
              path: "/education",
              builder: (context, state) {
                return const HomeScreen();
              },
            ),
            GoRoute(
                path: "/project",
                builder: (context, state) {
                  return const ProjectScreen();
                },
                routes: [
                  GoRoute(
                    path: "detail",
                    builder: (context, state) {
                      return const ProjectDetailScreen();
                    },
                  )
                ])
          ]),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
    );
  }
}
