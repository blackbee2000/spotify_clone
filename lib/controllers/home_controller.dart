import 'package:get/get.dart';
import 'package:spotify_clone/utils/app_words.dart';

class HomeController extends GetxController {
  final homeMenuListCurrentIndex = 0.obs;
  final menus = [
    AppWords.artists,
    AppWords.album,
    AppWords.podcast,
    AppWords.genre,
  ].obs;
}
