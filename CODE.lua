#
# Name:             PID Controller
# Version:          1.0
# Authors:          j10max
# Last Updated:     05/02/2018
#
@name PID
@inputs Input Setpoint Enabled Kp Ki Kd OutputMin OutputMax
@outputs Output
@persist  

# INPUT:            
# OUTPUT:            
# SETPOINT:  
# KP:               Proportional Gain
# KI:               Integral Gain
# KD:               Derivative Gain
# ENABLED:          1 == Enabled, 0 == disabled
# OUTPUTMIN:        Minimum PID output value (default: 0)
# OUTPUTMAX:        Maximum PID output value (dependent on the input)

# Local Variables
LastTime = 0
ErrSum = 0
LastInput = 0 
ITerm = 0
LastErr = 0

# Compute the Proportional, Integral & Derivative Controllers
function compute() {

    ## Manual Mode Avoids PID
    if(Enabled == 0){
        return
    }

    # Calculate system time
    Now = systime()
    TimeChange = Now - LastTime
    
    # Compute working error variables
    Err = Setpoint - Input
    ITerm += (Ki * Err)
    
    # Windup
    if(ITerm > OutputMax) {
        ITerm = OutputMax 
    } elseif (ITerm < OutputMin) {
        ITerm = OutputMin 
    }
    
    # Derivative input change
    DInput = (Input - LastInput)
    
    # Calculate Output
    Output = (Kp * Err) + ITerm - (Kd * DInput)
    
    # Validate Output with Max and Min ranges
    if(Output > OutputMax) {
        Output = OutputMax   
    } elseif(Output < OutputMin) {
        Output = OutputMin
    }
    
    # Remember variables for next loop iteration
    LastErr = Err
    LastTime = Now 
}

# Initialise the PID
function init() {
    hint("PID Controller Initialised [" + Kp + ", " + Ki + ", " + Kd + "]", 3)  
    
    LastInput = Input
    ITerm = Output
    if(ITerm > OutputMax) {
        ITerm = OutputMax   
    } elseif(ITerm < OutputMin) {
        ITerm = OutputMin
    }
}

# Constructor
if(first()) {
    init()
    runOnTick(10) 
} 

## PROGRAM START
compute()



















