import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            IconsaxPlusLinear.arrow_left_3,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/products/clothes/clothe-2.png'),
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const HugeIcon(
                          icon: HugeIcons.strokeRoundedStar,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '4.2',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' (136 reviews)',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Men\'s Hoodie',
                          style: TextStyle(
                            fontFamily: 'Acme',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$19.99',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.indigo[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Color',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black45,
                                    radius: 18,
                                  ),
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 18,
                                  ),
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Size',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo[50],
                                    radius: 18,
                                    child: const Text(
                                      'S',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo[50],
                                    radius: 18,
                                    child: const Text(
                                      'M',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 18,
                                    child: Text(
                                      'L',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.indigo[50],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              'The long-sleeved hoodie features a kangaroo pouch pocket, raglan sleeve, and waffle fabric design. The unisex pullover hoodie is completed with a waistband and cuffs for a comfortable fit. It’s ideal for those who love outdoor sports or just prefer a cool, casual outfit. This mock-up is guaranteed to impress with its impeccable design, detail, and attention to every single aspect of the garment.'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.indigo[50],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Id ullamco eiusmod sint occaecat duis quis pariatur excepteur. Do eiusmod quis aute id sit magna. Excepteur anim eiusmod aliqua sunt ullamco quis laboris. Adipisicing incididunt commodo anim reprehenderit ullamco velit velit elit elit veniam ex exercitation. Aliquip ullamco dolore fugiat irure voluptate minim fugiat in ea consequat cupidatat laborum. Quis officia adipisicing minim fugiat ut velit occaecat cillum magna.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       backgroundColor: Colors.white,
      //       foregroundColor: Colors.indigoAccent,
      //       onPressed: () {},
      //       child: const HugeIcon(
      //         icon: HugeIcons.strokeRoundedShoppingBag01,
      //         color: Colors.indigoAccent,
      //       ),
      //     ),
      //     const SizedBox(width: 10),
      //     SizedBox(
      //       width: 300,
      //       child: FloatingActionButton(
      //         backgroundColor: Colors.indigoAccent,
      //         foregroundColor: Colors.white,
      //         onPressed: () {},
      //         child: const Text(
      //           'Buy Now',
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontFamily: 'Acme',
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.grey[100],
    );
  }
}
