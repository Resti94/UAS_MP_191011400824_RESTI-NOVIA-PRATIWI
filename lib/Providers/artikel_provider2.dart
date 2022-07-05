import 'package:artikel_berita/Models/artikel_model.dart';
import 'package:artikel_berita/Services/artikel_services.dart';
import 'package:flutter/foundation.dart';

class ArticleProider2 extends ChangeNotifier {
  ArticleService _ArticleService = ArticleService();
  ArticleModel model = ArticleModel();

  tampilkanDetailArtikel({String? key}) async {
    model = await _ArticleService.detailArtikel(key: key);
    notifyListeners();
  }

  ArticleProider2({String? key}) {
    tampilkanDetailArtikel(key: key);
  }
}
