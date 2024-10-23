import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title ;
  final String caption;
  final String imageUrl;

  SlidesInfo({required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlidesInfo>[
  SlidesInfo(title: 'Busca la comida', caption: 'Minim elit elit occaecat sint enim non esse labore cillum consectetur veniam culpa velit.', imageUrl: 'assets/Images/1.png'),
  SlidesInfo(title: 'Entrega Rapida', caption: 'Minim elit elit occaecat sint enim non esse labore cillum consectetur veniam culpa velit.', imageUrl: 'assets/Images/2.png'),
  SlidesInfo(title: 'Disfruta la comida', caption: 'Minim elit elit occaecat sint enim non esse labore cillum consectetur veniam culpa velit.', imageUrl: 'assets/Images/3.png'),
];



class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: 
              slides.map(
                (slidesData)=>_Slide(
                  title: slidesData.title, 
                  caption: slidesData.caption, 
                  imageUrl: slidesData.imageUrl
                  )
              ).toList()
            
          ),

          Positioned(
            right: 20,
            top: 50,
            child: 
            TextButton(
              onPressed: ()=> context.pop(), 
              child: const Text('Salir')
              )
              )
        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {
  final String title ;
  final String caption;
  final String imageUrl;

  const _Slide({
    super.key, 
    required this.title, 
    required this.caption, 
    required this.imageUrl});
  
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),
      );
  }
}