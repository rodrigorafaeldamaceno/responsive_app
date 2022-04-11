import 'package:flutter/material.dart';

class AvdantageSection extends StatelessWidget {
  const AvdantageSection({Key? key}) : super(key: key);

  Widget buildAdvantage({required String title, required String subtitle}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Icon(
          Icons.star,
          size: 50,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(subtitle),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
          buildAdvantage(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
          buildAdvantage(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
        ],
      ),
    );
  }
}
