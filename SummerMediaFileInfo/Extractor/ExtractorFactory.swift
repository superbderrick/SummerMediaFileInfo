//
//  ExtractorFactory.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

struct ExtractorFactory{
  static func getExtractor(extractMode: ExtractMode) -> ExtractorProtocol {
    switch extractMode {
    case .cameraRoll:
      return CameraRollExtractor()
    case .itunes:
      return ItunesExtractor()
    case .intergration:
      return IntegrationExtractor()
    }
  }
  
}
