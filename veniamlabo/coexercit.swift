struct ColorMatrix {
    var red: [Float]
    var green: [Float]
    var blue: [Float]
    var alpha: [Float]
    var bias: [Float]
}

let originalImage = UIImage(named: "example.png")

let colorMatrix = ColorMatrix(
    red: [1, 0, 0, 0, 0],
    green: [0, 1, 0, 0, 0],
    blue: [0, 0, 1, 0, 0],
    alpha: [0, 0, 0, 1, 0],
    bias: [0, 0, 0, 0, 1]
)

if let filteredImage = applyColorFilter(to: originalImage, using: colorMatrix) {
    // Use the filtered image (e.g., display it in an image view)
}
