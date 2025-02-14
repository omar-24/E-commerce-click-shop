import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/images.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favorites = [
      {
        'image': AppImages.DressImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.DressImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.DressImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.DressImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(item['image']!,
                    width: 60, height: 60, fit: BoxFit.cover),
              ),
              title: Text(
                item['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['description']!),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(item['rating']!),
                    ],
                  ),
                ],
              ),
              trailing: Icon(Icons.favorite, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
