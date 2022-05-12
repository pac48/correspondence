# from apply_net_live import *

cam = None

def free_globals():
    global cam
    del cam

free_globals()