import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoringTipsScreen extends StatefulWidget {
  const StoringTipsScreen({Key? key}) : super(key: key);

  @override
  _StoringTipsScreenState createState() => _StoringTipsScreenState();
}

class _StoringTipsScreenState extends State<StoringTipsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'Storing Tips',
    style: GoogleFonts.outfit(
      textStyle: const TextStyle(
        fontSize: 25,
        color: Color(0xff1B4A38),
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Fruits'),
            Tab(text: 'Vegetables'),
            Tab(text: 'Beefs'),
            Tab(text: 'Da...'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildFruitsList(),
          _buildVegetablesList(),
          _buildBeefsList(),
          _buildOthersList(),
        ],
      ),
    );
  }

  Widget _buildFruitsList() {
    return ListView(
      children: [
        _buildTipItem('Raspberry', 'The raspberry is the edible fruit of several...'),
        _buildTipItem('Cherry Tomato', 'The cherry tomato is a type of small round...'),
        // Add more fruit items here
      ],
    );
  }

  Widget _buildVegetablesList() {
    return ListView(
      children: [
        _buildTipItem('Bak Choy', 'Bok choy, pak choi is a type of Chinese cabbage...'),
        // Add more vegetable items here
      ],
    );
  }

  Widget _buildBeefsList() {
    return ListView(
      children: [
        _buildTipItem('Ground Beef', 'Ground beef, minced beef or beef mince is...'),
        // Add more beef items here
      ],
    );
  }

  Widget _buildOthersList() {
    return ListView(
      children: [
        _buildTipItem('Other Item', 'Description for other items...'),
        // Add more items here
      ],
    );
  }

  Widget _buildTipItem(String title, String description) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF1B4A38),
        ),
      ),
      subtitle: Text(
        description,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0xFF1B4A38),
        ),
      ),
      // You can add more details or an onTap function here
    );
  }
}