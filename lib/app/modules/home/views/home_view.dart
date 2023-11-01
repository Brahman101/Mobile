// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul3prak/app/routes/app_routes.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 56, 56),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (controller.currentIndex.value == 0)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              blurRadius: 5, // Spread of the shadow
                              offset: Offset(0, 3), // Offset of the shadow
                            ),
                          ]),
                      child: SizedBox(
                        width: 310,
                        height: 60,
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28.0))),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.yellow,
                                  size: 21,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text('Cari menu atau kucing..',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            132, 255, 255, 0),
                                        fontSize: 14))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              blurRadius: 5, // Spread of the shadow
                              offset: Offset(0, 3), // Offset of the shadow
                            ),
                          ]),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          color: Colors.yellowAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              // SizedBox(
              //   height: 30,
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .start, // This aligns children to the top vertically
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Sambut hangat aroma kopi dan seruan manis kucing kami pagi ini',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          'Fakta random hari ini: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        GestureDetector(
                            onTap: () =>
                                Get.toNamed(RoutesClass.getFactsRoute()),
                            child: Text(
                              'Cek Sekarang!!',
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 14),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(RoutesClass.getInstagramRoute()),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 100,
                    height: 30,
                    child: Card(
                      child: Text('Webview'),
                    ),
                  ),
                ),
              ),
              if (controller.currentIndex.value == 1) Text('2')
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), // Adjust border radius as needed
              topRight: Radius.circular(20), // Adjust border radius as needed
            ),
            child: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 203, 203, 203),
              selectedItemColor: Colors.yellowAccent,
              unselectedItemColor: Colors.grey,
              currentIndex: controller.currentIndex.value,
              onTap: controller.changePage, // This will update the currentIndex
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.catching_pokemon),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2),
                  label: '',
                ),
              ],
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
          ),
        ));
  }
}
