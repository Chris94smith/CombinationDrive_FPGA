# Combination Locked Memory

## Description
This code, when uploaded to an FPGA board, creates a 16-bit block of memory protected by a combination lock.

The device uses a finite state machine to transition between four functional states; 3-write, 0-lock, 1-read, and 2-lock.
The combination is hardcoded as 0101, 007 in binary.  The combination must be correctly input in order to enable read, write, and the 7-segment display.

The device starts off in state 3, which allows the user to input their data.  
When transitioning from state 3 to state 0, the data is saved to memory.  While in state 0 the switches can me moved freely without having an affect.
When transitioning from state 0 to state 1, if the combination is set correctly the data from memory is displayed.  If at any point during state 1 the combination is incorrect the memory is wiped and the data is gone for good.
State 2 relocks the device and the switches can be safely moved.  
