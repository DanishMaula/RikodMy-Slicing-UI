import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class TabBarMenu extends StatefulWidget {

  const TabBarMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  
  final List<Tab> myTab = <Tab>[
    const Tab(
      text: 'All Products',
    ),
    const Tab(
      text: 'Electronics',
    ),
    const Tab(
      text: 'Tools',
    ),
    const Tab(
      text: 'Beauty',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: myTab.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: myTab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BubbleTabIndicator(
                indicatorHeight: 30,
                indicatorColor: Color(0xff2360AD),
                tabBarIndicatorSize: TabBarIndicatorSize.tab),
            isScrollable: true,
          ),
          const SizedBox(
            height: 10,
          ),
          
          
        ],
      ),
    );
  }

}