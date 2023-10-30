import 'package:flutter/material.dart';
import 'package:new_project1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 82, 21, 187),
          const Color.fromARGB(255, 132, 75, 230),
        ),
      ),
    ),
  );
}

// scaffold --> 위젯
// MaterialApp --> 전체 위젯을 관리
//gradient --> 그라데이션 지정