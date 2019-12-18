//
//  LoadingProgressReporter.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import Foundation

class LoadingProgressReporter {
    var progress: Double = 0
    var handleProgressReport: ((Int) -> Void)?
}
