import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
import pylab as pylab


n_groups = 3

workloads = ('CPU', 'GPU w/o cuDNN', 'GPU w cuDNN')
ssd = (3000, 259.013, 201.41)
yolo = (20000, 186.364, 204.918)

fig = plt.figure(figsize=(10,6))
ax = fig.add_subplot(111)
index = np.arange(n_groups)
bar_width = 0.3
			 
rects1 = plt.bar(index, ssd, bar_width, zorder=4, color='0.8', label="SSD")
rects2 = plt.bar(index+bar_width, yolo, bar_width, zorder=4, color='0.6', label="YOLO") 

plt.ylabel('Time [msec]',fontsize=16)

ax.yaxis.grid(linestyle='-', zorder=0, alpha=0.5)
plt.tick_params(axis='x', bottom='off', top='off')
plt.legend(loc=1)
ax.set_xlim([-0.2, 2.82])
ax.set_ylim([0, 300])

plt.subplots_adjust(top=0.26)

plt.xticks(index+0.3, workloads, fontsize = 14, rotation=0)
plt.tick_params(axis='x', pad=12)

plt.tight_layout()
plt.show()



