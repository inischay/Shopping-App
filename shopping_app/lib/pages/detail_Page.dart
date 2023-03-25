import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/models/models.dart';
import 'package:shopping_app/pages/home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.appModels});
  final AppModels appModels;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Product",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.black))
          ],
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60)),
                        child: Image.asset(widget.appModels.img)),
                    Positioned(
                        right: 20,
                        bottom: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.favorite,
                            color: AppColors.priceColor,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.appModels.price,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColors.priceColor,
                                fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.appModels.title,
                            style: const TextStyle(fontSize: 17),
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.appModels.rating.toStringAsFixed(1)} / 5.0',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 5),
                              Row(
                                children: List.generate(5, (index) {
                                  if (index < widget.appModels.rating) {
                                    return const Icon(Icons.star,
                                        color: Colors.amber);
                                  } else {
                                    return const Icon(Icons.star_border,
                                        color: Colors.amber);
                                  }
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Color option"),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReadMoreText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                        trimLines: 5,
                        style: TextStyle(
                            height: 1.5,
                            color: AppColors.textTitleColor,
                            fontSize: 17),
                        trimMode: TrimMode.Length,
                        moreStyle: TextStyle(
                            color: AppColors.iconColor1, fontSize: 17),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    color: AppColors.iconColor1,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                    )),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Colors.transparent),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}
