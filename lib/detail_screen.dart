import 'package:flutter/material.dart';
import 'package:flutter_game_detail/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const longText = """
    The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.
    
    Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.
    """;
    return Scaffold(
      backgroundColor: UiColors.scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: UiColors.gradient,begin: Alignment.topCenter,end: Alignment.bottomCenter),
              image: DecorationImage(image: AssetImage("assets/pngs/agent.png"),alignment: Alignment.centerRight),
            ),
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                UiColors.scaffoldColor,UiColors.scaffoldColor.withOpacity(0)
              ],begin: Alignment.bottomCenter,end: Alignment.topCenter),
            ),
            child: RotatedBox(
               quarterTurns: -1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text("HITMAN",style: GoogleFonts.poppins(fontSize: 86,color: Colors.black.withOpacity(0.10),fontWeight: FontWeight.w900)),
                )),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Hitman Absolution",style: GoogleFonts.goldman(fontSize: 24,color: Colors.white)),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("2022",style: GoogleFonts.inriaSans(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w900)),
                const _CustomDividerWidget(),
                SvgPicture.asset("assets/svgs/xbox.svg"),
                const SizedBox(width: 16),
                SvgPicture.asset("assets/svgs/playstation.svg"),
                const SizedBox(width: 16),
                SvgPicture.asset("assets/svgs/window.svg"),
                const _CustomDividerWidget(),
                SvgPicture.asset("assets/svgs/star.svg"),
                const SizedBox(width: 6),
                Text("4.5",style: GoogleFonts.inriaSans(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w900))
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0),
            child: Text("About game",style: GoogleFonts.inriaSans(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(longText,style: GoogleFonts.inriaSans(fontSize: 16,color: UiColors.geryColor),textAlign: TextAlign.justify,),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(UiColors.redColor),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          )
                        )
                      ),
                      minimumSize: WidgetStatePropertyAll(Size(180, 55))
                    ),
                    child: Text("Buy Now",style: GoogleFonts.goldman(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w900),)),
                const Column(
                  children: [
                    Text(
                      "\$18.00",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.white,decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      "\$13.50",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: UiColors.lightYellowColor),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomDividerWidget extends StatelessWidget {
  const _CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 2,
      height: 16,
      color: UiColors.geryColor,
    );
  }
}

