import 'package:flutter/material.dart';
import 'package:tutorial/exec/formeg.dart';
import 'layout1.dart'; // Sibling import (they are in the same folder)
import 'buttons.dart';
import 'floatingbutton.dart';
import 'formeg.dart';

class MyTabbedPage extends StatelessWidget {
  const MyTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.restaurant)), 
              Tab(icon: Icon(Icons.radio_button_checked)),
              Tab(icon: Icon(Icons.fort)),
              Tab(icon: Icon(Icons.account_balance),)
            ],
          ),
          title: const Text('Tabs Demo')
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            PavlovaCard(),
            ButtonApp(),
            FormExampleApp(),
            FloatingActionButtonExampleApp(),
          ],
        ),
      ),
    );
  }
}