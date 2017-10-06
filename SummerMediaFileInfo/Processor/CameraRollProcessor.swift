//
//  CameraRollProcessor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

open class CameraRollProcessor : SummerProcessor {
  fileprivate let imageManager = PHCachingImageManager()
  
  override public  init() {
    
  }
  
  func startProcessing(_ files:PHFetchResult<PHAsset>) -> [SummerFile] {

    var summerFiles = [SummerFile]()
    for i in 0 ..< files.count {
        let asset = files[i]
      
      
        let mediaType: MediaType = MediaType(rawValue: asset.mediaType.rawValue)!
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        let fileIdentifier = asset.value(forKey: "localIdentifier") as! String
      
      
      let summerFile = SummerFile(fileName:filename , fileFormat: fileFormat,
        fileIdentifier :fileIdentifier ,mediaType:mediaType)
      summerFiles.append(summerFile)

    }
      return summerFiles
    
  }
  
}
