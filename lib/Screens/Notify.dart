import "package:flutter/material.dart";

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Notify Page")),
    );
  }
}
