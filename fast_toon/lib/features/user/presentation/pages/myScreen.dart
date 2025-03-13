// ignore: file_names
import 'package:fast_toon/features/user/presentation/widgets/auth_guard.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthGuard(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('마이 페이지'),
        ),
        body: const Center(
          child: Text('마이 페이지입니다.'),
        ),
      ),
    );
  }
}
