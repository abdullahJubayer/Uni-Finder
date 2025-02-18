import 'dart:math';
import 'package:flutter/material.dart';
import '../../core/themes/app_themes.dart';
import '../../core/utils/random/alamat_random_util.dart';
import '../../core/utils/random/price_room_util.dart';
import '../../core/utils/random/room_image_util.dart';
import 'components/widget_card_pesanan.dart';

class MatchUi extends StatefulWidget {
  const MatchUi({super.key});

  @override
  State<MatchUi> createState() => _MatchUiState();
}

class _MatchUiState extends State<MatchUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('Scholarship'),
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
                hintText: "Search Scholarship...",
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
          const WidgetCardPesanan(
            isWait: false,
          ),
          const WidgetCardPesanan(
            isWait: true,
          ),
          const WidgetCardPesanan(
            isWait: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Upcoming Session",
              style: appFont(context).titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  for (var i = 0; i < 5; i++)
                    Row(
                      children: [
                        IntrinsicHeight(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            color: appColor(context)
                                .useScheme
                                .inversePrimary
                                .withOpacity(0.2),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width /
                                            1.8,
                                        height:
                                        MediaQuery.of(context).size.width /
                                            3,
                                        decoration: BoxDecoration(
                                          color: appColor(context)
                                              .useScheme
                                              .primary,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: FadeInImage(
                                            image:
                                            NetworkImage("https://eq47oznpfsr.exactdn.com/wp-content/uploads/2020/07/UCO-BlogHeader-infosessions.jpg?lossy=1&quality=70&ssl=1"),
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "University of Oxford",
                                              style: appFont(context)
                                                  .bodyMedium
                                                  ?.copyWith(),
                                            ),
                                            Text(
                                              "Undergraduate Scholarship",
                                              style: appFont(context)
                                                  .bodySmall
                                                  ?.copyWith(),
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
                          width: 0,
                        ),
                      ],
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton.small(
                    heroTag: Random.secure().nextInt(100).toString(),
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: appColor(context).useScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
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

