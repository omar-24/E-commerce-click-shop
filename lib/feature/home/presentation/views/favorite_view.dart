import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/assets/images.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favorites = [
      {
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
      {
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },{
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      }, {
        'image': AppImages.JacketImages,
        'title': 'Pistachio Kunafa Strawberry',
        'description':
            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
        'rating': '4.8',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorites',style: AppFonts.AppBarTitle,),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.only(bottom: 13),
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(20)),
                    child: Image.asset(
                      AppImages.JacketImages,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pistachio Kunafa Strawberry',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Delectus nam rem. Adipisci voluptatem aut aut magni ut optio quaerat sit.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber, size: 16),
                                  SizedBox(width: 4),
                                  Text(item['rating']!),
                                ],
                              ),
                              Icon(Icons.favorite, color: Colors.red),
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
        },
      ),
    );
  }
}
