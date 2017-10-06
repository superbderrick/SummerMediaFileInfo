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
  
  func startProcessing(_ files:PHFetchResult<PHAsset>) {
    
    // Error
    if files.count < 0 {
      return
    }
    
    for i in 0 ..< files.count {
        let asset = files[i]
      
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        let fileIdentifier = asset.value(forKey: "localIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
        print("filelocal = \(fileIdentifier)")
      
  
      


        


    }
  }
}
