import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:yesheis/core/constans/response_constans.dart';
import 'package:yesheis/core/models/book/book_model.dart';
import 'package:yesheis/core/models/database/database_model.dart';
import 'package:yesheis/core/models/passage/header/headers_model.dart';
import 'package:yesheis/core/models/passage/verse/verses_model.dart';
import 'package:yesheis/core/services/api/api_service.dart';
import 'package:yesheis/core/services/db/database_service.dart';
import 'package:yesheis/styles/style_app.dart';

class HomeController extends GetxController {
  final apiService = Get.put(ApiService());
  RxBool isLoading = false.obs;
  RxList<BookModel> bookModelList = <BookModel>[].obs;
  RxList<int> chapterList = <int>[].obs;
  int verse = 1;
  String abbr = "kej";
  Rx<HeadersModel> headerModel = HeadersModel().obs;
  RxString verseSelected = "".obs;
  RxString abbrSelected = "".obs;
  String idDatabase = "";
  RxBool isPlaying = false.obs;
  FlutterTts flutterTts = FlutterTts();
  RxBool isVerseSaved = false.obs;
  RxBool isLoadingLoadSavedVerse = false.obs;
  RxList<DatabaseModel> databaseModelList = <DatabaseModel>[].obs;
  late DatabaseService databaseService;

  @override
  void onInit() async {
    super.onInit();
    await _initialize();
  }

  // Metode async terpisah
  Future<void> _initialize() async {
    await getBook();
    await getChapter("kej", 1);
    databaseService = Get.find<DatabaseService>();
    await databaseService.database;
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

  Future<void> getVerseSaved() async {
    isLoadingLoadSavedVerse.value = true;
    databaseModelList.clear();

    try {
      final databaseList = await databaseService.getVerseSaved();
      if (databaseList.isNotEmpty) {
        databaseModelList.addAll(databaseList);
      }
      isLoadingLoadSavedVerse.value = false;
      print(databaseModelList.toString());

      return;
    } catch (e) {
      isLoadingLoadSavedVerse.value = false;

      Get.snackbar("Gagal", "Ooops,Terjadi kesalahan");
      print(e.toString());
      return;
    }
  }

  void resetState() {
    if (isPlaying.value) {
      voiceStop();
    }

    verseSelected.value = "";
    abbrSelected.value = "";
    isPlaying.value = false;
    isVerseSaved.value = false;
  }

  void voiceSpeak() async {
    await flutterTts.setLanguage("id-ID");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(verseSelected.value);
    isPlaying.value = true;
  }

  void voiceStop() async {
    await flutterTts.pause();

    isPlaying.value = false;
  }

  void validateDataSavedVerse() {
    if (idDatabase.isEmpty ||
        idDatabase == "" ||
        abbrSelected.value.isEmpty ||
        abbrSelected.value == "" ||
        verseSelected.value.isEmpty ||
        verseSelected.value == "") {
      print(idDatabase);
      print(abbrSelected.value);
      print(verseSelected.value);
      Get.snackbar("Gagal", "Oops, pilih ayat terlebih dahulu");
      return;
    }
    DatabaseModel databaseModel = DatabaseModel(
        id: idDatabase,
        abbr_verse: abbrSelected.value,
        text: verseSelected.value);
    saveVerse(databaseModel);
  }

  Future<void> saveVerse(DatabaseModel databaseModel) async {
    try {
      await databaseService.insertVerse(databaseModel);
      isVerseSaved.value = true;

      Get.snackbar("Berhasil", "Yeay ayat berhasil disimpan",
          backgroundColor: StyleApp.primary, colorText: StyleApp.white);
      return;
    } catch (e) {
      Get.snackbar("Error", "Yahh, gagal menyimpan ayat");
      print(e.toString());
      return;
    }
  }

  void setVerseSelected(String val) {
    verseSelected.value = val;
  }

  Future<void> removeVerseSaved(String id, int position) async {
    try {
      await databaseService.deleteSavedVerse(id);
      databaseModelList.removeAt(position);
    } catch (e) {
      Get.snackbar("Error", "Yah, gagal menghapus ayat");
      return;
    }
  }

  void setChapterList(int val) {
    chapterList.clear();
    for (int i = 1; i <= val; i++) {
      chapterList.add(i);
    }
  }
}
