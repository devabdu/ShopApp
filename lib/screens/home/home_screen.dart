import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/screens/home/components/categories.dart';
import 'package:storeapp/screens/home/components/new_arrival.dart';
import 'package:storeapp/screens/home/components/popular.dart';
import 'package:storeapp/screens/home/components/search_form.dart';
import 'package:storeapp/shared/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparentColor,
        elevation: zero,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(menuIcon),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(locationIcon),
            const SizedBox(
              width: defaultPadding_16 / 2,
            ),
            Text(
              locationText,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(notificationIcon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exploreText,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: fontWeight_500,
                      color: Colors.black,
                    ),
              ),
              const Text(
                sloganText,
                style: TextStyle(fontSize: fontSize_18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding_16),
                child: SearchForm(),
              ),
              const Categories(),
              const SizedBox(
                height: defaultPadding_16,
              ),
              const NewArrival(),
              const SizedBox(
                height: defaultPadding_16,
              ),
              const Popular(),
            ],
          ),
        ),
      ),
    );
  }
}