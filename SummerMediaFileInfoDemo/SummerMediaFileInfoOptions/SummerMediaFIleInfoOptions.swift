//
//  SummerMediaFIleInfoOptions.swift
//  SummerMediaFileInfoDemo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import SummerMediaFileInfo

struct DefaultOption: SummerMediaFileInfoCustomizable {
  var extractMode: ExtractMode {
    return .itunes
  }
  
  var fileType: FileTypes {
    return .all
  }
  
  var isBringUnknownFile: Bool {
    return false
  }

}
