import 'package:design_up/model/product_model.dart';

class ProductController {
  // Integration with state management
  final List<ProductModel> products = <ProductModel>[
    ProductModel(
        id: 1,
        name: 'បុកល្ហុងក្ដាមប្រៃហិរសោះដល់ឋានព្រះច័ន្ទ',
        price: 10.99,
        description:
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt corrupti consequuntur ipsum nam ducimus, est, veritatis, velit ad minima facilis perferendis soluta impedit officia sint vero deleniti. Maiores, iste cupiditate. Optio nulla, enim reiciendis obcaecati deserunt beatae vel error, sunt sit dicta modi. Quasi eaque labore provident dicta veniam sit? Iste alias ullam magni id accusamus corrupti debitis sint. Blanditiis! Quae atque laboriosam enim eaque nostrum eos sapiente id deserunt reprehenderit ipsum placeat aliquam ea cum quasi modi quibusdam facilis nulla cumque adipisci, dolore laborum culpa! Necessitatibus accusamus odit voluptas!",
        image:
            "https://img.freepik.com/free-photo/thai-papaya-salad-white-plate-with-chili-lime-garlic_1150-20246.jpg?t=st=1733118675~exp=1733122275~hmac=cc502654760e9972dca9fff358c6d5a7f9ff682e2aee34efec145c1adebe4239&w=1060"),
    ProductModel(
        id: 2,
        name: 'Product 2',
        price: 15.99,
        description:
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt corrupti consequuntur ipsum nam ducimus, est, veritatis, velit ad minima facilis perferendis soluta impedit officia sint vero deleniti. Maiores, iste cupiditate. Optio nulla, enim reiciendis obcaecati deserunt beatae vel error, sunt sit dicta modi. Quasi eaque labore provident dicta veniam sit? Iste alias ullam magni id accusamus corrupti debitis sint. Blanditiis! Quae atque laboriosam enim eaque nostrum eos sapiente id deserunt reprehenderit ipsum placeat aliquam ea cum quasi modi quibusdam facilis nulla cumque adipisci, dolore laborum culpa! Necessitatibus accusamus odit voluptas!",
        image:
            "https://img.freepik.com/free-photo/sauteed-mushrooms-with-pumpkin-sweet-pepper_2829-10315.jpg?t=st=1733118615~exp=1733122215~hmac=b6914fbcc67e53bf09f2284a31bac4a20e0c31a4b88acf66b67e660b18aca999&w=1060"),
    ProductModel(
        id: 3,
        name: 'Product 3',
        price: 20.99,
        description:
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt corrupti consequuntur ipsum nam ducimus, est, veritatis, velit ad minima facilis perferendis soluta impedit officia sint vero deleniti. Maiores, iste cupiditate. Optio nulla, enim reiciendis obcaecati deserunt beatae vel error, sunt sit dicta modi. Quasi eaque labore provident dicta veniam sit? Iste alias ullam magni id accusamus corrupti debitis sint. Blanditiis! Quae atque laboriosam enim eaque nostrum eos sapiente id deserunt reprehenderit ipsum placeat aliquam ea cum quasi modi quibusdam facilis nulla cumque adipisci, dolore laborum culpa! Necessitatibus accusamus odit voluptas!",
        image:
            "https://img.freepik.com/free-photo/pad-thai-white-plate-with-lemon-eggs-seasoning-wooden-table_1150-21191.jpg?t=st=1733118596~exp=1733122196~hmac=018442a11ea8dee7f09a463d7532beaef6ba52cbce485e8424b7d1dc555ade55&w=1060"),
  ];
}
