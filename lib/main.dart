import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unblast",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.5,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 20,
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(1000),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRizICXbCjEhCREhEVDfk6EohpUuy-tsCKUcQ&s",
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Column(
                        spacing: 5,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "371",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "posts",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "14.4K",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "followers",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "272",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "following",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Expanded(
                                flex: 5,
                                child: FilledButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue,
                                    ),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: IconButton.filled(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down),
                                  color: Colors.white,
                                  style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                      ),
                                    ),
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "Unblast",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "E-commerce Website",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Selective free resource for designers @unblast.",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Melbourne, Victoria, Australia",
                  style: TextStyle(color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 70,
                    child: RefreshIndicator(
                      onRefresh: () async {},
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 10,
                          children: List.generate(
                            10,
                            (index) => Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(1000),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Text ${index + 1}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // @override
  //Color.fromRGBO(0, 0, 0, 1)d(BuildContext context) {
  //   // This method is rerun every time setState is called, for instance as done
  //   // by the _incrementCounter method above.
  //   //
  //   // The Flutter framework has been optimized to make rerunning build methods
  //   // fast, so that you can just rebuild anything that needs updating rather
  //   // than having to individually change instances of widgets.
  //   return Scaffold(
  //     appBar: AppBar(
  //       // TRY THIS: Try changing the color here to a specific color (to
  //       // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
  //       // change color while the other colors stay the same.
  //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //       // Here we take the value from the MyHomePage object that was created by
  //       // the App.build method, and use it to set our appbar title.
  //       title: Text(widget.title),
  //     ),

  //     // body: RefreshIndicator(
  //     //   onRefresh: () async {},
  //     //   child: ListView.separated(
  //     //     separatorBuilder: (_, _) =>
  //     //         Container(height: 1, width: double.infinity, color: Colors.black),
  //     //     itemCount: 5,
  //     //     itemBuilder: (context, index) {
  //     //       return ListTile(
  //     //         leading: CircleAvatar(
  //     //           backgroundColor: Colors.blueAccent,
  //     //           child: Text('${index + 1}'),
  //     //         ),
  //     //         enabled: index % 2 == 0,
  //     //         title: Text('Data Pengguna #$index'),
  //     //         subtitle: const Text('Status: Terverifikasi'),
  //     //         trailing: const Icon(Icons.keyboard_arrow_right),
  //     //         onTap: () {
  //     //           // Logika interaksi
  //     //         },
  //     //       );
  //     //     },
  //     //   ),
  //     // ),
  //     // body: PageView.builder(itemBuilder: ),
  //     // body: Column(
  //     //   children: [
  //     //     SizedBox(
  //     //       width: double.infinity,
  //     //       height: 200,
  //     //       child: Expanded(
  //     //         child: GridView.count(
  //     //           crossAxisCount: 3,
  //     //           crossAxisSpacing: 16,
  //     //           mainAxisSpacing: 16,
  //     //           padding: const EdgeInsets.all(20),
  //     //           children: [
  //     //             _buildActionCard(Icons.analytics, 'Laporan', Colors.indigo),
  //     //             _buildActionCard(Icons.shopping_bag, 'Produk', Colors.teal),
  //     //             _buildActionCard(Icons.people, 'Klien', Colors.amber),
  //     //             _buildActionCard(Icons.settings, 'Sistem', Colors.blueGrey),
  //     //           ],
  //     //         ),
  //     //       ),
  //     //     ),
  //     //     DefaultTabController(
  //     //       length:
  //     //           4, // Menentukan jumlah kategori (Beranda, Kategori, Favorit, Transaksi)
  //     //       initialIndex: 0, // Memulai aplikasi pada indeks pertama (Beranda)
  //     //       child: Scaffold(
  //     //         appBar: AppBar(
  //     //           title: const Text('Marketplace UI'),
  //     //           bottom: const TabBar(
  //     //             tabs: [
  //     //               Tab(icon: Icon(Icons.home), text: "BERANDA"),
  //     //               Tab(icon: Icon(Icons.category), text: "KATEGORI"),
  //     //               Tab(icon: Icon(Icons.favorite), text: "FAVORIT"),
  //     //               Tab(icon: Icon(Icons.receipt_long), text: "TRANSAKSI"),
  //     //             ],
  //     //           ),
  //     //         ),
  //     //         body: const TabBarView(
  //     //           children: [
  //     //             // Konten untuk Tab Beranda
  //     //             Center(child: Text("Halaman Utama & Rekomendasi")),
  //     //             // Konten untuk Tab Kategori
  //     //             Center(child: Text("Daftar Kategori Produk")),
  //     //             // Konten untuk Tab Favorit
  //     //             Center(child: Text("Produk yang Anda Sukai")),
  //     //             // Konten untuk Tab Transaksi
  //     //             Center(child: Text("Riwayat Belanja Anda")),
  //     //           ],
  //     //         ),
  //     //       ),
  //     //     ),
  //     //   ],
  //     // ),
  //     // body: DefaultTabController(
  //     //   length:
  //     //       4, // Menentukan jumlah kategori (Beranda, Kategori, Favorit, Transaksi)
  //     //   initialIndex: 1, // Memulai aplikasi pada indeks pertama (Beranda)
  //     //   child: Scaffold(
  //     //     appBar: AppBar(
  //     //       title: const Text('Marketplace UI'),
  //     //       bottom: const TabBar(
  //     //         tabs: [
  //     //           Tab(icon: Icon(Icons.home), text: "BERANDA"),
  //     //           Tab(icon: Icon(Icons.category), text: "KATEGORI"),
  //     //           Tab(icon: Icon(Icons.favorite), text: "FAVORIT"),
  //     //           Tab(icon: Icon(Icons.receipt_long), text: "TRANSAKSI"),
  //     //         ],
  //     //       ),
  //     //     ),
  //     //     body: const TabBarView(
  //     //       children: [
  //     //         // Konten untuk Tab Beranda
  //     //         Center(child: Text("Halaman Utama & Rekomendasi")),
  //     //         // Konten untuk Tab Kategori
  //     //         Center(child: Text("Daftar Kategori Produk")),
  //     //         // Konten untuk Tab Favorit
  //     //         Center(child: Text("Produk yang Anda Sukai")),
  //     //         // Konten untuk Tab Transaksi
  //     //         Center(child: Text("Riwayat Belanja Anda")),
  //     //       ],
  //     //     ),
  //     //   ),
  //     // ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ),
  //   );
  // }

  // Widget _buildActionCard(IconData icon, String title, Color color) {
  //   return Card(
  //     elevation: 2,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(icon, size: 48, color: color),
  //         const SizedBox(height: 12),
  //         Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
  //       ],
  //     ),
  //   );
  // }

  // @override
  Widget oldBuild(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(""),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(20), // Jarak luar
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ), // Jarak dalam
              alignment: Alignment.center, // Pusatkan teks di dalam kotak
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  15,
                ), // Membuat sudut melengkung
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ), // Memberikan garis tepi
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
              child: const Text(
                'Halo, Container!',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Flexible
            Row(
              children: [
                // Mengambil 2 bagian ruang
                Flexible(
                  child: Container(color: Colors.red, height: 50, width: 10000),
                ),
                // Mengambil 1 bagian ruang
                Flexible(
                  child: Container(color: Colors.blue, height: 50, width: 100),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ColoredBox(color: Colors.green),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ColoredBox(color: Colors.cyan),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded
            Stack(
              alignment: Alignment.center,
              children: [
                // Lapisan paling bawah (Gambar)
                Image.network(
                  'https://www.pngall.com/wp-content/uploads/17/Facebook-Logo-Circle-Creation-PNG.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                // Lapisan atas (Overlay Hitam Transparan)
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black.withOpacity(0.3),
                ),
                // Mengatur posisi teks secara absolut di pojok kiri bawah
                Positioned(
                  top: 12,
                  left: 12,
                  child: const Text(
                    'E-book Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                // Menempatkan icon di pojok kanan atas
                Positioned(
                  top: 8,
                  right: 8,
                  child: const Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
