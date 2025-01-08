import 'package:flutter/material.dart';
import '../../core/models/department.dart';

class DetailScreen extends StatelessWidget {
  final Department department;

  const DetailScreen({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(department.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                department.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {

                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    department.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    department.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}