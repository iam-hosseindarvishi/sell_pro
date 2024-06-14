import 'package:flutter/material.dart';

import '../../../configs/utils/responsive_spacers.dart';
import '../text_fields/form_text_field.dart';

class FormExpansionPanel extends StatefulWidget {
  FormExpansionPanel(
      {super.key,
      required this.header,
      required this.body,
      this.isExpanded = false});
  final Widget header;
  final Widget body;
  bool isExpanded;
  @override
  State<FormExpansionPanel> createState() => _FormExpansionPanelState();
}

class _FormExpansionPanelState extends State<FormExpansionPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2, color: Theme.of(context).colorScheme.onSurface)),
      child: ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            widget.isExpanded = isExpanded;
          });
        },
        elevation: 0,
        expandIconColor: Theme.of(context).colorScheme.primary,
        materialGapSize: 0,
        animationDuration: const Duration(seconds: 1),
        dividerColor: Theme.of(context).colorScheme.primary,
        expandedHeaderPadding: const EdgeInsets.all(0),
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return widget.header;
            },
            body: widget.body,
            isExpanded: widget.isExpanded,
            canTapOnHeader: true,
          ),
        ],
      ),
    );
  }
}
