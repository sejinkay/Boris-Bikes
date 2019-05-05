# Boris Bikes Challenge

Week 1 Challenge at [Makers Academy](https://makers.tech/)

How to run
----

1. Clone this repo
2. Run bundle install
3. Run `irb -r ./lib/DockingStation.rb`
4. Good to go!




Task
----
Transport for London, the body responsible for delivery of a new bike system,
come to you with a plan:
a network of docking stations and bikes that anyone can use.
They want you to build a program that will emulate all the docking stations, bikes, and infrastructure
repair staff, and so on) required to make their dream a reality.


User story
----

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```
