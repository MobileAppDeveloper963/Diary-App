import 'package:diary_app/Model/main_drawer.dart';
import 'package:diary_app/Screens/Home/profile.dart';
import 'package:diary_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<MainDrawer> drawerwork = [
    MainDrawer(
      icon: Icons.account_circle_outlined,
      text: "Profile",
    ),
    MainDrawer(
      icon: Icons.help_outline,
      text: "Help & FAQ",
    ),
    MainDrawer(icon: Icons.star_border, text: "Rate Us"),
    MainDrawer(icon: Icons.share_outlined, text: "Share"),
    MainDrawer(icon: Icons.logout, text: "Logout"),
  ];

  List classss = [Profile()];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 260,
        shape: Border.all(
          color: Color(0xff808D9E),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Color(0xffFFB347),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 106,
                    height: 28,
                    child: Row(
                      children: [
                        Image.asset(AppImages.frame2),
                        Text(
                          "  TO DO",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/Rectangle 368.png"),
                      ),
                      title: Text(
                        'Taimoor Ahmed',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'mta.chughtai4@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  itemCount: drawerwork.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        index == 0
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ))
                            : SizedBox();
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        //  padding: const EdgeInsets.all(0.2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff808D9E)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: ListTile(
                            leading: Icon(drawerwork[index].icon,
                                color: Colors.orangeAccent),
                            title: Text(drawerwork[index].text)),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }
}
