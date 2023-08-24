// import 'package:flutter/material.dart';
// import 'package:flutter_get_on_net_task/presentation/resources/assets_manager.dart';
// import 'package:flutter_get_on_net_task/presentation/resources/color_manager.dart';
// import 'package:flutter_get_on_net_task/presentation/resources/values_manager.dart';
// import 'package:flutter_get_on_net_task/presentation/ui/onboard/model/model.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
//
// class PageIndicator extends StatelessWidget {
//   final SliderViewObject sliderViewObject;
//   final GestureTapCallback onPreviousTap;
//   final GestureTapCallback onNextTap;
//
//   const PageIndicator({Key? key , required this.sliderViewObject, required this.onPreviousTap,required this.onNextTap }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(child: Container(
//       color: ColorManager.primary,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // left arrow
//           Padding(
//             padding:  EdgeInsets.all(AppPadding.p14),
//             child: GestureDetector(
//               onTap:onPreviousTap,
//               child: SizedBox(
//                 height: AppSize.s20,
//                 width: AppSize.s20,
//                 child: SvgPicture.asset(ImageAssets.leftArrowIc),
//               ),
//             ),
//           ),
//
//           // circles indicator
//           Row(
//             children: [
//               for (int i = 0; i < sliderViewObject.numOfSlides; i++)
//                 Padding(
//                   padding: const EdgeInsets.all(AppPadding.p8),
//                   child: _getProperCircle(i, sliderViewObject.currentIndex),
//                 )
//             ],
//           ),
//
//           // right arrow
//           Padding(
//             padding: const EdgeInsets.all(AppPadding.p14),
//             child: GestureDetector(
//                 onTap: onNextTap,
//                 child: SizedBox(
//                   height: AppSize.s20,
//                   width: AppSize.s20,
//                   child: SvgPicture.asset(ImageAssets.rightArrowIc),
//                 )
//             ),
//           )
//         ],
//       ),
//     ));
//   }
//
//   Widget _getProperCircle(int index, int currentIndex) {
//     if (index == currentIndex) {
//       return SvgPicture.asset(ImageAssets.hollowCircleIc); // selected slider
//     } else {
//       return SvgPicture.asset(ImageAssets.solidCircleIc); // unselected slider
//     }
//   }
// }