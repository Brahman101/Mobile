import 'package:get/get.dart';
import 'package:modul3prak/app/modules/home/views/facts_view.dart';
import 'package:modul3prak/app/modules/home/views/home_view.dart';
import 'package:modul3prak/app/modules/home/views/instagram_view.dart';

class RoutesClass {
  static String home = '/';
  static String facts = '/facts';
  static String instagram = '/instagram';

  static String getHomeRoute() => home;
  static String getFactsRoute() => facts;
  static String getInstagramRoute() => instagram;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomeView(),
    ),
    GetPage(name: facts, page: () => FactsView()),
    GetPage(name: instagram, page: () => InstagramView())
  ];
}
