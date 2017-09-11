//
//  MenuViewController.swift
//  TumblrMenu_Leon
//
//  Created by lai leon on 2017/9/11.
//  Copyright © 2017 clem. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var btns = [UIButton]()
    //自定义转场动画
    let transitionManager = MenuTransitionManger()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    private func setupView() {
        transitioningDelegate = transitionManager
        view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        let width: CGFloat = YHWidth / 2
        let height: CGFloat = YHHeight / 3
        let names = ["Audio", "Chat", "Link", "Photo", "Quote", "Text"]
        for index in 0...5 {
            let rect = CGRect(x: width * CGFloat(index % 2), y: height * CGFloat(index / 2), width: width, height: height)
            let btn = UIButton(frame: rect)
            btn.setTitle(names[index], for: .normal)
            btn.setTitleColor(.white, for: .normal)
            btn.setImage(UIImage(named: names[index]), for: .normal)
            view.addSubview(btn)
            //自定义方法
            btn.alignContentVerticallyByCenter()
            btn.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
            btns.append(btn)
        }
    }

    func dismissView() {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
