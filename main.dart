import 'package:flutter/material.dart';

void main() => runApp(const FadeDemoApp());

class FadeDemoApp extends StatelessWidget {
  const FadeDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FadePage(),
    );
  }
}

class FadePage extends StatefulWidget {
  const FadePage({super.key});

  @override
  State<FadePage> createState() => _FadePageState();
}

class _FadePageState extends State<FadePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFade() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FadeTransition demo')),
      body: Center(
        child: FadeTransition(
          opacity: _controller,
          child: const FlutterLogo(size: 150),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleFade,
        child: const Icon(Icons.wb_sunny),
      ),
    );
  }
}
