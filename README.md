# ImageVersTxt: Image to ASCII Art Converter

> A small [Processing](https://processing.org/) sketch that turns any image into ASCII art and saves it as a
> text file.

![Processing](https://img.shields.io/badge/Processing-006699?logo=processingfoundation&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?logo=openjdk&logoColor=white)

An early project of mine (2018). It is a compact example of basic image processing:
downsampling and brightness analysis.

## How it works

1. **Pick an image.** A file chooser opens when the sketch starts.
2. **Downsample.** The image is split into a grid of 60 × 37 blocks.
3. **Measure brightness.** For each block, the sketch averages the `brightness()` of every pixel it contains.
4. **Map brightness to characters.** Each average (0–255) is mapped to a character from a "density ramp",
   ordered from darkest to lightest:

   ```
   @8#$d0cvj()~;:,"`  (space)
   ```

5. **Write the result** to `Result.txt` in the sketch folder.

## Usage

### Requirements

- [Processing 3+](https://processing.org/download)

### Run

```bash
git clone https://github.com/Reathe/ImageVersTxt
```

1. Open `ImageVersTxt/ImageVersTxt.pde` in Processing. The folder must be named `ImageVersTxt`, like the
   main sketch file.
2. Click **Run** (▶).
3. Select an image (`.png`, `.jpg`, ...) in the dialog that opens.
4. Open `Result.txt` in the sketch folder with a monospaced font.

### Customizing

In `ImageVersTxt.pde`:

- **Output size.** Change `ImgVersTab(int(60), int(37))` to get more or fewer columns and rows.
- **Character ramp.** Swap `asciiChars` for `asciiCharsInv` (for dark backgrounds), or use the longer
  70-character ramp left in the comments for finer shading.

## Project structure

```
ImageVersTxt/
├── ImageVersTxt.pde   # Entry point: file selection, character ramp, writing Result.txt
└── CalculsImage.pde   # Image → brightness matrix (block averaging)
```
