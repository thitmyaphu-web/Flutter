import 'package:flutter/material.dart';
import 'package:tutorial/exec/Autocomplete.dart';
import 'package:tutorial/exec/formeg.dart';
import 'package:tutorial/exec/new.dart';
import 'package:tutorial/exec/old.dart';
import 'layout1.dart'; // Sibling import (they are in the same folder)
import 'buttons.dart';
import 'floatingbutton.dart';
import 'formeg.dart';
import 'Autocomplete.dart';
import 'segbtn.dart';
import 'old.dart';
import 'new.dart';


class MyTabbedPage extends StatelessWidget {
  const MyTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.restaurant)), 
              Tab(icon: Icon(Icons.radio_button_checked)),
              Tab(icon: Icon(Icons.fort)),
              Tab(icon: Icon(Icons.account_balance)),
              Tab(icon: Icon(Icons.abc_sharp)),
              Tab(icon: Icon(Icons.access_alarm)),
              Tab(icon: Icon(Icons.access_alarm_sharp)),
              Tab(icon: Icon(Icons.ac_unit)),
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
            AutocompleteExampleApp(),
            SegmentedButtonApp(),
            MyWidget7(),
            MyWidget6(),


          ],
        ),
      ),
    );
  }
}