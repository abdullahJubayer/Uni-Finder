import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_defaults.dart';
import '../../../../../core/constants/app_icons.dart';

class AutoMatchListTile extends StatelessWidget {
  const AutoMatchListTile({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.googleIcon,width: 50,height: 50,),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Computer Science & Engineering",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Dhaka University",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                    ),Text(
                      "Dhaka, Bangladesh",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black54,fontWeight: FontWeight.w400),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(children: [
                        SvgPicture.asset(AppIcons.profile,width: 16,height: 16,),
                        const SizedBox(width:6),
                        Text(
                          "Your profile matches this university",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.black54,fontWeight: FontWeight.w400),
                        )
                      ],),
                    ),
                    const SizedBox(height: 16,),
                    const Divider(color: Colors.black12,height: 5)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
