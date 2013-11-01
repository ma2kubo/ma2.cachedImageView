## ma2.cachedImageView

Titanium Mobile caches automatically remote image
This Widget to extend it

## Usage
 * Edit view.xml

```
<Widget id="imageView" src="ma2.cachedImageView"></Widget>		
 ```
 * Edit controllers.js or styles.tss

```
$.imageView.image = "http://hoge.com/hoge.png"
```
```
"#imageView": {
	image: "http://hoge.com/hoge.png"
}
```
 
## Methods

| Function   | Parameters | Usage |
| ---------- | ---------- | ----- |
| setImage | object   | imageURL or blob |
| getImage | object   | get Image property |
| caching |            | cache the image being displayed |
| clearCache  |            | delete the cached files |
| toBlob    |            | ImageView.toBlob |


## Changelog
* 1.1
  * caching method enable to work
* 1.0
  * Initial version

## License
The MIT License (MIT)

Copyright (c) 2013 kazuhiro matsukubo

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.