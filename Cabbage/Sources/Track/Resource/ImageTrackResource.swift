//
//  ImageTrackResource.swift
//  StickerPro
//
//  Created by HuangXin on 2021/12/2.
//


import AVFoundation
import CoreImage


/// Provide a Image as video frame
open class ImageTrackResource: Resource {
	
	public init(image: CIImage, duration: CMTime) {
		super.init()
		self.image = image
		self.status = .avaliable
		self.duration = duration
		self.selectedTimeRange = CMTimeRange(start: CMTime.zero, duration: duration)
	}
	
	required public init() {
		super.init()
	}
	
	open var image: CIImage? = nil
	
	open override func image(at time: CMTime, renderSize: CGSize) -> CIImage? {
		return image
	}
	
	open override func tracks(for type: AVMediaType) -> [AVAssetTrack] {
//		if type == .video {
//			let t = AVAssetTrack.l
//		} else {
//			return super.tracks(for: type)
//		}
		return super.tracks(for: type)
	}
	
	public override func trackInfo(for type: AVMediaType, at index: Int) -> ResourceTrackInfo {
		return super.trackInfo(for: type, at: index)
	}
	
	// MARK: - NSCopying
	open override func copy(with zone: NSZone? = nil) -> Any {
		let resource = super.copy(with: zone) as! ImageResource
		resource.image = image
		return resource
	}
	
}
