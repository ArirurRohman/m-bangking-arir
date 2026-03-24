import 'package:flutter/material.dart';

void main() {
  runApp(const MyBCAApp());
}

class MyBCAApp extends StatelessWidget {
  const MyBCAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005DAA), // Warna biru BCA
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Header Section
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'myBCA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.settings, color: Colors.white),
                          SizedBox(width: 15),
                          Icon(Icons.logout, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
                // Content White Area
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "HALO, ARIRUR ROHMAN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF005DAA),
                            ),
                          ),
                          const SizedBox(height: 15),

                          // Saldo Card
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Rekening 123-456-XXX",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "IDR 100,000,000",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 25),

                          // Grid Menu (Transfer, Deposito, dll)
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            children: [
                              // Memanggil fungsi _buildmenuicon
                              _buildMenuIcon(Icons.swap_horiz, "Transfer"),
                              _buildMenuIcon(Icons.savings, "Deposito"),
                              _buildMenuIcon(Icons.trending_up, "Welma"),
                              _buildMenuIcon(
                                Icons.calendar_month,
                                "Transaksi\nTerjadwal",
                              ),
                              _buildMenuIcon(Icons.description, "e-Statement"),
                              _buildMenuIcon(
                                Icons.account_balance_wallet,
                                "Kredit\nKonsumen",
                              ),
                              _buildMenuIcon(Icons.credit_card, "Flazz"),
                              _buildMenuIcon(Icons.phonelink_ring, "Cardless"),
                            ],
                          ),

                          const SizedBox(height: 25),
                          _buildSectionTitle("BAYAR & ISI ULANG"),
                          const SizedBox(height: 15),

                          // Row untuk Bayar & Isi Ulang
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildCircularMenu(
                                Icons.stay_primary_portrait,
                                "Paket Data",
                              ),
                              _buildCircularMenu(
                                Icons.health_and_safety,
                                "BPJS",
                              ),
                              _buildCircularMenu(Icons.water_drop, "Air"),
                              _buildCircularMenu(Icons.shield, "Asuransi"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // Custom Bottom Navigation
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, "Beranda", true),
              _buildNavItem(Icons.history, "Riwayat", false),
              const SizedBox(width: 40), // Space for QRIS button
              _buildNavItem(Icons.notifications, "Notifikasi", false),
              _buildNavItem(Icons.person, "Akun Saya", false),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF00A3E0),
        child: const Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildMenuIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: const Color(0xFF005DAA)),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  Widget _buildCircularMenu(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue.shade50,
          child: Icon(icon, color: const Color(0xFF005DAA)),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const Text(
          "Selengkapnya",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? const Color(0xFF005DAA) : Colors.grey),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: isActive ? const Color(0xFF005DAA) : Colors.grey,
          ),
        ),
      ],
    );
  }
}
