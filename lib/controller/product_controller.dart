import 'package:design_up/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductController extends Cubit<List<ProductModel>> {
  ProductController()
      : super(
          [
            ProductModel(
              id: 1,
              name: 'Kang Kep Baob (Stuffed Frog)',
              price: 10.99,
              description:
                  """The first amazing Cambodian street food that deserves to be on our list is Kang Kep Baob, or stuffed frog. As its name means, the frog is filled with a blend of ingredients.\nThe mixture of stuff includes chopped frog meat with pork, coconut, peanuts, saffron, and citronella. These are stuffed inside the frog skin, making it fat and funny.\nThe food needs to be dried under the sun for 15 minutes and then grilled or fried. The hot stuffed frog is served with a delicious smell and tender texture.""",
              image: "assets/images/kang-kep-baob.jpg",
              favorite: false,
            ),
            ProductModel(
              id: 2,
              name: 'A-Ping (Deep-fried Tarantula)',
              price: 15.99,
              description:
                  """You'll be surprised to see the local fried insects on the streets, yet it's part of their street food. A-Ping, the deep-fried spider, is a typical example. Other versions of this dish are silkworms, cockroaches, crickets, grasshoppers, beetles, etc.\nThese insects became edible due to the terrible famine that Cambodians experienced in the 1970s. They were so starving that insects were their only source of food.\nEven though it's an uncommon dish, it received more positive feedback than you may have thought. The crispy exterior contrasts with the soft center said to be "rather like a cross between chicken and cod", offering an unforgettable experience.""",
              image: "assets/images/a-ping.jpg",
              favorite: false,
            ),
            ProductModel(
              id: 3,
              name: 'Num Pang (Cambodian Sandwich)',
              price: 20.99,
              description:
                  """Talking about the street food Khmer, we can't skip Num Pang, also known as the Cambodian sandwich. Its carts are almost everywhere, such as outside the market or next to office buildings. You can spot it by the baguette, a bread style that originated in France during the French colonial period, with trays of ingredients.\nThis type of street bread contains nutrition, including starch, protein, and fiber from vegetables. The meat can be ham or pate, and the veggies are various such as cucumbers, carrots, onions, and chives.""",
              image: "assets/images/num-pang.jpg",
              favorite: false,
            ),
          ],
        );

  final List<ProductModel> results = [];
  final TextEditingController textCtrl = TextEditingController();

  void filterProducts() {
    final filterText = textCtrl.text.toLowerCase();
    results
      ..clear()
      ..addAll(
        state.where(
          (product) => product.name.toLowerCase().contains(filterText),
        ),
      );

    emit(List<ProductModel>.from(state));
  }

  void clear() {
    textCtrl.clear();
    results.clear();
    emit(List<ProductModel>.from(state));
  }

  void toogleFavorite(int index) {
    state[index].favorite = !state[index].favorite;
    emit(List<ProductModel>.from(state));
  }
}
