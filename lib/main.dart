import 'package:flutter/material.dart';

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 70; // Initial bid amount

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Maximum Bid:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$$_currentBid',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              child: Text('Increase Bid by \$50'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MaximumBid(),
  ));
}