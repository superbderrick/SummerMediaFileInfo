//
//  CameraRollExtractor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

class CameraRollExtractor: ExtractorProtocol{
  // MARK: Properties
  fileprivate var allPhotos: PHFetchResult<PHAsset>!
  
  func getFileInfo() {
    let allPhotosOptions = PHFetchOptions()
    allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    self.allPhotos = PHAsset.fetchAssets(with: allPhotosOptions)
    
    print("count : \(allPhotos.count)")
    
    if allPhotos != nil {
      for i in 0 ..< allPhotos.count {
        let asset = allPhotos[i]
        
        
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
      }
      
    }
    
  }
  
 
  
  
  
  
 
  
  func setup() {
   print(" getFileInfos from setup")
  }
  
   func getFileInfos() {
    
    
  }
  
  
}
