import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/ui/history/screen/cash_sceen.dart';

import '../../utils/utils.dart';

// make tabbar
class TabbarHistory extends StatefulWidget {
  const TabbarHistory({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabbarHistoryState createState() => _TabbarHistoryState();
}

class _TabbarHistoryState extends State<TabbarHistory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'History',
          style: title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            TabBar(
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              controller: _tabController,
              // make underline indicator
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff2360AD),
                    width: 2,
                  ),
                ),
              ),
              labelColor: const Color(0xff333333),
              unselectedLabelColor: const Color(0xff333333),
              tabs:   [
                Tab(
                  child: Text('CASH', style: tabbarHistoryMenu),
                ),
                Tab(
                  child: Text('TRANSFER', style: tabbarHistoryMenu,),
                ),
                Tab(
                  child: Text('QUOTATION', style: tabbarHistoryMenu),
                ),
                Tab(
                  child: Text('UNPAID', style: tabbarHistoryMenu),
                ),
                Tab(
                  child: Text('VOID SALES', style: tabbarHistoryMenu),
                ),
                

                
              ],
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                 CashScreen(),
                  Center(
                    child: Text('Purchase'),
                  ),
                  Center(
                    child: Text('Purchase'),
                  ),
                  Center(
                    child: Text('Purchase'),
                  ),
                  Center(
                    child: Text('Purchase'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}