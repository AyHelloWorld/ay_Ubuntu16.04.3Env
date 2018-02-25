
import numpy as np
#import tensorflow.python.debug as tf_debug
from tensorflow import *
import tensorflow as tf

#X = np.random.randn(2 , 10 , 8)
X = (2 , 1 , 1)
X = np.ones(X)
#X = np.random.randn(2 , 1, 1)
#X[0][0] = 1.
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
	sequence_length = X_lengths,
	initial_state = cell_state,
	inputs = X)

'''
result = tf.contrib.learn.run_n(
	{'outputs' : outputs , 'last_states' : last_states},
	n = 1,
	feed_dict = None)

print(result)
sess = tf.Session()
#writer = tf.summary.FileWriter('logs/' , sess.graph)
init = tf.global_variables_initializer()
sess.run(init)
print(sess.run(result))
'''
sess = tf.Session()
sess = debug.LocalCLIDebugWrapperSession(sess)
sess.run(tf.global_variables_initializer())
result = sess.run({'outputs' : outputs , 'last_states' : last_states}, feed_dict = None)
print(result)

