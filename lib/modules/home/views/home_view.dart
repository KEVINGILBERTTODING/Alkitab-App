import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yesheis/core/constans/constans.dart';
import 'package:yesheis/modules/home/controllers/home_controller.dart';
import 'package:yesheis/modules/home/widget/verse_shimmer.dart';
import 'package:yesheis/styles/style_app.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: StyleApp.white,
      body: Obx(
        () => SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    Constans.APPNAME,
                    style: StyleApp.styleBold(20.sp, StyleApp.black),
                  ),
                  subtitle: Text(
                    Constans.TXT_SUBTITLE_HEADER,
                    style: StyleApp.styleMed(11.sp, StyleApp.black),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Get.bottomSheet(searchBottomSheet(controller));
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(StyleApp.primary),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await controller.getVerseSaved();
                        Get.bottomSheet(
                          Container(
                            decoration: BoxDecoration(
                              color: StyleApp.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.w),
                                topRight: Radius.circular(20.w),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.w),
                                      child: Container(
                                        width: 50.w,
                                        height: 6.h,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100]),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Ayat Tersimpan ✨",
                                    style: StyleApp.styleBold(
                                        18.sp, StyleApp.black),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Obx(
                                    () => Expanded(
                                      child: controller
                                              .databaseModelList.isEmpty
                                          ? Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Tidak ada data",
                                                    style: StyleApp.styleBold(
                                                        15.sp, StyleApp.black),
                                                  ),
                                                  Text(
                                                    "Belum ada ayat yang kamu simpan nihh..",
                                                    style: StyleApp.styleReg(
                                                        13.sp, StyleApp.black),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : ListView.builder(
                                              padding: EdgeInsets.zero,
                                              itemCount: controller
                                                  .databaseModelList.length,
                                              itemBuilder: (context, index) {
                                                final databaseList = controller
                                                    .databaseModelList[index];
                                                return ListTile(
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  title: Text(
                                                    databaseList.abbr_verse
                                                        .toString(),
                                                    style: StyleApp.styleMed(
                                                        15.sp, StyleApp.black),
                                                  ),
                                                  subtitle: Text(
                                                    databaseList.text!
                                                        .toString(),
                                                    style: StyleApp.styleReg(
                                                        15.sp, StyleApp.black),
                                                  ),
                                                  trailing: Expanded(
                                                      child: IconButton(
                                                    onPressed: () async {
                                                      final idVerse =
                                                          databaseList.id!;
                                                      await controller
                                                          .removeVerseSaved(
                                                              idVerse, index);
                                                    },
                                                    icon: Icon(
                                                      Icons.bookmark_outlined,
                                                      color: StyleApp.primary,
                                                    ),
                                                  )),
                                                );
                                              },
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: StyleApp.light_black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: StyleApp.light_black,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                controller.isLoading.value
                    ? shimmer()
                    : Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 90.h,
                                decoration: BoxDecoration(
                                    color: StyleApp.banner,
                                    borderRadius: BorderRadius.circular(20.w)),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      width: double.infinity,
                                      'assets/img/banner.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ListTile(
                                        title: Text(
                                          controller.getTimeOfDay(),
                                          style: TextStyle(
                                              fontFamily: 'rbbold',
                                              fontSize: 15.sp,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          'Jangan lupa baca Alkitab\nhari ini yaaa!',
                                          style: TextStyle(
                                              fontFamily: 'rbmed',
                                              fontSize: 12.sp,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 18.h,
                              ),
                              Text(
                                controller.headerModel.value.bible?.title ?? '',
                                style:
                                    StyleApp.styleBold(20.sp, StyleApp.primary),
                              ),
                              ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.headerModel.value.bible
                                    ?.book?.chapter?.verses?.length,
                                itemBuilder: (context, index) {
                                  final versesList = controller.headerModel
                                          .value.bible?.book?.chapter?.verses ??
                                      [];
                                  if (!versesList.isEmpty) {
                                    return Padding(
                                      padding: EdgeInsets.only(top: 8.h),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          versesList[index].title != null
                                              ? Text(
                                                  versesList[index].title!,
                                                  style: StyleApp.styleBold(
                                                      17.sp, StyleApp.black),
                                                )
                                              : Container(),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              if (versesList[index].text !=
                                                  null) {
                                                final abbrVerseSelected =
                                                    '${controller.headerModel.value.bible?.book?.name.toString()} ${controller.verse} : ${controller.headerModel.value.bible?.book?.chapter?.verses?[index].number}';
                                                final idDbGenerate =
                                                    '${controller.headerModel.value.bible?.book?.book_id!}-${controller.verse}-${controller.headerModel.value.bible?.book?.chapter?.verses?[index].number}';
                                                controller.verseSelected.value =
                                                    versesList[index].text!;
                                                controller.abbrSelected.value =
                                                    abbrVerseSelected;

                                                controller.idDatabase =
                                                    idDbGenerate.toString();

                                                Get.bottomSheet(
                                                        bottomSheetVerse(
                                                            controller))
                                                    .whenComplete(() {
                                                  controller.resetState();
                                                });
                                              }
                                            },
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          '${versesList[index].number} ',
                                                      style: StyleApp.styleBold(
                                                          10.sp,
                                                          StyleApp.primary)),
                                                  TextSpan(
                                                      text: versesList[index]
                                                          .text,
                                                      style: StyleApp.styleReg(
                                                          16.sp,
                                                          StyleApp.black)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container bottomSheetVerse(HomeController controller) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: StyleApp.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Container(
                    width: 50.w,
                    height: 6.h,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        controller.validateDataSavedVerse();
                      },
                      icon: Icon(
                        controller.isVerseSaved.value
                            ? Icons.check
                            : Icons.bookmark_add_outlined,
                        color: StyleApp.black,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(StyleApp.banner),
                      ),
                    ),
                  ),
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        if (controller.isPlaying.value != true) {
                          controller.voiceSpeak();
                        } else {
                          controller.voiceStop();
                        }
                      },
                      icon: Icon(
                        controller.isPlaying.value
                            ? Icons.stop
                            : Icons.play_arrow_outlined,
                        color: StyleApp.white,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(StyleApp.primary),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                controller.abbrSelected.toString(),
                style: StyleApp.styleMed(
                  18.sp,
                  StyleApp.black,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                controller.verseSelected.value.toString(),
                style: StyleApp.styleReg(
                  16.sp,
                  StyleApp.black,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  ClipRRect searchBottomSheet(HomeController controller) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.w),
        topRight: Radius.circular(20.w),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Container(
                    width: 50.w,
                    height: 6.h,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              DropdownSearch<String>(
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    baseStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'rbmed',
                      fontSize: 12.sp,
                    ),
                    dropdownSearchDecoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'rbmed',
                        fontSize: 12.sp,
                      ),
                      labelText: "Pilih Kitab",
                      labelStyle: TextStyle(
                          fontFamily: 'rbmed',
                          fontSize: 12.sp,
                          color: Colors.black),
                      hintText: "Temukan atau pilih kitab",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Menambahkan border radius pada spinner
                      ),
                    ),
                  ),
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    searchFieldProps: TextFieldProps(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'rbmed',
                        fontSize: 12.sp,
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'rbmed',
                          fontSize: 12.sp,
                        ),
                        hintText: 'Kitab',
                        hintStyle:
                            TextStyle(fontFamily: 'rbmed', fontSize: 12.sp),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Cari kitab',
                      ),
                    ),
                    showSelectedItems: true,
                    menuProps: MenuProps(
                      shape: RoundedRectangleBorder(
                        // Menambahkan border radius pada menu
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  itemAsString: (String id) {
                    final listBook = controller.bookModelList.value;
                    final categoryName =
                        listBook.where((item) => item.id == int.parse(id));

                    return categoryName.first.name!;
                  },
                  items: controller.bookModelList.value
                      .map((item) => item.id.toString())
                      .toList(),
                  onChanged: (value) {
                    final dataBook = controller.bookModelList.value;
                    final abbr = dataBook
                        .where((item) => item.id == int.parse(value!))
                        .first
                        .abbr!;
                    final chapter = dataBook
                        .where((item) => item.id == int.parse(value!))
                        .first
                        .chapter;

                    controller.abbr = abbr;

                    controller.setChapterList(chapter!);

                    print(abbr);
                    print(chapter);
                    print(controller.chapterList.toString());

                    // controller.countDiscount();
                    // controller.memberId.value = int.parse(value!);
                  }),
              SizedBox(height: 20.h),
              Obx(
                () => DropdownSearch<String>(
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      baseStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'rbmed',
                        fontSize: 12.sp,
                      ),
                      dropdownSearchDecoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'rbmed',
                          fontSize: 12.sp,
                        ),
                        labelText: "Pilih Pasal",
                        labelStyle: TextStyle(
                            fontFamily: 'rbmed',
                            fontSize: 12.sp,
                            color: Colors.black),
                        hintText: "Temukan atau pilih pasal",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              12), // Menambahkan border radius pada spinner
                        ),
                      ),
                    ),
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: TextFieldProps(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'rbmed',
                          fontSize: 12.sp,
                        ),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'rbmed',
                            fontSize: 12.sp,
                          ),
                          hintText: 'Ayat',
                          hintStyle:
                              TextStyle(fontFamily: 'rbmed', fontSize: 12.sp),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Cari pasal',
                        ),
                      ),
                      showSelectedItems: true,
                      menuProps: MenuProps(
                        shape: RoundedRectangleBorder(
                          // Menambahkan border radius pada menu
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                    items: controller.chapterList.value
                        .map((item) => item.toString())
                        .toList(),
                    onChanged: (value) {
                      controller.verse = int.parse(value!);
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () async {
                  if (controller.abbr == "") {
                    Get.snackbar("Error", "Kitab tidak ditemukan",
                        backgroundColor: Colors.red[50],
                        colorText: Colors.black);
                    return;
                  }

                  if (controller.verse == 0) {
                    Get.snackbar("Error", "Pasal tidak ditemukan",
                        backgroundColor: Colors.red[50],
                        colorText: Colors.black);
                    return;
                  }

                  if (Get.isBottomSheetOpen == true) {
                    Get.back();
                  }

                  print('abbr: ${controller.abbr}, verse: ${controller.verse}');

                  await controller.getChapter(
                      controller.abbr, controller.verse);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(StyleApp.primary),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: Text(
                    "Cari",
                    style: TextStyle(
                      fontFamily: "rbbold",
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class shimmer extends StatelessWidget {
  const shimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          VerseShimmer(),
          SizedBox(
            height: 20,
          ),
          VerseShimmer(),
          SizedBox(
            height: 20,
          ),
          VerseShimmer(),
          SizedBox(
            height: 20,
          ),
          VerseShimmer(),
          SizedBox(
            height: 20,
          ),
          VerseShimmer(),
          SizedBox(
            height: 20,
          ),
          VerseShimmer(),
        ],
      ),
    ));
  }
}
