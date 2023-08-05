import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatefulWidget {

  final int index;
  final String title;
  final Function() onClick;
  final int selectedCategory;

  const CategoryItem({
    super.key,
    required this.index,
    required this.title,
    required this.onClick,
    required this.selectedCategory
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onClick(),
      child: Container(
        width: 121,
        height: 38,
        margin: const EdgeInsets.only(
          right: 8,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.index == widget.selectedCategory ? const Color(0xffC67C4E) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Text(
          widget.title,
          style: GoogleFonts.sora(
            color: widget.index == widget.selectedCategory ? Colors.white : Colors.black,
            fontSize: 14,
            fontWeight: widget.index == widget.selectedCategory ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
