import 'package:flutter/material.dart';
import 'package:project_3/widget/k_Text.dart';

class KGridView extends StatelessWidget {
  const KGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100 * 10,
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,mainAxisSpacing: 20,
                  crossAxisCount: 2),
          itemCount: 20,
          itemBuilder: (context, index) => KGridCard(),
        ));
  }
}

class KGridCard extends StatelessWidget {
  const KGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KText(
              textType: "Repo Name",
              fontWeight: FontWeight.bold,
            ),
            KText(textType: "upload")
          ],
        ),
      ),
    );
  }
}
