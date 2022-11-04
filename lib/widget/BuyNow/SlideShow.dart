import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShow extends StatefulWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  State<SlideShow> createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {

  List slide_show = [

    {
      "img":
      "https://m.media-amazon.com/images/I/41Mf+qnqkfL.jpg"
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToP6BoxU3sIJwkNm0QgaMqRx_l8CzKBH5NRCobmxk-Vd8f1IB4QYgB6bM-70ohs4s2Eog&usqp=CAU"
    },
    {
      "img":
      "https://m.media-amazon.com/images/I/71tT8J5cKuL.jpg"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4CEafqnm0eux1souNBV8w-ORxXGR9MiPtpUDMGIn-tKuozpQ2TEjs1sedvVWQrU8owrU&usqp=CAU"
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 2,
      child: ImageSlideshow(
          width: double.infinity,
          height: height / 2,
          initialPage: 0,
          indicatorColor: Colors.black,
          indicatorBackgroundColor: Colors.grey,
          //autoPlayInterval: 3000,
          isLoop: true,
          children: List.generate(slide_show.length, (index) {
            return Image.network(slide_show[index]["img"]);
          })),
    );
  }
}
