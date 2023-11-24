import 'package:flutter/material.dart';
import 'package:tugas7/header_drawer.dart';

import 'package:tugas7/profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Tambahkan ini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topLeft,
              radius: 8.5,
              colors: [Colors.blue[600]!, Colors.purple[400]!],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/img/inaklug.png',
                width: 40,
                height: 40,
              ),
            ),
            const Text("Inaklug", style: TextStyle(fontFamily: 'Times New Roman', color: Colors.white),),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu,color: Colors.white),
            onPressed: () {
              //_scaffoldKey.currentState?.openEndDrawer();// Tambahkan fungsi ketika ikon menu ditekan
              _showModalDialog(context);

            },
          ),
        ],
      ),
      drawerEnableOpenDragGesture: false,
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("HOME", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text("TENTANG KAMI", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.miscellaneous_services),
                title: const Text("LAYANAN KAMI", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.perm_media),
                title: const Text("ARTIKEL", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profil()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text("HUBUNGI KAMI", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("KELUAR", style: TextStyle(fontFamily: 'Times New Roman', ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25.0,top: 50,),
            height: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/berlin.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                Positioned(
                  child: const Text(
                    'Layanan Kami',
                    style: TextStyle(fontFamily: 'Times New Roman', fontSize: 25.0, color: Colors.white,),
                  ),
                  bottom: 255.0,
                  left: 15,
                ),
              ],
            ),
          ),
          GridView.count(
              physics: BouncingScrollPhysics(), // Sesuaikan dengan kebutuhan Anda
              shrinkWrap: true,
              padding: const EdgeInsets.all(1),
              crossAxisCount: 1,
              childAspectRatio: 2,
              children: <Widget>[

                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    splashColor: Colors.lightBlueAccent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/img/bachelor.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.withOpacity(0.5), // Purple dengan transparansi 0.5 (50%)
                                Colors.white.withOpacity(0.5), // Blue dengan transparansi 0.5 (50%)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          child: const Text(
                            'Study S1 Bechalor',
                            style: TextStyle(fontFamily: 'Times New Roman',fontSize: 25.0, color: Colors.white),
                          ),
                          bottom: 15.0,
                          left: 15,
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                ),
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    splashColor: Colors.lightBlueAccent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/img/master.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.withOpacity(0.5), // Purple dengan transparansi 0.5 (50%)
                                Colors.white.withOpacity(0.5), // Blue dengan transparansi 0.5 (50%)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          child: const Text(
                            'Study S2 Master',
                            style: TextStyle(fontFamily: 'Times New Roman',fontSize: 25.0, color: Colors.white),
                          ),
                          bottom: 15.0,
                          left: 15,
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                ),
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    splashColor: Colors.lightBlueAccent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/img/phd.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.withOpacity(0.5), // Purple dengan transparansi 0.5 (50%)
                                Colors.white.withOpacity(0.5), // Blue dengan transparansi 0.5 (50%)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          child: const Text(
                            'Perawat Careview',
                            style: TextStyle(fontFamily: 'Times New Roman',fontSize: 25.0, color: Colors.white),
                          ),
                          bottom: 15.0,
                          left: 15,
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                ),
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    splashColor: Colors.lightBlueAccent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/img/kursus.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.withOpacity(0.5), // Purple dengan transparansi 0.5 (50%)
                                Colors.white.withOpacity(0.5), // Blue dengan transparansi 0.5 (50%)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          child: const Text(
                            'Kursus Bahasa Asing',
                            style: TextStyle(fontFamily: 'Times New Roman',fontSize: 25.0, color: Colors.white),
                          ),
                          bottom: 15.0,
                          left: 15,
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                ),




                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'HUBUNGI KAMI',
                        style: TextStyle(
                          fontSize: 20.0,fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Kantor Pusat\n'
                            'MULA BY GALERIA JAKARTA CILANDAK TWON SQUER LT BASEMENT\n'
                            'Phone: 085286754052',
                        style: TextStyle(fontFamily: 'Times New Roman',fontSize: 16.0),textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 11.0),
                      // Tombol Lokasi Kami
                      Container(
                        constraints: BoxConstraints(minHeight: 55.0, maxWidth: 250.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(90.0), // Atur radius sesuai keinginan Anda
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Tindakan yang diambil ketika container ditekan
                            },
                            child: Center(
                              child: Text(
                                'Lokasi Kami',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Times New Roman', color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                      ,
                      const SizedBox(height: 8.0),
                      // Tombol Kirim Pesan
                      OutlinedButton(
                        onPressed: () {
                          // Tindakan yang diambil ketika tombol ditekan
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Ubah nilai sesuai keinginan Anda
                          ),
                          side: BorderSide(width: 2, color: Colors.black), // Atur garis pinggir (outline)
                        ),
                        child: Container(
                          constraints: BoxConstraints(minHeight: 50.0, maxWidth: 200.0),
                          alignment: Alignment.center,
                          child: const Text(
                            'Kirim Pesan',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Times New Roman', color: Colors.black),
                          ),
                        ),
                      )



                    ],
                  ),
                ),



              ],

            ),
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: Text(
                'Copyright 2022 - Inaklug Indonesia\nHak Cipta dilindungi Undang-undang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontFamily: 'Times New Roman',color: Colors.white),
              ),
            ),
          ),


        ],
      ),
      ),
    );



  }
}
void _showModalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 540,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.white.withOpacity(1),
              ),
            ),
          ),
          Positioned(
            top: -25,
            left: -90,
            right: -90,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: Image.asset(
                          'assets/img/inaklug.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 140, vertical: 30),
                    title: const Text(
                      "HOME\nTENTANG KAMI\nLAYANAN KAMI\nARTIKEL\nHUBUNGI KAMI",
                      style: TextStyle(fontFamily: 'Times New Roman'),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // Lakukan aksi saat opsi HOME dipilih
                    },
                  ),
                  // ... tambahkan opsi lainnya seperti sebelumnya
                ],
              ),
              // Set lebar AlertDialog ke nilai maksimum
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ],
      );
    },
  );
}








