from skimage import io
image = io.imread('mandrill.png')
io.imsave('mandrill2.png', image)
io.imshow(image)
io.show()
