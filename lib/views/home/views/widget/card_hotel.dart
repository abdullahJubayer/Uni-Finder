import 'package:flutter/material.dart';

import '../../../../core/themes/app_themes.dart';
import '../../../../core/utils/random/alamat_random_util.dart';
import '../../../../core/utils/random/price_room_util.dart';
import '../../../../core/utils/random/room_image_util.dart';

class CardHotel extends StatelessWidget {
  const CardHotel({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        IntrinsicHeight(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
            color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: size.width / 1.8,
                        height: size.width / 3,
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
                            image: NetworkImage("https://lh3.googleusercontent.com/p/AF1QipPfuCLQ_CdMvgljNMCbnrn0RX_UgRnxP87-ftzz=s1360-w1360-h1020"),
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
                              style: appFont(context).bodySmall?.copyWith(),
                            ),
                            Text(
                              "Sheffield, United Kingdom",
                              style: appFont(context).bodySmall?.copyWith(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                getKotaFromAlamatUtil(
                                  randomAlamatUtil(),
                                ),
                                style: appFont(context).labelSmall?.copyWith(),
                              ),
                            )
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
    );
  }
}
