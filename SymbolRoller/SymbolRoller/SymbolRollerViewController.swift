//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 황예리 on 2023/04/04.
//

import UIKit
// UIViewController: 페이지를 나타내기 위한 객체
class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.systemPink
        
        // TODO: -
        // 심볼에서 이미지 하나를 추출해서,
        // 이미지와 텍스트 설정을 한다.
        // Dry
        // Do not repeat yourself
        // 중복된 코드를 보면 참지말아라, 개발자의 소양
        
//        print("view did load...")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print("view will appear...")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        print("view did apppear...")
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
//        print("와 눌렸다!...")
        reload()
    }

}
