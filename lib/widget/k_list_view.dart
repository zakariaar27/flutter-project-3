import 'package:flutter/material.dart';
import 'package:project_3/widget/k_Text.dart';

class KListView extends StatelessWidget {
  const KListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120*20,
      child: ListView.separated(
        itemCount: 20,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
        itemBuilder: (context, index) {
        return KCard(hereText: "Repo Name",);
      },),
    );
  }
}

class KCard extends StatelessWidget {
  const KCard({
    super.key, required this.hereText
  });
final String hereText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        color: Colors.indigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(textType: hereText,fontWeight: FontWeight.bold,),
                KText(textType: 'test'),
              ],
            ), 
            ElevatedButton(onPressed: () {
              
            }, child: KText(textType: 'Public',))
          ],
        ),
      ),
    );
  }
}
