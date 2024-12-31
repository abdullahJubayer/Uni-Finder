import 'dart:math';

import 'package:edu_matchup/core/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/app_themes.dart';
import '../../../core/utils/random/alamat_random_util.dart';
import '../../../core/utils/random/price_room_util.dart';
import '../../../core/utils/random/room_image_util.dart';


class BookmarkView extends StatefulWidget {
  const BookmarkView({super.key});

  @override
  State<BookmarkView> createState() => _BookmarkViewState();
}

class _BookmarkViewState extends State<BookmarkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('University'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: const Badge(
                label: Text("2"),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 45,
              child: SearchBar(
                textStyle: MaterialStatePropertyAll(
                  appFont(context).bodySmall,
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20,
                  ),
                ),
                hintText: "Find University...",
                leading: Icon(
                  Icons.search,
                  color: appColor(context).useScheme.primary,
                  size: 20,
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          for (var i = 0; i < 5; i++)
            IntrinsicHeight(
              child: Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                color:
                appColor(context).useScheme.inversePrimary.withOpacity(0.2),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              color: appColor(context).useScheme.primary,
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              child: FadeInImage(
                                image: NetworkImage(
                                  AppImages.university,
                                ),
                                placeholder: const AssetImage(
                                  "assets/images/peace.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(
                              10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "The University of Sheffield",
                                  style: appFont(context).bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Sheffield, United Kingdom",
                                  style: appFont(context).bodySmall?.copyWith(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned.fill(
                      child: Material(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                          },
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
