import 'package:crypto_app/views/select_coin.dart';
import 'package:flutter/material.dart';
class ItemRecommend extends StatelessWidget {
  var item;
  ItemRecommend({this.item});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
     horizontal: myWidth*0.03,
        vertical: myHeight*0.02,
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (contest)=>SelectCoin(

            selectItem: item,
          )));
        },
        child: Container(

          padding: EdgeInsets.only(
            left: myWidth*0.02,
            right: myWidth*0.02,
            top: myHeight*0.01,
            bottom: myHeight*0.015,
          ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepPurpleAccent,),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: myHeight*0.01),
                height: myHeight*0.041,

                  child: Image.network(item.image),
              ),
              SizedBox(height: myHeight*0.01,),
              Text(
                item.id,
                style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height: myHeight*0.01,),
              Row(
                children: [
                  Text(
                    item.priceChange24H.toString().contains('-')
                        ? "-\$" +
                        item.priceChange24H
                            .toStringAsFixed(2)
                            .toString()
                            .replaceAll('-', '')
                        : "\$" + item.priceChange24H.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: myWidth * 0.02,
                  ),
                  Text(
                    item.marketCapChangePercentage24H.toStringAsFixed(2) +
                        '%',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: item.marketCapChangePercentage24H >= 0
                            ? Colors.green
                            : Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
