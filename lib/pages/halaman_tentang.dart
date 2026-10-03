import 'package:flutter/material.dart';



class HalamanTentang extends StatelessWidget {


  const HalamanTentang({super.key});



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: const Text(

          'Tentang Aplikasi',

        ),

      ),



      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            const Icon(

              Icons.info_outline,

              size: 70,

              color: Colors.indigo,

            ),



            const SizedBox(height: 20),



            const Text(

              'Nusantara Cerdas Mobile',

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 10),



            const Text(

              'Aplikasi layanan warga Smart City.',

            ),



          ],


        ),


      ),


    );


  }


}