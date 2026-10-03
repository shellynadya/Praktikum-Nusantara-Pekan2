import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation/app_routes.dart';

import 'models/favorit_model.dart';
import 'models/pengajuan_model.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (_) => FavoritModel(),
        ),

        ChangeNotifierProvider(
          create: (_) => PengajuanModel(),
        ),

      ],

      child: const NusantaraCerdas(),

    ),
  );
}



class NusantaraCerdas extends StatelessWidget {

  const NusantaraCerdas({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Nusantara Cerdas Mobile',


      theme: ThemeData(

        useMaterial3: true,

        colorSchemeSeed: Colors.indigo,

      ),


      initialRoute: AppRoutes.beranda,


      routes: AppRoutes.daftarRoute(),


      onGenerateRoute: AppRoutes.bentukRoute,


      onUnknownRoute: AppRoutes.routeTidakDikenal,


    );

  }

}