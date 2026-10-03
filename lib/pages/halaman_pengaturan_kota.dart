import 'package:flutter/material.dart';


class HalamanPengaturanKota extends StatelessWidget {


  const HalamanPengaturanKota({super.key});



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: const Text(

          'Pengaturan Kota',

        ),

      ),



      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: [



            const Icon(

              Icons.settings,

              size: 70,

            ),



            const SizedBox(height: 20),



            const Text(

              'Pengaturan Nusantara Cerdas',

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 10),



            const Text(

              'Atur preferensi aplikasi dan layanan kota.',

            ),



          ],


        ),


      ),


    );


  }


}