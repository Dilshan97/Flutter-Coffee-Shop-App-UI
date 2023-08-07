import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeSize extends StatefulWidget {
  final String title;
  final int index;
  final int selectedSize;
  final Function() onClick;

  const CoffeeSize({
    super.key,
    required this.title,
    required this.index,
    required this.selectedSize,
    required this.onClick,
  });

  @override
  State<CoffeeSize> createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onClick(),
      child: Container(
        width: 96,
        height: 43,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:  widget.index == widget.selectedSize ? Color(0xffFFF5EE) : Color(0xffffff),
          border: Border.all(
            color: widget.index == widget.selectedSize ? Color(0xffC67C4E) : Color(0xffDEDEDE),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.title,
          style: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: widget.index == widget.selectedSize ? Color(0xffC67C4E) : Colors.black
          ),
        ),
      ),
    );
  }
}
