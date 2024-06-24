import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:yesheis/core/constans/response_constans.dart';
import 'package:yesheis/core/models/book/book_model.dart';
import 'package:yesheis/core/models/passage/header/headers_model.dart';
import 'package:yesheis/core/models/passage/verse/verses_model.dart';
import 'package:yesheis/core/services/api/api_service.dart';
import 'package:yesheis/styles/style_app.dart';

class HomeController extends GetxController {
  final apiService = Get.put(ApiService());
  RxBool isLoading = false.obs;
  RxList<BookModel> bookModelList = <BookModel>[].obs;
  RxList<int> chapterList = <int>[].obs;
  int verse = 0;
  String abbr = "";
  Rx<HeadersModel> headerModel = HeadersModel().obs;

  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  // Metode async terpisah
  Future<void> _initialize() async {
    await getBook();
    await getChapter("kej", 1);
  }

  Future<void> getBook() async {
    bookModelList.clear();

    final dataBook = await apiService.getBook();

    if (dataBook.state == ResponseConstans.success_state) {
      bookModelList.addAll(dataBook.data);

      return;
    } else {
      Get.snackbar("Notifikasi", dataBook.message ?? "Terjadi kesalahan",
          backgroundColor: Colors.red[50], colorText: StyleApp.black);
    }
  }

  Future<void> getChapter(String abbr, int verse) async {
    isLoading.value = true;
    final responseApi = await apiService.getChapter(abbr, verse);
    isLoading.value = false;

    if (responseApi.state == ResponseConstans.success_message) {
      headerModel.value = HeadersModel();
      headerModel.value = responseApi.data;
      print(headerModel.toString());
    } else {
      Get.snackbar("Notifikasi", responseApi.message ?? "Terjadi kesalahan",
          backgroundColor: Colors.red[50], colorText: StyleApp.black);
    }
  }

  String getTimeOfDay() {
    // Dapatkan waktu saat ini
    var now = DateTime.now();
    // Format waktu untuk mendapatkan jam saja
    var formatter = DateFormat('HH');
    String formatted = formatter.format(now);
    int hour = int.parse(formatted);

    // Tentukan waktu berdasarkan jam
    if (hour >= 5 && hour < 12) {
      return 'Selamat Pagi ☀️,';
    } else if (hour >= 12 && hour < 15) {
      return 'Selamat Siang 🌞,';
    } else if (hour >= 15 && hour < 18) {
      return 'Selamat Sore ⛅,';
    } else {
      return 'Selamat Malam 🌙,';
    }
  }

  void setChapterList(int val) {
    chapterList.clear();
    for (int i = 1; i <= val; i++) {
      chapterList.add(i);
    }
  }
}
