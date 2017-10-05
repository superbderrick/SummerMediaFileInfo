//
//  SummerMediaFileInfoCustomizable.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

public protocol SummerMediaFileInfoCustomizable {
  var extractMode: ExtractMode { get}
  var fileType: FileTypes { get}
  var isBringUnknownFile : Bool { get }
}

public enum ExtractMode {
  case cameraRoll
  case itunes
  case intergration
}

public enum FileTypes {
  case video
  case photo
  case audio
  case all
}
