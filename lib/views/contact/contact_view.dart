import 'package:flutter/material.dart';
import 'package:portfolio/views/contact/contact_at_view.dart';
import 'package:portfolio/views/contact/header_view.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'Contact',
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('contact'),
          child: const Column(
            children: [
              HeaderView(),
              Divider(),
              ContactAtView(),
            ],
          ),
        ),
      ),
    );
  }
}
