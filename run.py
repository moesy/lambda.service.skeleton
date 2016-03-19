import os
import ctypes

for d, _, files in os.walk('lib'):
    for f in files:
        if f.endswith('.a'):
            continue
        ctypes.cdll.LoadLibrary(os.path.join(d, f))

import sklearn
import pandas as pd
import numpy as np


def handler(event, context):
    return {
        'pandas': pd.__version__,
        'numpy': np.version.version,
        'sklearn':  sklearn.__version__

        }
