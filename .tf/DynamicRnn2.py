import numpy as np
#import tensorflow.python.debug as tf_debug
#from tensorflow import *
import tensorflow as tf
from tensorflow.contrib import eager as tfe
#import pudb;pu.db

tfe.enable_eager_execution()

#X = np.random.randn(2 , 10 , 8)
X = (2 , 1 , 1)
X = np.ones(X)
#X = np.random.randn(2 , 1, 1)
#X[0][0] = 1.p
#X[1][0] = 1.

print(X)

#X[1 , 6:] = 0
#X_lengths = [10 , 6]
X_lengths = [1,1]

#cell = tf.contrib.rnn.BasicLSTMCell(num_units = 1, state_is_tuple = True)
cell = tf.nn.rnn_cell.LSTMCell(num_units = 1, state_is_tuple = True)

cell_state = cell.zero_state(2 , tf.float64)
outputs , last_states = tf.nn.dynamic_rnn(
	cell = cell,
	dtype = tf.float64,
	initial_state = cell_state,
	inputs = X)

#sess = tf.Session()
#sess = debug.LocalCLIDebugWrapperSession(sess)
#sess.run(tf.global_variables_initializer())
#result = sess.run({'outputs' : outputs , 'last_states' : last_states}, feed_dict = None)
print(outputs)
