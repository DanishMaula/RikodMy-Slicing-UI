import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/widget/custom_bg.dart';

import '../../../utils/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: title,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      Image.asset('assets/images/profile.png').image,
                  radius: 60,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Shirin Al Athrus', style: nameProfile),
              Text('081364706228', style: phoneNumberProfile),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/bg_cash_in_hand.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 80,
                      width: double.infinity / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Cash In Hand',
                            style: titleProfileInfo,
                          ),
                          Text(
                            'RM 9846.86',
                            style: BalanceInfoProfile,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/bg_transfer.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 80,
                      width: double.infinity / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Transfer',
                            style: titleProfileInfo,
                          ),
                          Text(
                            'RM 1295.44',
                            style: BalanceInfoProfile,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bg_unpaid.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Unpaid',
                      style: titleProfileInfo,
                    ),
                    Text(
                      'RM 98698.86',
                      style: BalanceInfoProfile,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('About', style: titleAbout),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.privacy_tip, color: Color(0xff828282)),
                      const SizedBox(width: 15),
                      Text('Term and Condition', style: aboutContent),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff828282),
                    thickness: 1,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.policy_rounded,
                          color: Color(0xff828282)),
                      const SizedBox(width: 15),
                      Text('Privacy Policy', style: aboutContent),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff828282),
                    thickness: 1,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.help_rounded, color: Color(0xff828282)),
                      const SizedBox(width: 15),
                      Text('Help', style: aboutContent),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff828282),
                    thickness: 1,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.info_rounded, color: Color(0xff828282)),
                      const SizedBox(width: 15),
                      Text('About App', style: aboutContent),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff828282),
                    thickness: 1,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Version 2.0.0', style: version),
                    ],
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                      onPressed: () {},
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      color: const Color(0xffDD2025),
                      child: Text(
                        'Logout',
                        style: addCart,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
