//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 황예리 on 2023/04/09.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "wind", "sun.max.fill", "cloud.sun.fill", "cloud.bolt.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
//        print("도시, 온도, 날씨 이미지 변경하자!")
        cityLabel.text = cities.randomElement()
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
    }
    

}
