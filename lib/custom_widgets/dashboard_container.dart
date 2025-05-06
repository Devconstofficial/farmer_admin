import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';

class DashboardContainer extends StatefulWidget {
  final double? height;
  final double? width;
  final String? title;
  final String? totalNumber;
  final String? totalPer;
  final String? percent;
  final String icon;
  final Color? color;
  final bool? showIcon;
  final bool? showArrow;

  DashboardContainer({
    super.key,
    this.width,
    this.height,
    this.title,
    this.icon = '',
    this.percent,
    this.totalNumber,
    this.totalPer,
    this.showIcon = false,
    this.showArrow = false,
    this.color,
  });

  @override
  State<DashboardContainer> createState() => _DashboardContainerState();
}

class _DashboardContainerState extends State<DashboardContainer> {
  bool _isTitleHovered = false;
  bool _isRowHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: AppStyles.customBorder16,
          color: widget.color,
        ),
        child: Padding(
          padding: EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MouseRegion(
                onEnter: (_) {
                  if(mounted) {
                    setState(() {
                    _isTitleHovered = true;
                  });
                  }
                },
                onExit: (_) {
                  if(mounted) {
                    setState(() {
                    _isTitleHovered = false;
                  });
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _isTitleHovered
                        ? kBlackTextColor.withOpacity(0.06 )
                        : widget.color,
                    borderRadius: AppStyles.customBorder16,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title ?? '',
                          style: AppStyles.whiteTextStyle().copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if(widget.showIcon == true)
                        CircleAvatar(
                          backgroundColor: kWhiteColor,
                          radius: 16,
                          child: Center(child: SvgPicture.asset(widget.icon,height: 18,width: 18,)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              MouseRegion(
                onEnter: (_) {
                  if(mounted) {
                    setState(() {
                    _isRowHovered = true;
                  });
                  }
                },
                onExit: (_) {
                  if(mounted) {
                    setState(() {
                    _isRowHovered = false;
                  });
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _isRowHovered
                        ? kBlackTextColor.withOpacity(0.06)
                        : widget.color,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.totalNumber ?? '',
                          style: AppStyles.whiteTextStyle().copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        if(widget.showArrow == true) ...[
                          Text(
                            widget.totalPer ?? '',
                            style: AppStyles.whiteTextStyle().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Image.asset(kArrowIcon,height: 13,width: 13,)
                        ]
                        ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}