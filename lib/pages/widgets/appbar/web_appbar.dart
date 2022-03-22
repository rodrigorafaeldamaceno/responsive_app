import 'package:flutter/material.dart';
import 'package:responsive_app/pages/widgets/appbar/web_appbar_content.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      title: Row(
        children: <Widget>[
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarContent(),
          const SizedBox(width: 12),
          const Icon(Icons.shopping_cart),
          const SizedBox(width: 16),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: const BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Text(
                'Fazer login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
              child: const Text(
                'Cadastre-se',
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
