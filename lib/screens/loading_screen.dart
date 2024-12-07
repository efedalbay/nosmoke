import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/routes/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
            child: Column(
              children: [
                Expanded(
                // Logo bölümü
                  child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                  ),
                ),


                // const CircularProgressIndicator(),

                 InkWell(
                  onTap: () => context.go("/home"),
                   child: SizedBox(
                     width: 300,
                     child: DotLottieLoader.fromAsset("assets/motions/loading.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                                     if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                                     } else {
                      return Container();
                                     }
                                   }
                                   ),
                   ),
                 ),


                const SizedBox(height: 20),
             
              ],
            ),
          ),
      );
  }
}
