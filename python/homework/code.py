import numpy as np
import pylab as pl

xs = np.linespace (1, 10, 100)

pl.plot (xs, np.cos(xs), label="cos(x)")

pl.show()