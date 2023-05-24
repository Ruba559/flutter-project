import 'package:flutter/material.dart';
import 'package:flutter_application_1/Binding/myBinding.dart';
import 'package:flutter_application_1/Services/MyService.dart';
import 'package:flutter_application_1/locale/changeLocale.dart';
import 'package:flutter_application_1/locale/locale.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
     LocaleController  controller = Get.put(LocaleController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
              
   //   home:  _decideMainPage(),
     // routes: routes,
      translations: MyLocale(),
      getPages: routes,
        initialBinding:InitialBindings() ,
    );
  }

  // _decideMainPage() {
  //   MyServices myServices = Get.find();
  //  String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
  //   if (sharedPrefLang != null) {
  //     return Home();
  //   } else {
  //     return Language();
  //   }
  // }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
      
//         title: Text(widget.title),
//       ),
//       body: Center(
       
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }
