setImage = (image) ->
  if _.isString(image)
    file = getCacheFile(image)
    if file.exists() and file.read().toString() isnt "0"
      $.imageView.image = file.read()
    else
      $.imageView.image = image
    $.imageView.imagePath = image
  else
    $.imageView.image = image
  
getImage = ->
  $.imageView.imagePath or $.imageView.image
  
clearCache = ->
  if $.imageView.imagePath?
    file = getCacheFile $.imageView.imagePath
    file.deleteFile() if file.exists()
    
caching = ->
  if $.imageView.imagePath?
    file = getCacheFile $.imageView.imagePath
    file.write Ti.UI.createImageView(
      image: $.imageView.toBlob()
      width: Ti.UI.SIZE
      height: Ti.UI.SIZE
      preventDefaultImage: true
    ).toImage()

getCacheFile = (image)->
  cachePath = Ti.Filesystem.applicationDataDirectory + "../Library/Caches/"
  fileName = Ti.Utils.md5HexDigest image
  if $.imageView.hires and Ti.Platform.displayCaps.density is 'high'
    fileName += "@2x"
  fileName += "."
  Ti.Filesystem.getFile(cachePath, fileName)

toBlob = ->
  $.imageView.toBlob()
      
Object.defineProperty $, "image",
  get: getImage
  set: setImage

Object.defineProperty $, "top",
  get: $.imageView.getTop
  set: $.imageView.setTop
  
Object.defineProperty $, "bottom",
  get: $.imageView.getBottom
  set: $.imageView.setBottom
  
Object.defineProperty $, "left",
  get: $.imageView.getLeft
  set: $.imageView.setLeft
  
Object.defineProperty $, "right",
  get: $.imageView.getRight
  set: $.imageView.setRight

args = arguments[0] or {}
        
delete args.id
delete args.__parentSymbol

$.imageView.applyProperties args
  
exports.setImage = setImage
exports.getImage = getImage
exports.clearCache = clearCache
exports.caching = caching
exports.toBlob = toBlob

exports.on = $.imageView.addEventListener
exports.off = $.imageView.removeEventListener 