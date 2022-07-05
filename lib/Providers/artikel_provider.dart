import 'package:artikel_berita/Models/artikel_model.dart';
import 'package:artikel_berita/Services/artikel_services.dart';
import 'package:flutter/foundation.dart';

class ArticleProider extends ChangeNotifier {
  ArticleService _ArticleService = ArticleService();
  ArticleModel model = ArticleModel();

  tampilkanSemuaArtikel() async {
    model = await _ArticleService.getArtikel();
    notifyListeners();
  }

  tampilkanDetailArtikel({String? key}) async {
    model = await _ArticleService.detailArtikel(key: key);
    notifyListeners();
  }

  ArticleProider() {
    tampilkanSemuaArtikel();
  }
}
