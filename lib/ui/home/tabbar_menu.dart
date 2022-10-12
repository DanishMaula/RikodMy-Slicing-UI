import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/ui/home/details/product_detail.dart';
import 'package:rikodmy/utils/utils.dart';
import 'package:rikodmy/widget/list_item/product_item.dart';

class TabBarMenu extends StatefulWidget {
  const TabBarMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;


  //tab bar menu
  final List<Tab> myTab = <Tab>[
    Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE0E0E0)),
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Text(
            'All Product',
            style: tabCategory,
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE0E0E0)),
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Text(
            'Electronics',
            style: tabCategory,
          ),
        ),
      ),
    ),
   Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE0E0E0)),
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Text(
            'Tools',
            style: tabCategory,
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE0E0E0)),
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Text(
            'Beauty',
            style: tabCategory,
          ),
        ),
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
            indicatorSize: TabBarIndicatorSize.label,
            indicator: const BubbleTabIndicator(
              indicatorHeight: 28.0,
              indicatorColor: Color(0xff2360AD),
              tabBarIndicatorSize: TabBarIndicatorSize.label,
            ),
            indicatorPadding: const EdgeInsets.only(left:10.8, right: 10.8,),
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

          // list product
          Expanded(
            child: TabBarView(
                // ignore: sort_child_properties_last
                children: myTab.map((Tab tab) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final AllProduct allProduct = allProductList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ProductDetail(allProduct: allProduct);
                          }));
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
