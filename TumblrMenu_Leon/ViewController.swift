//
//  ViewController.swift
//  TumblrMenu_Leon
//
//  Created by lai leon on 2017/9/11.
//  Copyright © 2017 clem. All rights reserved.
//

import UIKit

let YHRect = UIScreen.main.bounds
let YHHeight = YHRect.size.height
let YHWidth = YHRect.size.width

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    private func setupView() {
        view.layer.contents = UIImage(named: "8")?.cgImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        pushViewController 导航控制器入栈的方式切换页面
//        presentViewController 模态切换的方式切换页面
        present(MenuViewController(), animated: true, completion: nil)
    }
}
