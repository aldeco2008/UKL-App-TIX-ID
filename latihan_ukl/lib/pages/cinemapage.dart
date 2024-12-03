import 'package:flutter/material.dart';
import 'package:latihan_ukl/widgets/bottomnavbar.dart';

class CinemaPage extends StatefulWidget {
  const CinemaPage({Key? key}) : super(key: key);

  @override
  State<CinemaPage> createState() => _BioskopScreenState();
}

class _BioskopScreenState extends State<CinemaPage> {
  void _addToFavorites(String name) {
    final snackBar =
        SnackBar(content: Text('$name telah ditambahkan ke bioskop favorit'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bioskop'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Cari bioskop',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 16),
                  Text('Malang'),
                ],
              ),
            ),

            // Title Section
            Row(
              children: [
                Image.asset(
                  'bioskop.jpg',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Tandai bioskop favoritmu!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16.0),

            // Cinema List
            Expanded(
              child: ListView(
                children: [
                  CinemaCard(
                    name: 'Transmart XXI',
                    address: 'Mall Transmart',
                    onTap: () {
                      _addToFavorites('Transmart XXI');
                    },
                    imageUrl: 'bioskop1.jpg',
                  ),
                  CinemaCard(
                    name: 'Mopic Cinemas',
                    address: 'Jl. Soekarno Hatta',
                    onTap: () {
                      _addToFavorites('Mopic Cinemas');
                    },
                    imageUrl: 'bioskop2.jpg',
                  ),
                  CinemaCard(
                    name: 'Movimax Dinoyo',
                    address: 'Jl.MT. Haryono',
                    onTap: () {
                      _addToFavorites('Movimax Dinoyo');
                    },
                    imageUrl: 'bioskop3.jpg',
                  ),
                  CinemaCard(
                    name: 'Araya XXI',
                    address: 'Jl. Araya',
                    onTap: () {
                      _addToFavorites('Araya XXI');
                    },
                    imageUrl: 'bioskop4.jpg',
                  ),
                  CinemaCard(
                    name: 'Mandala 21',
                    address: 'Jl. Agus Salim',
                    onTap: () {
                      _addToFavorites('Mandala 21');
                    },
                    imageUrl: 'bioskop5.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(currentIndex: 1),
    );
  }
}

class CinemaCard extends StatelessWidget {
  final String name;
  final String address;
  final VoidCallback onTap;
  final String imageUrl;

  const CinemaCard({
    super.key,
    required this.name,
    required this.address,
    required this.onTap,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(address),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}