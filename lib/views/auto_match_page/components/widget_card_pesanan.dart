import 'package:edu_matchup/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import '../../../core/themes/app_themes.dart';

class WidgetCardPesanan extends StatelessWidget {
  const WidgetCardPesanan({super.key, required this.isWait});
  final bool isWait;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: FadeInImage(
                              image: NetworkImage(AppImages.university),
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
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("The University of Sheffield",
                                style: appFont(context).labelSmall?.copyWith(),
                              ),
                              Text(
                                "Sheffield, United Kingdom",
                                style: appFont(context).labelSmall?.copyWith(),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.date_range_outlined,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Bachelor",
                                    style: appFont(context)
                                        .labelSmall
                                        ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              if (isWait)
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.history_rounded,
                                      size: 15,
                                      color: appColor(context).useScheme.error,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Your profile dose not match",
                                      style:
                                          appFont(context).labelSmall?.copyWith(
                                                color: appColor(context)
                                                    .useScheme
                                                    .error,
                                              ),
                                    ),
                                  ],
                                )
                              else
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.done_all_rounded,
                                      size: 15,
                                      color:
                                          appColor(context).useScheme.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Your profile matched",
                                      style:
                                          appFont(context).labelSmall?.copyWith(
                                                color: appColor(context)
                                                    .useScheme
                                                    .primary,
                                              ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: appColor(context).useScheme.primaryContainer,
                      borderRadius: const BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10),
                      )),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 20,
                            color: appColor(context).useScheme.primary,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Starting From",
                                    style:
                                        appFont(context).labelSmall?.copyWith(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "26 Jan 14:00",
                                      style: appFont(context)
                                          .labelSmall
                                          ?.copyWith(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                            color: appColor(context).useScheme.primary,
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ends",
                                    style:
                                        appFont(context).labelSmall?.copyWith(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "30 Feb 12:00",
                                      style: appFont(context)
                                          .labelSmall
                                          ?.copyWith(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "80% Possibilities",
                        style: appFont(context).labelSmall?.copyWith(
                              color: appColor(context).useScheme.inverseSurface,
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
