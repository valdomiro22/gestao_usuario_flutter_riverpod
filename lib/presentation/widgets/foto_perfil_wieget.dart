import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FotoPerfilWieget extends StatelessWidget {
  final double? tamanho;
  final String imageUrl;

  const FotoPerfilWieget({super.key, required this.imageUrl, this.tamanho = 150});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,

      imageBuilder: (context, imageProvider) => Container(
        width: tamanho,
        height: tamanho,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),

      placeholder: (context, url) => Container(
        width: tamanho,
        height: tamanho,
        alignment: Alignment.center,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        // child: const CircularProgressIndicator(),
        child: Icon(Icons.person, size: 80),
      ),

      errorWidget: (context, url, error) => Container(
        width: tamanho,
        height: tamanho,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: const Icon(Icons.person, size: 50, color: Colors.white),
      ),
    );
  }
}
