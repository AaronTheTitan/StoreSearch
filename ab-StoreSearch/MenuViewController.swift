//
//  MenuViewController.swift
//  ab-StoreSearch
//
//  Created by Aaron Bradley on 4/9/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate: class {
    func menuViewControllerSendSupportEmail(MenuViewController)
}

class MenuViewController: UITableViewController {

    weak var delegate: MenuViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        if indexPath.row == 0 {
            delegate?.menuViewControllerSendSupportEmail(self)
        }
    }

}
