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
  
  override public  init() {
    
  }
  
  func startProcessing(_ files:PHFetchResult<PHAsset>) {
      for i in 0 ..< files.count {
        let asset = files[i]
        
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
      }
  }
}
