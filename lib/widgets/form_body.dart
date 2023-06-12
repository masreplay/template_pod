import 'package:flutter/material.dart';

import 'flex_padded.dart';

class FormBody extends StatelessWidget {
  const FormBody({
    super.key,
    required this.formKey,
    required this.children,
    this.centered = false,
    this.actions = const [],
    this.gap = 8.0,
    this.padding = const EdgeInsets.all(16.0),
    this.mainAxisAlign = MainAxisAlignment.center,
    this.crossAxisAlign = CrossAxisAlignment.stretch,
    this.mainAxisSize = MainAxisSize.min,
  });

  final List<Widget> children;

  final List<Widget> actions;

  final EdgeInsets padding;

  final double gap;

  final GlobalKey<FormState> formKey;

  final MainAxisAlignment mainAxisAlign;

  final CrossAxisAlignment crossAxisAlign;

  final MainAxisSize mainAxisSize;

  final bool centered;

  @override
  Widget build(BuildContext context) {
    Widget current = SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: ColumnPadded(
          gap: gap,
          mainAxisAlignment: mainAxisAlign,
          crossAxisAlignment: crossAxisAlign,
          mainAxisSize: mainAxisSize,
          children: children,
        ),
      ),
    );

    if (centered) current = Center(child: current);

    current = SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Form(
            key: formKey,
            child: actions.isEmpty
                ? current
                : Column(
                    children: [
                      Expanded(child: current),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RowPadded(
                          children: [
                            for (final action in actions)
                              Expanded(child: action),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );

    return current;
  }
}
