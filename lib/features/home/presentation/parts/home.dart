import 'package:flutter/material.dart';
import 'package:neatkid_test/features/home/presentation/widgets/list_element.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with TickerProviderStateMixin{
  late TabController _tabController;

  int _currentTabIndex = 0;

  final List<double> _heights = [300, 200, 500];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging == false) {
        setState(() {
          _currentTabIndex = _tabController.index;
        });
      }
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListElement(bottom: 24),
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (index){
              setState(() {
                _currentTabIndex = index;
              });
            },
            indicator: BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
            tabs: [Tab(text: "Tab 1"), Tab(text: "Tab 2"), Tab(text: "Tab 3")],
          ),
          SizedBox(height: 24),
          SizedBox(
            height: _heights[_currentTabIndex],
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(color: Colors.red.shade100, alignment: Alignment.center, child: Text("TabBarView 1")),
                Container(color: Colors.green.shade100, alignment: Alignment.center, child: Text("TabBarView 2")),
                Container(color: Colors.blue.shade100, alignment: Alignment.center, child: Text("TabBarView 3")),
              ],
            ),
          ),
          SizedBox(height: 24),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListElement(bottom: 8);
            },
          ),
        ],
      ),
    );
  }
}
