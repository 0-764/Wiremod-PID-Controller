<h1 align="center"> Wiremod PID Controller </h1> <br>
<p align="center">
  <img alt="PID Crawling Car" title="PID Car" src="https://github.com/j10max-git/Wiremod-PID-Controller/blob/master/preview.gif?raw=true" width="450">  
</p>

<p align="center">
  This script was created in Wiremod E2 to implement a PID controller into Garrysmod.   
</p>

<p align="center">
  <a href="https://gmod.facepunch.com/">
    <img alt="Garrysmod" title="Garrysmod" src="http://cdn.edgecast.steamstatic.com/steam/apps/4000/header.jpg?t=1497714104" height="65">  
  </a>
  <a href="https://github.com/wiremod">
   <img alt="Wiremod" title="Wiremod" src="http://www.dallatorre.tk/wp-content/uploads/2015/12/WIRE.jpg" height="65">
  </a>
</p>

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Future Features](#future-features)
- [How to start](#how-to-start)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## Introduction

With an expression 2 chip and this code, you can implement control for processes that require accurate and optimised automation. 

An everyday example of the use of a PID is cruise control for a road vehicle; where external influences such as gradients would cause speed changes, and the driver has the ability to alter the desired set speed. This is previewed within Garrysmod above.

## Features

* P, PI & PID Controller
* Derivative Kick Elimination
* Reset Windup Mitigation
* Enabled/Disabled states (Automatic / Manual)
* Intergral Continuous Tuning
* Output Limit Ranges

## Future Features

* Graphical output of PID (Input vs Output)
* Automatic PID tuning (Process Response Analysis)
* Different Methods of Tuning 
* Implement alternative PID controller types

## How to start
It's simple to setup:-
1. Place an E2 chip in the world using the "Expression 2" wiremod tool.
2. Upload the contents of the "CODE.lua" to the E2 chip and save.
3. Wire the correct inputs and outputs to the CHIP using the wire tool.
  <i>The I/O for the controller is explaied within the CODE</i>
3. Set the enable input to 1 i.e. wiremod button

## Acknowledgements
Thanks to [br3ttb](http://brettbeauregard.com/blog/2011/04/improving-the-beginners-pid-introduction/) for explaining PID code in Arduino

## License
This project is licensed under the MIT license - see the [LICENSE.md](LICENSE.md) file for details.
