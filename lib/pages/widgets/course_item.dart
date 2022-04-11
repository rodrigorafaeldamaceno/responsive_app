import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://i0.wp.com/nscreen.com.br/wp-content/uploads/2021/08/Padrao-Hort-BrancoNR.png?fit=4018%2C971&ssl=1',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Text(
          'Criação de aplicativos com Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const Text(
          'nScreen',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'R\$ 199,99',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
