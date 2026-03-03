import 'package:flutter/material.dart';

class GlassBottomBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTabChange;

  const GlassBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  State<GlassBottomBar> createState() => _GlassBottomBarState();
}

class _GlassBottomBarState extends State<GlassBottomBar> {
  final List<_TabItemData> _items = const [
    _TabItemData(Icons.home_outlined, "Գլխավոր"),
    _TabItemData(Icons.search_outlined, "Որոնել"),
    _TabItemData(Icons.movie_outlined, "Սպասվող"),
    _TabItemData(Icons.person_outline, "Օգտահաշիվ"),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth = constraints.maxWidth / _items.length;

        return ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(8),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white24),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  left: widget.currentIndex * itemWidth,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: itemWidth,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9A9A9A).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(_items.length, (index) {
                    final bool isSelected = widget.currentIndex == index;

                    return Expanded(
                      child: GestureDetector(
                        onTap: () => widget.onTabChange(index),
                        behavior: HitTestBehavior.translucent,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: Icon(
                                  _items[index].icon,
                                  key: ValueKey(isSelected),
                                  color: isSelected
                                      ? const Color(0xFFF9EE11)
                                      : Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AnimatedDefaultTextStyle(
                                duration: const Duration(milliseconds: 300),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                child: Text(_items[index].label),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TabItemData {
  final IconData icon;
  final String label;

  const _TabItemData(this.icon, this.label);
}
