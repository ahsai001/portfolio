import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final String data;
  const ProjectPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("project page")),
    );
  }
}
