import SwiftUI

extension CGPoint {
	
	/// Calculate X and Y delta for each data point, based on data min/max and enclosing frame.
	/// - Parameters:
	///   - frame: Rectangle of enclosing frame
	///   - data: array of `Double`
	/// - Returns: X and Y delta as a `CGPoint`
    static func getStep(frame: CGRect, data: [Double]) -> CGPoint {
        // stepWidth
        var stepWidth: CGFloat = 0.0
        if data.count < 2 {
            stepWidth = 0.0
        }
        stepWidth = frame.size.width / CGFloat(data.count - 1)

        // stepHeight
        let stepHeight: CGFloat = frame.size.height / CGFloat(data.count - 1)
        return CGPoint(x: stepWidth, y: stepHeight)
    }
}
