//
//  ViewController.swift
//  animatedConstraints
//
//  Created by Akilesh Bapu on 2/13/16.
//  Copyright © 2016 justforfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftSpace: NSLayoutConstraint!
    @IBOutlet weak var downToButton: NSLayoutConstraint!
    @IBOutlet weak var boxToTop: NSLayoutConstraint!
    @IBOutlet weak var alignLeft: NSLayoutConstraint!
    @IBAction func moveConstraints(sender: AnyObject) {
        
        boxToTop.constant = boxToTop.constant - 50
        downToButton.constant += 50
        leftSpace.constant += 300
        print(view.widthAnchor)
        if (leftSpace.constant >= view.frame.width) {
            leftSpace.constant -= 400
        }
        if (boxToTop.constant <= 0) {
            boxToTop.constant += 200
            downToButton.constant -= 200
        }
        UIView.animateWithDuration(0.5) {
            self.view.layoutIfNeeded()        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
        var save: CGFloat = boxToTop.constant
        boxToTop.constant = 0
        while (boxToTop.constant <= save) {
            boxToTop.constant += 40
            UIView.animateWithDuration(0.5) {
                self.view.layoutIfNeeded()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

