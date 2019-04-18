//
//  ViewController.swift
//  TestCenterAspectRatioView
//
//  Created by Bart van Kuik on 18/04/2019.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenLabel = UILabel()
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
        greenLabel.backgroundColor = .green
        greenLabel.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
        greenLabel.numberOfLines = 0

        self.view.addSubview(greenLabel)
        
        let guide = self.view.safeAreaLayoutGuide
        let constraints = [
            greenLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            greenLabel.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1),
            guide.bottomAnchor.constraint(equalToSystemSpacingBelow: greenLabel.bottomAnchor, multiplier: 1),
            greenLabel.widthAnchor.constraint(equalTo: greenLabel.heightAnchor, multiplier: 0.3)
        ]
        self.view.addConstraints(constraints)
    }
}
