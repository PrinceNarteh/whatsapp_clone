import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: const [
              // Web Profile Bar
              // Web Search Bar
              ContactList()
            ],
          )
        ],
      ),
    );
  }
}
