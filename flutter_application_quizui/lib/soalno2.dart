import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

int _selectedIndex = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz UI No 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const soalNo2(title: 'Quiz UI No 2'),
    );
  }
}

class soalNo2 extends StatefulWidget {
  const soalNo2({super.key, required this.title});

  final String title;

  @override
  State<soalNo2> createState() => _soalNo2State();
}

class _soalNo2State extends State<soalNo2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Column 1: Appbar + Background Image
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://fastly.picsum.photos/id/490/300/200.jpg?hmac=qP4A6IEEMybCfSE3tHSANZ1gfuNT74WOY6KEe9sVMXE'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  toolbarHeight: 100,
                  titleSpacing: 0,
                
                  title: Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari barang di Tokoo',
                        hintStyle: TextStyle(color: Color(0xFF6c5347)),
                        filled: true,
                        fillColor: Color(0xFFebe6ec),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search, color: Color(0xFF6c5347)),
                      ),
                    ),
                  ),
                  actions: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () { },
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white),
                    onPressed: () { },
                  ),
                  IconButton(
                    icon: Icon(Icons.message, color: Colors.white),
                    onPressed: () { },
                  ),
                  ],
              ),
            ),  
          ),
            // Column 2: Content Fitur Credit, Point, Kupon dan kategori
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Halo, Budi!',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 40), 
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255,230,220,230),
                      border: Border.all(color: Colors.brown),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wallet, color: Color(0xFF6c5347)),
                              SizedBox(width: 8),
                              Column(
                                children: [
                                  Text(
                                    'Store',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    'Credit',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    'Rp 0',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Pengganti VerticalDivider, entah kenapa tidak muncul pas dipakai
                        Container(
                          width: 1.5, 
                          color: Color(0xFF6c5347),
                          height: 40, 
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.loyalty_rounded, color: Color(0xFF6c5347)),
                              SizedBox(width: 8),
                              Column(
                                children: [
                                  Text(
                                    'Reward',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    'Point',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    '100 Point',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Pengganti VerticalDivider, entah kenapa tidak muncul pas dipakai
                        Container(
                          width: 1.5,
                          color: Color(0xFF6c5347),
                          height: 40,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.confirmation_number, color: Color(0xFF6c5347)),
                              SizedBox(width: 8),
                              Column(
                                children: [
                                  Text(
                                    'Kupon',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    'Saya',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                  Text(
                                    '11 Kupon',
                                    style: TextStyle(color: Color(0xFF6c5347)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            // Action ketika kategori di tap, masih kosong
                          },
                          child: Column(
                            children: [
                              Icon(Icons.storefront, color: Colors.black, size: 36),
                              Text('Official Store', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Action ketika kategori di tap, masih kosong
                          },
                          child: Column(
                            children: [
                              Icon(Icons.local_fire_department_sharp, color: Colors.red, size: 36),
                              Text('Hot Deal', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                           // Action ketika kategori di tap, masih kosong
                          },
                          child: Column(
                            children: [
                              Icon(Icons.checkroom, color: Colors.black, size: 36),
                              Text('Fashion', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Action ketika kategori di tap, masih kosong
                          },
                          child: Column(
                            children: [
                              Icon(Icons.face_retouching_natural, color: Colors.black, size: 36),
                              Text('Kosmetik', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Column 3: Carousel Slider
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'https://fastly.picsum.photos/id/49/1280/792.jpg?hmac=NnUJy0O9-pXHLmY2loqVs2pJmgw9xzuixgYOk4ALCXU',
                  'https://fastly.picsum.photos/id/62/2000/1333.jpg?hmac=PbFIn8k0AndjiUwpOJcfHz2h-wPCQi_vJRTJZPdr6kQ',
                  'https://fastly.picsum.photos/id/179/2048/1365.jpg?hmac=GJyDjrvfBfjPfJPqSBd2pX6sjvsGbG10d21blr5bTS8',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),

        //Bottom Navbar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey, // Warna latar belakang abu muda
          selectedItemColor: Color.fromARGB(255, 70,64,74), // Warna teks dan ikon yang dipilih
          unselectedItemColor: Color.fromARGB(255, 70,64,74), // Warna teks dan ikon yang tidak dipilih
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 70,64,74),
          ),
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.home, _selectedIndex == 0),
              label: 'Beranda',
              tooltip: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.category, _selectedIndex == 1),
              label: 'Kategori',
              tooltip: 'Kategori',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.qr_code, _selectedIndex == 2),
              label: 'Scan',
              tooltip: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.shopping_basket_rounded, _selectedIndex == 3),
              label: 'List Belanja',
              tooltip: 'List Belanja',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.account_circle, _selectedIndex == 4),
              label: 'Akun',
              tooltip: 'Akun',
            ),
          ],
        ),
      ),
    );
  }

  // untuk memfilter ikon navbar yang di klik (halaman yang sedang dilihat), sehingga highlight pindah
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // highlight oval kuning untuk menandakan halaman yang dilihat
  Widget _buildIcon(IconData iconData, bool isSelected) {
    return Container(
      width: 60,
      height: 30, 
      decoration: ShapeDecoration(
        color: isSelected ? Colors.yellow : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Icon(iconData),
    );
  }

  

}