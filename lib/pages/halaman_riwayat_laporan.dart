import 'package:flutter/material.dart';



class HalamanRiwayatLaporan extends StatelessWidget {


  const HalamanRiwayatLaporan({super.key});



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

            const Text('Riwayat Laporan'),

      ),



      body: const Center(

        child: Text(

          'Daftar riwayat laporan warga',

          style: TextStyle(

            fontSize: 18,

          ),

        ),

      ),




      floatingActionButton: FloatingActionButton(

        onPressed: (){


          ScaffoldMessenger.of(context)

              .showSnackBar(

            const SnackBar(

              content:

                  Text('Tambah laporan baru'),

            ),

          );


        },


        child: const Icon(Icons.add),


      ),



      floatingActionButtonLocation:

          FloatingActionButtonLocation.centerDocked,





      bottomNavigationBar: BottomAppBar(


        shape:

            const CircularNotchedRectangle(),


        notchMargin: 8,



        child: Row(


          mainAxisAlignment:

              MainAxisAlignment.spaceAround,



          children: [



            IconButton(

              onPressed: () {},

              icon:

                  const Icon(Icons.search),

            ),



            IconButton(

              onPressed: () {},

              icon:

                  const Icon(Icons.filter_alt),

            ),



            const SizedBox(width: 40),



            IconButton(

              onPressed: () {},

              icon:

                  const Icon(Icons.sort),

            ),



            IconButton(

              onPressed: () {},

              icon:

                  const Icon(Icons.more_vert),

            ),



          ],


        ),


      ),



    );


  }



}