import 'package:flutter/material.dart';
import 'package:neatkid_test/features/home/presentation/widgets/list_element.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ListElement(),
            SizedBox(height: 24),
            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
              tabs: [Tab(text: "Tab 1"), Tab(text: "Tab 2"), Tab(text: "Tab 3")],
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  Container(color: Colors.red.shade100, alignment: Alignment.center, child: Text("TabBarView 1")),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green.shade100,
                          alignment: Alignment.center,
                          child: Text("TabBarView 2"),
                        ),
                      ),
                      SizedBox(height: 24),
                      ListElement(),
                    ],
                  ),
                  Container(color: Colors.blue.shade100, alignment: Alignment.center, child: Text("TabBarView 3")),
                ],
              ),
            ),
            SizedBox(height: 24),
            ListElement(),
            SizedBox(height: MediaQuery.of(context).size.height),
          ],
        ),
      ),
    );
  }
}

