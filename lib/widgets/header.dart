import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTopBar(),
        _buildMainHeader(),
        _buildNavigationBar(),
      ],
    );
  }

  Widget _buildTopBar() {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 250, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text('Franchise Opportunities'),
                SizedBox(width: 20),
                Text('Help'),
                SizedBox(width: 20),
                Text('Feedback'),
              ],
            ),
            Row(
              children: [
                const Text('hello@email.com'),
                const SizedBox(width: 20),
                Text('0800 022 2 022'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 250, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.people, color: Colors.orange[400], size: 40),
              const SizedBox(width: 10),
              const Text(
                'CARTRIDGE KINGS',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 280, // Memperbesar width dari 180 ke 280
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'SEARCH',
                    hintStyle: TextStyle(
                      fontSize: 13, // Mengecilkan ukuran font hint
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 2), // Menyesuaikan padding dalam
                    border: OutlineInputBorder(),
                    suffixIcon:
                        Icon(Icons.search, size: 20), // Mengecilkan ukuran icon
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32, // Memperbesar horizontal padding
                    vertical: 22,
                  ),
                  minimumSize: const Size(140, 0), // Menambahkan minimum width
                ),
                label: const Text(
                  'CART (1)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationBar() {
    return Container(
      width: 1050,
      color: const Color(0xFF2196F3),
      // Padding sama dengan main header
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navButton('HOME'),
            _navButton('INK CARTRIDGES'),
            _navButton('TONER CARTRIDGES'),
            _navButton('CONTACT US'),
            _navButton('LOGIN / REGISTER'),
          ],
        ),
      ),
    );
  }

  Widget _navButton(String text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
