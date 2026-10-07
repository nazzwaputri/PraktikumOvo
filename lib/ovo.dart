import 'package:flutter/material.dart';

void main(){
  runApp(const Ovo());
}

class Ovo extends StatefulWidget {
  const Ovo({super.key});

  @override
  State<Ovo> createState() => _OvoState();
}

class _OvoState extends State<Ovo> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OVO',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OVO'),
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),

        //isi halaman
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            //===home page===
            SingleChildScrollView(
              child: Column(
                children: [

              //Header
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    const Text(
                      'Hi Nazwa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
              ),

              //card saldo
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saldo OVO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Rp 1.000.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Top Up'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Transfer'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //Judul Layanan
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Layanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             ),
             const SizedBox(height: 15),

              //Layanan
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      children:[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.phone_android),
                        ),
                        const SizedBox(height: 8),
                        const Text('Pulsa'),
                      ],
                    ),
                    Column(
                      children:[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.wifi),
                        ),
                        const SizedBox(height: 8),
                        const Text('Paket Data'),
                      ],
                    ),
                    Column(
                      children:[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.tv),
                        ),
                        const SizedBox(height: 8),
                        const Text('TV & Internet'),
                      ],
                    ),
                    Column(
                      children:[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.lightbulb),
                        ),
                        const SizedBox(height: 8),
                        const Text('Listrik'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              //Banner Promo
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Promo OVO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              
            ],
          ),
        ),

        //===profile page===
       SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Judul profile
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              //card profile
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300
                    ),
                ),
                child: Row(
                  children: [
                    //Foto Profile
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor:Colors.purple,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 12),

                    //nama & nomor
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                            'Nazwa Putri',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '081234567890',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Text(
                      'Ubah',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  ),
              ),
              const SizedBox(height: 8),

              //Loyalty Code
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical:12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_2_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Loyalty Code',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              //===akun===
              const Text(
                'Akun',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _profileMenu(
                Icons.account_circle_outlined,
                'OVO Premier',
                buttonText: 'Upgrade',
              ),
              _profileMenu(
                Icons.monetization_on_outlined,
                'OVO Points',
              ),
              _profileMenu(
                Icons.local_activity_outlined,
                'OVO Stamp',
              ),
              _profileMenu(
                Icons.link,
                'Aplikasi Terhubung',
                badgeText: 'Baru',
              ),
              const SizedBox(height: 18),

              //BANTUAN
              const Text(
                'Bantuan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _profileMenu(
                Icons.help_outline,
                'Pusat Bantuan',
              ),

              //Keamanan
              const Text(
                'Keamanan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              _profileMenu(
                Icons.security_outlined,
                'Keamanan',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
       ),
          ],
        ),
      ),
    );
  }

  Widget _profileMenu(
    IconData icon,
    String title, {
    String? buttonText,
    String? badgeText,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Row(
        children: [

          Icon(
            icon,
            size: 18,
            color: Colors.black87,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 11,
              ),
            ),
          ),

          if (buttonText != null)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
            ),

          if (badgeText != null)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                badgeText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                ),
              ),
            ),

          const SizedBox(width: 8),

          const Icon(
            Icons.chevron_right,
            size: 18,
          ),
        ],
      ),
    );
  }
}