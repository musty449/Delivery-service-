import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';





class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.track_changes,
            size: 100,
            color: Colors.orange,
          ),
          SizedBox(height: 20,),
          Text('Track Your Order',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text('Enter your order ID to track its status',
      textAlign: TextAlign.center,
      ),
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Order ID',
            border: OutlineInputBorder(), 
          ),
        ),
        ),
        ],
      ),
    );
  }
}

Future<void> createOrder(Map<String, dynamic> orderData) async {
  try {
    await FirebaseFirestore.instance.collection('orders').add(orderData);
    print('Order created successfully');
  } catch (e) {
    print('Error creating order: $e');
  }
}