import 'package:flutter/material.dart';

import 'body_view/detail_body_view.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBodyView(),
    );
  }
}