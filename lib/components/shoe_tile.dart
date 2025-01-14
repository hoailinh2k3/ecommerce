import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onPressed;
  ShoeTile({super.key, required this.shoe, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          // Hình ảnh
          Expanded(
            flex: 1,
            child: Image.asset(shoe.imagePath, fit: BoxFit.contain),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tiêu đề
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    shoe.description,
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.justify,
                  ),
                ),
                // Tên sản phẩm, giá, nút thêm vào giỏ hàng
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tên sản phẩm
                          Text(
                            shoe.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Giá
                          Text(
                            '\$${shoe.price}',
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),

                    // Nút thêm vào giỏ hàng
                    MaterialButton(
                      onPressed: onPressed,
                      minWidth: 70,
                      height: 70,
                      color: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
