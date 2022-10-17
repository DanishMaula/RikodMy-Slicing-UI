import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/ui/ledger/screen/ledger_pettycash_screen.dart';
import 'package:rikodmy/ui/ledger/screen/ledger_screen_expenses.dart';
import 'package:rikodmy/utils/utils.dart';

class TabbarLedger extends StatefulWidget {
  

  const TabbarLedger({super.key});

  @override
  _TabbarLedgerState createState() => _TabbarLedgerState();
}

class _TabbarLedgerState extends State<TabbarLedger>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Ledger',
          style: title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            // give the tab bar a height [can change height to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE0E0E0), width: 1),
                borderRadius:  const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                onTap: (value) {
                  setState(() {
                    _tabController.index = value;
                  });
                },
                indicator:  BoxDecoration(
                  color: const Color(0xff2360AD),

                  borderRadius: _tabController.index == 0 
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                      : const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),

                ),

                labelColor: const Color(0xffffffff),
                unselectedLabelColor: const Color(0xff828282),
                
                tabs: [
                  Tab(
                    child: Text('Expenses', style: tabbarLedgerText),
                  ),
                  Tab(
                    child: Text('Petty Cash', style: tabbarLedgerText),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // first tab bar view widget
                  const LedgerScreenExpenses(title: 'Add Expenses Data',),
                  // second tab bar view widget
                  const LedgerPettyCashScreen(title: 'Add Petty Cash Data',)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
