//
//  HikeTabBarController.swift
//  MeadoWatch
//
//  Created by Spencer Morris on 5/9/18.
//  Copyright © 2018 Spencer Morris. All rights reserved.
//

import UIKit

class HikeTabBarController: UITabBarController {
    var hike: HikeViewModel? {
        didSet {
            for controller in viewControllers ?? [] {
                if let mapController = controller as? MapController {
                    mapController.dataSource = hike
                } else if let speciesController = controller as? HikeSpeciesController {
                    speciesController.dataSource = hike
                } else if let overviewController = controller as? OverviewController {
                    overviewController.dataSource = hike
                }
            }
        }
    }
}
