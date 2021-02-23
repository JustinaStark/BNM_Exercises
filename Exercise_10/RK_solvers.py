import numpy as np
from math import sqrt, exp


def get_stages(yn, A, c, h, t, f):
    # f = function
    s = len(c) # number of stages
    m = len(yn) # number of differential equations in system
    k = np.zeros([s, m]) # initialize empty array for stages
    k[0] = f(t + c[0] * h, yn) # initial stage k1
    # Compute stages k2, k3, k4, ... 
    for i in range(1, s):
        sum_prevStages = sum([A[i][j] * k[j] for j in range(i)])
        k[i] = f(t + c[i] * h, yn + h * sum_prevStages) 
    return k

def runge_kutta_solver(yn, A, b, c, h, t, f):
    # yn = approx. sol. of prev. timepoint
    # A = spatial shift matrix
    # b = averaging weight vector of length s (s = #stages)
    # c = temporal shift vector of length s 
    s = len(c) # number of stages
    k = get_stages(yn, A, c, h, t, f)
    y_nplus1 = yn + h * sum([b[i] * k[i] for i in range(s)]) # compute approx. solution y of next time point
    return y_nplus1
    

def rk_time_stepper(y0, A, b, c, h, t0, tf, f):
    # Call the runge kutta solver for all time points
    time = np.arange(t0, tf+h, h);
    N = len(time) # total number of time steps
    y_all_timesteps = np.zeros([N, len(y0)]) # initialize empty array for solutions of all time steps
    y_all_timesteps[0] = y0 # initial condition
    for n in range(1, N):
        y_all_timesteps[n] = runge_kutta_solver(y_all_timesteps[n-1], A, b, c, h, time[n], f);
    return time, y_all_timesteps
