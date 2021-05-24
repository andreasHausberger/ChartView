import SwiftUI

/// A type of chart that displays a line connecting the data points
public struct LineChart: View, ChartBase {
    public var chartData = ChartData()

    @EnvironmentObject var data: ChartData
    @EnvironmentObject var style: ChartStyle
    
    public var lineDidSelect: ((Double) -> ())? = nil
    
    public init(lineDidSelect: ((Double) -> ())? = nil) {
        self.lineDidSelect = lineDidSelect
    }

	/// The content and behavior of the `LineChart`.
	///
	///
    public var body: some View {
        Line(chartData: data, style: style, didSelectValue: lineDidSelect)
    }
    
    public init() {}
}
