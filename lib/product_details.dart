import 'package:flutter/material.dart';
// import 'package:hugeicons/hugeicons.dart';
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
        backgroundColor: Colors.white,
        title: const Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              IconsaxPlusLinear.shopping_cart,
              color: Colors.black,
            ),
            // iconSize: 30.0,
          )
        ],
      ),
      body: Stack(
        // alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage('images/products/clothes/clothe-1.png'),
            height: 300,
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              // Container(
              //   margin: const EdgeInsets.only(top: 50.0),
              //   width: 300,
              //   height: 250,
              //   decoration: BoxDecoration(
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(120.0),
              //     ),
              //     color: Colors.grey.shade100,
              //   ),
              // ),
              // const Positioned(
              //   top: -25.0,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [

              //   ],
              // ),
              // ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 4,
                      ),
                    ),
                    const SizedBox(height: 15.0),
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
                          'In Stock',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'The long-sleeved hoodie features a kangaroo pouch pocket, raglan sleeve, and waffle fabric design.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildColorBadge(Colors.red, 'Red'),
                              const SizedBox(width: 10),
                              _buildColorBadge(Colors.blue, 'Blue'),
                              const SizedBox(width: 10),
                              _buildColorBadge(Colors.green, 'Green'),
                              const SizedBox(width: 10),
                              _buildColorBadge(Colors.purple, 'Purple'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
                            _buildSizeBadge('S', isSelected: true),
                            const SizedBox(width: 10),
                            _buildSizeBadge('M'),
                            const SizedBox(width: 10),
                            _buildSizeBadge('L'),
                            const SizedBox(width: 10),
                            _buildSizeBadge('XL'),
                          ],
                        ),
                      ],
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
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            onPressed: () {},
            child: const Text(
              'Add To Cart',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
    );
  }

  Widget _buildSizeBadge(String size, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: isSelected ? Colors.deepPurpleAccent : Colors.grey.shade100,
      ),
      child: Text(
        size,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _buildColorBadge(Color color, String name) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        border: Border.all(
          color: Colors.grey.shade100,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: color,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
