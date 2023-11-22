import 'package:hilmeezy_mobile/models/product.dart';
import 'package:hilmeezy_mobile/widgets/detail_attribute.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        backgroundColor: const Color.fromARGB(255, 41, 162, 255),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 30, top:10),
                        child: Text(
                          data.fields.name,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  DetailAttribute(name: 'Amount', value: '${data.fields.amount}'),
                  DetailAttribute(name: 'Description', value: data.fields.description),
                  DetailAttribute(name: 'Genre', value: data.fields.genre),
                  DetailAttribute(name: 'Price', value: '${data.fields.price}'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
              ),
              child: const Text(
                'Back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}