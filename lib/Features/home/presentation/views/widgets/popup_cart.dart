import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/Core/constants.dart';
import 'package:fruit_app/Features/home/data/models/product_model.dart';
import 'package:fruit_app/Features/home/presentation/manager/cubit/cart_cubit.dart';

class CustomPopupCart extends StatelessWidget {
  const CustomPopupCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, List<ProductModel>>(
      builder: (context, state) {
        if (state.isEmpty) return const SizedBox.shrink();

        final cartCubit = context.read<CartCubit>();
        final uniqueProducts = cartCubit.uniqueProducts;

        return Container(
          height: 70,
          width: MediaQuery.sizeOf(context).width - 30,
          decoration: BoxDecoration(
            color: Constants.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: uniqueProducts.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 4),
                  itemBuilder: (context, index) {
                    final product = uniqueProducts[index];
                    final count = cartCubit.productCount(product);

                    return Badge(
                      label: Text(
                        "$count",
                        style: const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      backgroundColor: Colors.red,
                      offset: const Offset(2, 1),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(child: Image.asset(product.image, height: 24)),
                      ),
                    );
                  },
                ),
              ),
              const VerticalDivider(indent: 12, endIndent: 12, color: Colors.white),
              Badge(
                label: Text(
                  "${state.length}",
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                backgroundColor: Colors.red,
                offset: const Offset(6, -6),
                child: SvgPicture.asset(
                  'assets/pasket_icon.svg',
                  height: 34,
                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        );
      },
    );
  }
}
