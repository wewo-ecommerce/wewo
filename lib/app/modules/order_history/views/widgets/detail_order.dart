import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailOrder extends StatelessWidget {
  const DetailOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 1,
      minChildSize: 0.2,
      expand: false,
      builder: (context, scrollController) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: const [
              Text('Detail Order...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
              Text('Update later...'),
            ],
          ),
        ),
      ),
    );
  }
}
