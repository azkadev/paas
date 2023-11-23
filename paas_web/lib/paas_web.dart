// ignore_for_file: use_build_context_synchronously

import 'package:paas_web/page/page.dart';
import 'package:flutter/material.dart';

class PaasWeb extends StatefulWidget {
  const PaasWeb({super.key});

  @override
  State<PaasWeb> createState() => _PaasWebState();
}

class _PaasWebState extends State<PaasWeb> {
  bool is_found = false;
  int count = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration duration) async {
      await task();
    });
  }

  Future<void> task() async {
    await Future.delayed(const Duration(seconds: 2));

    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return const SignPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
