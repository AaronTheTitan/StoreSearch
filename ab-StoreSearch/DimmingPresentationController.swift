//
//  DimmingPresentationController.swift
//  ab-StoreSearch
//
//  Created by Aaron Bradley on 4/5/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {

    lazy var dimmingView = GradientView(frame: CGRect.zeroRect)


    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView.bounds
        containerView.insertSubview(dimmingView, atIndex: 0)
    }

    override func shouldRemovePresentersView() -> Bool {
        return false
    }

}
