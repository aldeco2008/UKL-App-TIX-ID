import 'package:flutter/material.dart';
import 'package:latihan_ukl/widgets/bottomnavbar.dart';

class TiketPage extends StatefulWidget {
  @override
  _TiketPageState createState() => _TiketPageState();
}

class _TiketPageState extends State<TiketPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Cari film',
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
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue[900],
            tabs: [
              Tab(text: "Sedang Tayang"),
              Tab(text: "Akan Datang"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab Sedang Tayang
                ListView(
                  children: [
                    MovieCard(
                      title: "Ngeri Ngeri Sedap",
                      ageRating: "D 13+",
                      genre: "Action",
                      rating: 9.5,
                      imageAsset: 'poster1.jpg',
                    ),
                    MovieCard(
                      title: "Marmut Merah Jambu",
                      ageRating: "R 17+",
                      genre: "Action",
                      rating: 9.3,
                      imageAsset: 'poster2.jpg',
                    ),
                    MovieCard(
                      title: "Bolehkah Saja Kumenangis",
                      ageRating: "R 17+",
                      genre: "Action",
                      rating: 9.3,
                      imageAsset: 'poster6.jpg',
                    ),
                    MovieCard(
                      title: "Home Sweet Loan",
                      ageRating: "R 17+",
                      genre: "Action",
                      rating: 9.3,
                      imageAsset: 'poster3.jpg',
                    ),
                    MovieCard(
                      title: "Jatuh Cinta Seperti Di Film-Film",
                      ageRating: "R 17+",
                      genre: "Action",
                      rating: 9.3,
                      imageAsset: 'poster7.jpg',
                    ),
                  ],
                ),
                // Tab Akan Datang
                ListView(
                  children: [
                    MovieCard(
                      title: "Ancika 1995",
                      ageRating: "D 13+",
                      genre: "Drama",
                      rating: 8.7,
                      imageAsset: 'poster4.jpg',
                    ),
                    MovieCard(
                      title: "Dilan 1983",
                      ageRating: "R 17+",
                      genre: "Action",
                      rating: 9.0,
                      imageAsset: 'poster5.jpg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(currentIndex: 2),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String ageRating;
  final String genre;
  final double rating;
  final String imageAsset;

  MovieCard({
    required this.title,
    required this.ageRating,
    required this.genre,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
              child: Image.asset(
                imageAsset,
                width: 200,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      ageRating,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(genre),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}