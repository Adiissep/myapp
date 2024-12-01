import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(186, 37, 49, 77),
      bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Add to Cart'))),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/d6c392a84e4f665424d710649452e7f9/Derivates/a6bdb196bee23faef1d8020319c7c64750ef7686.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Popular',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ), //End Header

                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pizza Love',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "4.8 Ratings",
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 5),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.shopify,
                                      color: Colors.purple,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Order")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
                          const SizedBox(
                            height: 30,
                          ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.red,
                          //     minimumSize: Size(screenWidth, 50),
                          //   ),
                          //   child: const Text(
                          //     'Add To Cart',
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // ),
                        ],
                      ),
                    ), //End
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
