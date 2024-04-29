import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:owl/owl.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingTile extends ConsumerWidget {
  const ShimmerLoadingTile({super.key, required this.index, this.textStyle});

  final int index;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Shimmer.fromColors(
            baseColor: context.background,
            period: Duration(milliseconds: (1000 + (index * 100))),
            highlightColor: context.surface,
            child: Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '1234 W 1234th St, Cleveland, Ohio, 44111',
                        style: textStyle?.copyWith(color: Colors.transparent) ??
                            const TextStyle(color: Colors.transparent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
