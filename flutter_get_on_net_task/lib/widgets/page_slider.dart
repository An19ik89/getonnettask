// import 'package:flutter/material.dart';
// import 'package:flutter_get_on_net_task/domain/model/model.dart';
// import 'package:flutter_get_on_net_task/presentation/resources/values_manager.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
//
// class PageSlider extends StatelessWidget {
//   final SliderObject sliderObject;
//
//   const PageSlider( {Key? key,required this.sliderObject}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         const SizedBox(height: AppSize.s40),
//         Padding(
//           padding: const EdgeInsets.all(AppPadding.p8),
//           child: Text(
//             sliderObject.title,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.displayLarge,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(AppPadding.p8),
//           child: Text(
//             sliderObject.subTitle,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.titleMedium,
//           ),
//         ),
//         const SizedBox(height: AppSize.s60,),
//         SvgPicture.asset(
//           sliderObject.image,
//           height: 160,
//           width: 160,
//         )
//         // image widget
//       ],
//     );
//   }
// }