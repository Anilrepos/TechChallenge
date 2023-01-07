'''
1. Python version 3.x
2. Install pandas library
    pip install pandas 
'''

import pandas as pd

object = {"a":{"b":{"c":"d"}}}

df = pd.json_normalize(object, sep='/')

x=df.to_dict(orient='records')[0]

print('key=' + ', '.join(str(y) for y in x.keys()))
print('value=' + ', '.join(str(y) for y in x.values()))