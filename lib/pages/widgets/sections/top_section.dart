import 'package:flutter/material.dart';
import 'package:responsive_app/breakpoints.dart';
import 'package:responsive_app/pages/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://i0.wp.com/nscreen.com.br/wp-content/uploads/2021/08/Padrao-Hort-BrancoNR.png?fit=4018%2C971&ssl=1',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 450,
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'Aprenda flutter trtr rjrhjr rjhjrh',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                              'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
                          SizedBox(height: 8),
                          CustomSearhField(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  child: Image.network(
                    'https://i0.wp.com/nscreen.com.br/wp-content/uploads/2021/08/Padrao-Hort-BrancoNR.png?fit=4018%2C971&ssl=1',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 350,
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'Aprenda flutter trtr rjrhjr rjhjrh',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                              'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
                          SizedBox(height: 8),
                          CustomSearhField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://i0.wp.com/nscreen.com.br/wp-content/uploads/2021/08/Padrao-Hort-BrancoNR.png?fit=4018%2C971&ssl=1',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Aprenda flutter trtr rjrhjr rjhjrh',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
                  SizedBox(height: 8),
                  CustomSearhField(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
