class TechnicalIndicators{
  String heading="";
  String body="";
  double value=0.0;

  TechnicalIndicators(String h,String b,double v) {
    heading = h;
    body = b;
    value = v;
  }
}

List<TechnicalIndicators> technicalIndicators = [
  TechnicalIndicators("Cumulative Market Sentiment", "This measures the sentiment of the investors for that particular stock or boin based on all the news articles,blogs, research papers, financial content featuring it.", 62.42),
  TechnicalIndicators("Relative Strength Index (RSI)", "This measures the price movement of the securities,tell us if the stock or coin is overbought (above 70) oroversold (below 30)", 37.88),
  TechnicalIndicators("Volatility", "This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.", 0.54)
];