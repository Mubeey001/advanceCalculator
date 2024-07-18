import 'package:calculator/bindings/bindings.dart';
import 'package:calculator/routes/routes.dart';
import 'package:calculator/screens/bmicalculator/bmi_screen.dart';
import 'package:calculator/screens/comingsoonscreen/comingSoon.dart';
import 'package:calculator/screens/gstcalculator/gst_screen.dart';
import 'package:calculator/screens/home_screen/home_screen.dart';
import 'package:calculator/screens/loancalculator/loan_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Advance Calculator",
      initialBinding: MyBindings(),
      getPages: [
        GetPage(
          name: Routes.bimScreenRoute,
          page: () => const BmiScreen(),
        ),
        GetPage(
          name: Routes.gstScreenRoute,
          page: () => const GstScreen(),
        ),
        GetPage(
          name: Routes.loanScreenRoute,
          page: () => const LoanScreen(),
        ),
        GetPage(
            name: Routes.coomingSoonScreenRoute,
            page: () => const ComingsoonScreen())
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
