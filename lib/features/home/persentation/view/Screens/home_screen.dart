import 'package:bookly_app/core/util/style.dart';
import 'package:bookly_app/features/home/persentation/view/widget/booklirstview.dart';
import 'package:bookly_app/features/home/persentation/view/widget/carditem.dart';
import 'package:bookly_app/features/home/persentation/view/widget/customappbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAppbar(),
            ),
            const SliverToBoxAdapter(
              child: Carditem(),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(left: 25, bottom: 20, top: 12),
                width: double.infinity,
                child: const Text(
                  textAlign: TextAlign.start,
                  "NEWST books",
                  style: Style.titlemedium,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: bookListView(),
            ),
          ],
        ),
      ),
    );
  }
}
