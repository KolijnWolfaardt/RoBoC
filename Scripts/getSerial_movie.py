import serial
import matplotlib
matplotlib.use('TkAgg') 
from matplotlib import pyplot as plt
import scipy
from array import array
import numpy as np
import time
import png
import time
import matplotlib.animation as animation
plt.rcParams['animation.ffmpeg_path'] = 'ffmpeg.exe'

dpi = 100

def log(theString):
	#Get the time
	theTime  = time.time();

	print "{:10s} {}".format(str(theTime),theString)



def getFrame(n):
	#Due to UNO32, we need to wait for the UART to start
	ser.write("a")
	log("Waiting for 0 bytes")
	data = 444
	while not data == 0:
		data = array("B", ser.read(1))[0]

	log("Found, reading row")
	#other
	ser.read(4)


	#Read at least 3 frames, search through it for a start character
	for i in range(70):
		dataAsString = ser.read(88)

		dataAsBytes = array("B", dataAsString)
		dataAsBytes = np.array(dataAsBytes)

		image[i,:] = dataAsBytes

	im.set_data(image)
	plt.draw()
	return im
	


# Start by creating a figure
fig = plt.figure()
ax = fig.add_subplot(111)
ax.set_aspect('equal')
ax.get_xaxis().set_visible(False)
ax.get_yaxis().set_visible(False)

#Create the data to store to
image = np.zeros((70,88))
image[0,0] = 255
im = plt.imshow(image,cmap='gray',interpolation="nearest")
plt.show(block=False)
#plt.tight_layout()

ser = serial.Serial(2,1640000,timeout=8,writeTimeout=5)

	
ani = animation.FuncAnimation(fig,getFrame,frames=100,interval=50)
#writer = animation.writers['ffmpeg'](fps=30)

FFwriter = animation.FFMpegWriter()
ani.save('demo.mp4',writer=FFwriter,fps=20)
# timestamp = int(time.time())
# f = open("output_{}.png".format(timestamp),'wb')
# pngWriter = png.Writer(88, 70, greyscale=True)
# pngWriter.write(f,image)
# f.close()
# log("Done")



plt.show()

ser.close()
exit()







