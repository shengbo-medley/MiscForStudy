from skimage import io
image = io.imread('mandrill.png')
print('(1)', type(image))
print('(2)', image.shape)
print('(3)', image[300, 400])
