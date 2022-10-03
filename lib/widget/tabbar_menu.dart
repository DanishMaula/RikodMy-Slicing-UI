import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/utils/utils.dart';
import 'package:rikodmy/widget/product_item.dart';

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
    Tab(
      child: Text(
        'All Product',
        style: tabCategory,
      ),
    ),
    Tab(
      child: Text(
        'Electronics',
        style: tabCategory,
      ),
    ),
    Tab(
      child: Text(
        'Tools',
        style: tabCategory,
      ),
    ),
    Tab(
      child: Text(
        'Beauty',
        style: tabCategory,
      ),
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
    return SizedBox(
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
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Our Products',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          Expanded(
            child: TabBarView(
                // ignore: sort_child_properties_last
                children: myTab.map((Tab tab) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final AllProduct allProduct = allProductList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/productDetail');
                        },
                        child: ProductItem(allProduct: allProduct),
                      );
                    },
                    itemCount: allProductList.length,
                  );
                }).toList(),
                controller: _tabController),
          ),
        ],
      ),
    );
  }
}
