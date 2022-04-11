import 'package:flutter/material.dart';
import 'package:responsive_app/breakpoints.dart';
import 'package:responsive_app/pages/widgets/appbar/mobile_appbar.dart';
import 'package:responsive_app/pages/widgets/appbar/web_appbar.dart';
import 'package:responsive_app/pages/widgets/sections/advantage_section.dart';
import 'package:responsive_app/pages/widgets/sections/top_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size.fromHeight(kToolbarHeight),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size.fromHeight(kToolbarHeight + 20),
                ),
          drawer:
              constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400,
              ),
              child: ListView(
                children: const [
                  TopSection(),
                  AvdantageSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
