import UIKit
import SnapKit

class WeatherView: UIView {
  var cityNameLabel: UILabel!
  var descLabel: UILabel!
  
  var temperatureLabel: UILabel!
  var dayLabel: UILabel!
  
  var highsLabel: UILabel!
  var lowsLabel:UILabel!
  
  var lineView: LineView!
  var timeLabel: UILabel!
  
  convenience init() {
    self.init(frame: .zero)
    
    cityNameLabel = UILabel()
    descLabel = UILabel()
    temperatureLabel = UILabel()
    dayLabel = UILabel()
    highsLabel = UILabel()
    lowsLabel = UILabel()
    lineView = LineView()
    timeLabel = UILabel()
    
    setupViews()
  }

  func setupViews() {
    self.backgroundColor = Configuration.Color.backgroundColor
    
    self.addSubview(cityNameLabel)
    self.addSubview(descLabel)
    
    self.addSubview(temperatureLabel)
    self.addSubview(dayLabel)
    
    self.addSubview(highsLabel)
    self.addSubview(lowsLabel)
    
    self.addSubview(lineView)
    self.addSubview(timeLabel)
    
    cityNameLabel.text = "City, State"
    cityNameLabel.textColor = .white
    
    cityNameLabel.font = UIFont.systemFont(ofSize: 24)
    cityNameLabel.numberOfLines = 0
    
    cityNameLabel.lineBreakMode = .byWordWrapping
    cityNameLabel.textAlignment = .center
    
    cityNameLabel.snp.makeConstraints { make in
      make.top.equalTo(self.safeAreaLayoutGuide).offset(50)
      make.centerX.equalTo(self)
    }
    
    descLabel.text = "Skies"
    descLabel.textColor = .white
    
    descLabel.font = UIFont.systemFont(ofSize: 18)
    descLabel.numberOfLines = 0
    
    descLabel.lineBreakMode = .byWordWrapping
    descLabel.textAlignment = .center
    
    descLabel.snp.makeConstraints { make in
      make.top.equalTo(cityNameLabel.snp.bottom).offset(5)
      make.centerX.equalTo(self)
    }
    
    temperatureLabel.text = "0.0 ºF"
    temperatureLabel.textColor = .white
    
    temperatureLabel.font = UIFont.systemFont(ofSize: 48)
    temperatureLabel.numberOfLines = 0
    
    temperatureLabel.lineBreakMode = .byWordWrapping
    temperatureLabel.textAlignment = .center
    
    temperatureLabel.snp.makeConstraints { make in
      make.top.equalTo(descLabel.snp.bottom).offset(10)
      make.centerX.equalTo(self)
    }
    
    /// day - highs - lows
    
    dayLabel.text = "Today"
    dayLabel.textColor = .white
    
    dayLabel.font = UIFont.boldSystemFont(ofSize: 16)
    dayLabel.numberOfLines = 0
    
    dayLabel.lineBreakMode = .byWordWrapping
    dayLabel.textAlignment = .left
    
    dayLabel.snp.makeConstraints { make in
      make.top.equalTo(temperatureLabel.snp.bottom).offset(15)
      make.left.equalTo(self.safeAreaLayoutGuide).offset(10)
      
    }
    
    highsLabel.text = "Highs"
    highsLabel.textColor = .white
    
    highsLabel.font = UIFont.boldSystemFont(ofSize: 16)
    highsLabel.numberOfLines = 0
    
    highsLabel.lineBreakMode = .byWordWrapping
    highsLabel.textAlignment = .center
    
    highsLabel.snp.makeConstraints { make in
      make.centerY.height.equalTo(dayLabel)
      make.right.equalTo(lowsLabel.snp.left).offset(-10)
      make.width.equalTo(self.highsLabel.intrinsicContentSize)
    }
    
    lowsLabel.text = "Lows"
    lowsLabel.textColor = .lightGray
    
    lowsLabel.font = UIFont.boldSystemFont(ofSize: 16)
    lowsLabel.numberOfLines = 0
    
    lowsLabel.lineBreakMode = .byWordWrapping
    lowsLabel.textAlignment = .center
    
    lowsLabel.snp.makeConstraints { make in
      make.centerY.height.equalTo(dayLabel)
      make.right.equalTo(self.safeAreaLayoutGuide).offset(-10)
      make.width.equalTo(self.lowsLabel.intrinsicContentSize)
    }
    
    ///
    lineView.snp.makeConstraints { make in
      make.top.equalTo(dayLabel.snp.bottom).offset(5)
      make.width.equalTo(self.safeAreaLayoutGuide).inset(5)
      make.centerX.equalTo(self)
    }
    
    timeLabel.text = "Last updated: ..."
    timeLabel.textColor = .white
    
    timeLabel.font = UIFont.systemFont(ofSize: 12)
    timeLabel.numberOfLines = 0
    
    timeLabel.lineBreakMode = .byWordWrapping
    timeLabel.textAlignment = .center
    
    timeLabel.snp.makeConstraints { make in
      make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-10)
      make.width.equalTo(self).inset(50)
      make.centerX.equalTo(self)
    }
  }
}