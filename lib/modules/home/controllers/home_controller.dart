import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:yesheis/core/constans/response_constans.dart';
import 'package:yesheis/core/models/book/book_model.dart';
import 'package:yesheis/core/services/api/api_service.dart';

class HomeController extends GetxController {
  final apiService = Get.put(ApiService());
  RxBool isLoading = false.obs;
  RxList<BookModel> bookModelList = <BookModel>[].obs;
  RxList<int> chapterList = <int>[].obs;



  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  // Metode async terpisah
  Future<void> _initialize() async {
    print('sdsd');
    await getBook();
  }

  Future<void> getBook() async {
    print('get data');
    bookModelList.clear();

    isLoading.value = true;
    final dataBook = await apiService.getBook();
    isLoading.value = false;
    if (dataBook.state == ResponseConstans.success_state) {
      bookModelList.addAll(dataBook.data);

      return;
    } else {
      Get.snackbar("Notifikasi", dataBook.message ?? "Terjadi kesalahan");
    }
  }

  String getTimeOfDay() {
    // Dapatkan waktu saat ini
    var now = DateTime.now();
    // Format waktu untuk mendapatkan jam saja
    var formatter = DateFormat('HH');
    String formatted = formatter.format(now);
    int hour = int.parse(formatted);
    print(formatted);

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
    for(int i = 1; i <= val; i++) {
      chapterList.add(i);
    }
  } 
}
