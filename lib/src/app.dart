import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/app/pages/home/home_page.dart';
import 'package:portfolio/src/app/pages/login/login_page.dart';
import 'package:portfolio/src/app/pages/project/project_page.dart';
import 'package:portfolio/src/app/pages/project_detail/project_detail_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
          initialLocation: "/",
          redirect: (context, state) {
            return null;
          },
          routes: [
            //public routes
            GoRoute(
              path: "/",
              builder: (context, state) {
                return HomePage();
              },
            ),

            GoRoute(
                path: "/project",
                builder: (context, state) {
                  return const ProjectPage(
                    data: "",
                  );
                },
                routes: [
                  GoRoute(
                    path: "detail",
                    builder: (context, state) {
                      return const ProjectDetailPage();
                    },
                  )
                ]),

            //administration routes

            GoRoute(
              path: "/login",
              builder: (context, state) {
                return const LoginPage();
              },
            ),
            GoRoute(
                path: "/admin",
                builder: (context, state) {
                  return const LoginPage();
                },
                routes: [
                  GoRoute(
                    path: "education",
                    builder: (context, state) {
                      return HomePage();
                    },
                  ),
                  GoRoute(
                    path: "project",
                    builder: (context, state) {
                      return HomePage();
                    },
                  ),
                ]),
          ]),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
    );
  }
}
