import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern/core/color/colors.dart';
import 'package:intern/core/constants/constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: colorWhite,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: colorWhite,
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ListView(
              children: [
                sizedBox20H,
                const Row(
                  children: [
                    AppBarIconWidget(icon: Icons.align_horizontal_left_rounded),
                    Spacer(),
                    AppBarIconWidget(icon: Icons.forum_outlined),
                    sizedBox10W,
                    AppBarIconWidget(icon: Icons.notifications_outlined)
                  ],
                ),
                sizedBox25H,
                const MainTextWidget(title: 'Hello, Priya!'),
                const SubTextWidget(title: 'What do you wanna learn today?'),
                sizedBox25H,
                const RowOutlineBtnWidget(
                  elevatedBtnTitle1: 'Programs',
                  elevatedBtnIcon1: Icons.book,
                  elevatedBtnTitle2: 'Get help',
                  elevatedBtnIcon2: Icons.help,
                ),
                sizedBox10H,
                const RowOutlineBtnWidget(
                  elevatedBtnTitle1: 'Learn',
                  elevatedBtnIcon1: Icons.menu_book_rounded,
                  elevatedBtnTitle2: 'DD Tracker',
                  elevatedBtnIcon2: Icons.insert_chart_outlined_rounded,
                ),
                sizedBox25H,
                const ListViewTitleWidget(
                  title: 'Programs for you',
                ),
                sizedBox25H,
                SizedBox(
                  height: size.height * 0.45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(prglistFun(size).length, (index) {
                      return Row(
                        children: [prglistFun(size)[index], sizedBox10W],
                      );
                    }),
                  ),
                ),
                const ListViewTitleWidget(title: 'Events and experiences'),
                sizedBox25H,
                SizedBox(
                  height: size.height * 0.48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(eventlistFun(size).length, (index) {
                      return Row(
                        children: [eventlistFun(size)[index], sizedBox10W],
                      );
                    }),
                  ),
                ),
                const ListViewTitleWidget(title: 'Lessons for you'),
                sizedBox25H,
                SizedBox(
                  height: size.height * 0.48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        List.generate(lessonslistFun(size).length, (index) {
                      return Row(
                        children: [lessonslistFun(size)[index], sizedBox10W],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewTitleWidget extends StatelessWidget {
  final String title;
  const ListViewTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainTextWidget(title: title),
        const Spacer(),
        const SubTextWidget(title: 'View all'),
        sizedBox5W,
        const AppBarIconWidget(icon: Icons.east)
      ],
    );
  }
}

List<Widget> prglistFun(Size size) {
  return [
    HorizontalListTileWidget(
      size: size,
      imageUrl: 'assets/images/image.png',
      label: 'Lifestyle',
      lesson: '16 lessons',
      title: 'A complete guide for your new born baby',
    ),
    HorizontalListTileWidget(
      size: size,
      imageUrl: 'assets/images/image2.png',
      label: 'Working Parents',
      lesson: '12 lessons',
      title: 'Understanding of human behaviour',
    ),
  ];
}

List<Widget> eventlistFun(Size size) {
  return [
    HorizontalListTileWidget(
        size: size,
        imageUrl: 'assets/images/yoga.jpeg',
        label: 'Babycare',
        lesson: '3 min',
        title: 'Understanding of human behaviour',
        isBook: true),
    HorizontalListTileWidget(
        size: size,
        imageUrl: 'assets/images/yoga.jpeg',
        label: 'Babycare',
        lesson: '1 min',
        title: 'Understanding of human behaviour',
        isBook: true),
  ];
}

List<Widget> lessonslistFun(Size size) {
  return [
    HorizontalListTileWidget(
        size: size,
        imageUrl: 'assets/images/yoga.jpeg',
        label: 'Babycare',
        lesson: '13 Feb, Sunday',
        title: 'Understanding of human behaviour',
        islesson: true),
    HorizontalListTileWidget(
        size: size,
        imageUrl: 'assets/images/yoga.jpeg',
        label: 'Babycare',
        lesson: '13 Feb, Sunday',
        title: 'Understanding of human behaviour',
        islesson: true),
  ];
}

class HorizontalListTileWidget extends StatelessWidget {
  const HorizontalListTileWidget({
    super.key,
    required this.size,
    required this.imageUrl,
    required this.label,
    required this.title,
    required this.lesson,
    this.isBook = false,
    this.islesson = false,
  });
  final String imageUrl;
  final Size size;
  final String label;
  final String title;
  final String lesson;
  final bool isBook;
  final bool islesson;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: size.width * 0.8,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.fill,
                      )),
                  width: size.width * 0.8,
                  height: size.height * 0.25,
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: colorBlueApp),
                      ),
                      sizedBox5H,
                      Text(
                        title,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                      sizedBox25H,
                      Row(
                        children: [
                          SubTextWidget(title: lesson),
                          const Spacer(),
                          isBook
                              ? OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      side: const BorderSide(
                                          color: colorBlueApp, width: 1.2),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 15)),
                                  child: const Text(
                                    'Book',
                                    style: TextStyle(color: colorBlueApp),
                                  ),
                                )
                              : islesson
                                  ? const AppBarIconWidget(
                                      icon: Icons.lock_outline)
                                  : Container()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SubTextWidget extends StatelessWidget {
  final String title;
  const SubTextWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(color: colorGrey, fontSize: 16),
    );
  }
}

class MainTextWidget extends StatelessWidget {
  final String title;
  const MainTextWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.lora(fontWeight: FontWeight.w600, fontSize: 25),
    );
  }
}

class RowOutlineBtnWidget extends StatelessWidget {
  const RowOutlineBtnWidget({
    super.key,
    required this.elevatedBtnTitle1,
    required this.elevatedBtnTitle2,
    required this.elevatedBtnIcon1,
    required this.elevatedBtnIcon2,
    this.onPressed1,
    this.onPressed2,
  });
  final String elevatedBtnTitle1;
  final String elevatedBtnTitle2;
  final IconData elevatedBtnIcon1;
  final IconData elevatedBtnIcon2;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlineBtnWidget(
            onPressed: onPressed1,
            title: elevatedBtnTitle1,
            icon: elevatedBtnIcon1,
            btnColor: Colors.white,
            borderColor: colorBlueApp,
          ),
        ),
        sizedBox10W,
        Expanded(
          child: OutlineBtnWidget(
            onPressed: onPressed2,
            title: elevatedBtnTitle2,
            btnColor: colorWhite,
            icon: elevatedBtnIcon2,
            borderColor: colorBlueApp,
          ),
        ),
      ],
    );
  }
}

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: colorGrey, size: 25);
  }
}

class OutlineBtnWidget extends StatelessWidget {
  const OutlineBtnWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.btnColor,
    this.borderColor,
    required this.icon,
  });
  final void Function()? onPressed;
  final String title;
  final Color? btnColor;
  final Color? borderColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side:
              BorderSide(color: borderColor ?? Colors.transparent, width: 1.2),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15)),
      child: Row(
        children: [
          Icon(
            icon,
            color: borderColor,
          ),
          sizedBox5W,
          Text(
            title,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w700, color: borderColor),
          ),
        ],
      ),
    );
  }
}
