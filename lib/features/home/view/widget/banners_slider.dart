import 'package:bialjumla/core/design/app_styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/design/fun_widgets.dart';

class BannersSlider extends StatefulWidget {
  const BannersSlider({super.key, this.height, required this.images, this.rad});
  final double? height,rad;
  final List images;

  @override
  State<BannersSlider> createState() => _BannersSliderState();
}

class _BannersSliderState extends State<BannersSlider> {
  int pointer = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.images.length,
          itemBuilder: (context, index, realIndex) {
            return cachedImage(widget.images[index],height: widget.height??140.h,boxFit: BoxFit.cover,rad: widget.rad??14.r);
          },
          options: CarouselOptions(
              viewportFraction: 1,
              height: widget.height??140.h,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayCurve: Curves.easeInOutCubic,
              reverse: true,
              onPageChanged: (x, _) {
                setState(() => pointer = x);
              }),
        ),
        if(widget.images != null)Positioned(
          bottom: 10.h,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // color: Colors.white
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 4),
              child: AnimatedSmoothIndicator(
                activeIndex: pointer,
                count: widget.images.length,
                effect: WormEffect(dotHeight: 10.sp,dotWidth: 10.sp,spacing: 12.w,activeDotColor: Styles.primary,strokeWidth: 0,paintStyle: PaintingStyle.fill,dotColor: Colors.black12),
              ),
            ),
          ).animate().fade(duration: const Duration(milliseconds: 400)),
        )
      ],
    );
  }
}
