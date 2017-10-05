//
//  SummerMediaFileInfo.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

open class SummerMediaFileInfo  {
  open var fileType: ExtractMode
  
  open var summerFiles: [SummerFile]?
  
  
  
  // MARK: Properties
  fileprivate var allPhotos: PHFetchResult<PHAsset>!
  
  
  public  init() {
    self.fileType = ExtractMode.Both
    
    setupFileInfo()
  }
  
  
  fileprivate func setupFileInfo() {
    print("Test")
    
    let allPhotosOptions = PHFetchOptions()
    allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allPhotos = PHAsset.fetchAssets(with: allPhotosOptions)
    
    print("count : \(allPhotos.count)")
    
    if allPhotos != nil {
      for i in 0 ..< allPhotos.count {
        let asset = allPhotos[i]
        
        
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
        
        
      }
     
      //for number in 0..<(numbers.count-1)
    }
    
    

  }
  
  fileprivate func getFiles() {
    
  }
  

  
}


