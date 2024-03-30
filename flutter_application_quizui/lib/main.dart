
import 'package:flutter/material.dart';

import 'soalno2.dart';
import 'soalno1.dart';

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
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/soalno1': (context) => const soalNo1(title: 'Quiz UI No 1'),
        '/soalno2': (context) => const soalNo2(title: 'Quiz UI No 2'),
      },
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok: 5',
            ),
            const Text(
              'Mhs 1: 2202495 Raffi Ardhi Naufal',
            ),
            const Text(
              'Mhs 2: 2204509 Muhamad Fahreza Fauzan',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/soalno1');
                  },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/soalno2');
                  },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  // Widget soalNo1() {
  //   return Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //       ),
  //       body: const Text("ini jawaban no 1"));
  // }

  //jaawaban no 2
//   Widget soalNo2() {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Column 1: Background Image with Features
//             Container(
//               height: MediaQuery.of(context).size.height / 3,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage('https://fastly.picsum.photos/id/490/300/200.jpg?hmac=qP4A6IEEMybCfSE3tHSANZ1gfuNT74WOY6KEe9sVMXE'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: AppBar(
//                   backgroundColor: Colors.transparent,
//                   elevation: 0,
//                   toolbarHeight: 100,
//                   titleSpacing: 0,
                
//                   title: Container(
//                     width: 300,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Cari barang di Tokoo',
//                         hintStyle: TextStyle(color: Color(0xFF6c5347)),
//                         filled: true,
//                         fillColor: Color(0xFFebe6ec),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.0),
//                           borderSide: BorderSide.none,
//                         ),
//                         prefixIcon: Icon(Icons.search, color: Color(0xFF6c5347)),
//                       ),
//                     ),
//                   ),
//                   actions: [
//                   IconButton(
//                     icon: Icon(Icons.shopping_cart, color: Colors.white,),
//                     onPressed: () {
//                       // Do something when cart icon is pressed
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.notifications, color: Colors.white),
//                     onPressed: () {
//                       // Do something when notification icon is pressed
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.message, color: Colors.white),
//                     onPressed: () {
//                       // Do something when message icon is pressed
//                     },
//                   ),
//                   ],
//               ),
//             ),  
//           ),
//             // Column 2: Greeting and Feature Boxes
//             Container(
//               color: Colors.white,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Text(
//                       'Halo, Budi!',
//                       style: TextStyle(color: Colors.black, fontSize: 20.0),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10.0),
//                     margin: EdgeInsets.symmetric(horizontal: 40), 
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255,230,220,230),
//                       border: Border.all(color: Colors.brown),
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.wallet, color: Color(0xFF6c5347)),
//                               SizedBox(width: 8),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Store',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     'Credit',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     'Rp 0',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 1.5, // Lebar garis vertikal
//                           color: Color(0xFF6c5347),
//                           height: 40, // Sesuaikan tinggi dengan tinggi fitur
//                         ),
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.loyalty_rounded, color: Color(0xFF6c5347)),
//                               SizedBox(width: 8),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Reward',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     'Point',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     '100 Point',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 1.5, // Lebar garis vertikal
//                           color: Color(0xFF6c5347),
//                           height: 40, // Sesuaikan tinggi dengan tinggi fitur
//                         ),
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.confirmation_number, color: Color(0xFF6c5347)),
//                               SizedBox(width: 8),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Kupon',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     'Saya',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                   Text(
//                                     '11 Kupon',
//                                     style: TextStyle(color: Color(0xFF6c5347)),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             // Handle the tap for Official Store
//                           },
//                           child: Column(
//                             children: [
//                               Icon(Icons.storefront, color: Colors.black),
//                               Text('Official Store', style: TextStyle(color: Colors.black)),
//                             ],
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             // Handle the tap for Hot Deal
//                           },
//                           child: Column(
//                             children: [
//                               Icon(Icons.local_fire_department_sharp, color: Colors.red),
//                               Text('Hot Deal', style: TextStyle(color: Colors.black)),
//                             ],
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             // Handle the tap for Fashion
//                           },
//                           child: Column(
//                             children: [
//                               Icon(Icons.checkroom, color: Colors.black),
//                               Text('Fashion', style: TextStyle(color: Colors.black)),
//                             ],
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             // Handle the tap for Kosmetik
//                           },
//                           child: Column(
//                             children: [
//                               Icon(Icons.face_retouching_natural, color: Colors.black),
//                               Text('Kosmetik', style: TextStyle(color: Colors.black)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Column 3: Carousel Slider
//             Expanded(
//               child: CarouselSlider(
//                 options: CarouselOptions(
//                   aspectRatio: 16 / 9,
//                   viewportFraction: 0.8,
//                   initialPage: 0,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 3),
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enlargeCenterPage: true,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: [
//                   'https://fastly.picsum.photos/id/49/1280/792.jpg?hmac=NnUJy0O9-pXHLmY2loqVs2pJmgw9xzuixgYOk4ALCXU',
//                   'https://fastly.picsum.photos/id/62/2000/1333.jpg?hmac=PbFIn8k0AndjiUwpOJcfHz2h-wPCQi_vJRTJZPdr6kQ',
//                   'https://fastly.picsum.photos/id/179/2048/1365.jpg?hmac=GJyDjrvfBfjPfJPqSBd2pX6sjvsGbG10d21blr5bTS8',
//                 ].map((item) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: NetworkImage(item),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.grey, // Warna latar belakang abu muda
//           selectedItemColor: Color.fromARGB(255, 70,64,74), // Warna teks dan ikon yang dipilih
//           unselectedItemColor: Color.fromARGB(255, 70,64,74), // Warna teks dan ikon yang tidak dipilih
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           selectedIconTheme: IconThemeData(
//             color: Color.fromARGB(255, 70,64,74),
//           ),
//           items: [
//             BottomNavigationBarItem(
//               icon: _buildIcon(Icons.home, _selectedIndex == 0),
//               label: 'Beranda',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildIcon(Icons.category, _selectedIndex == 1),
//               label: 'Kategori',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildIcon(Icons.qr_code, _selectedIndex == 2),
//               label: 'Scan',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildIcon(Icons.shopping_basket_rounded, _selectedIndex == 3),
//               label: 'List Belanja',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildIcon(Icons.account_circle, _selectedIndex == 4),
//               label: 'Akun',
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
// }

//   Widget _buildIcon(IconData iconData, bool isSelected) {
//     return Container(
//       width: 60, // Lebar ikon
//       height: 30, // Tinggi ikon
//       decoration: ShapeDecoration(
//         color: isSelected ? Colors.yellow : Colors.transparent,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20), // Bentuk rounded dengan sudut 12
//         ),
//       ),
//       child: Icon(iconData),
//     );
//   }

  

}