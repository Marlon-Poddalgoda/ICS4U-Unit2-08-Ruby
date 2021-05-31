##
# This program creates 2 vehicle instances.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-28
# frozen_string_literal: true

load "Vehicle.rb"
load "Truck.rb"
load "Bike.rb"

begin
    # main stub

    # basic info
    puts "This program creates a truck and a bike instance."

    # new instances
    truck1 = Truck.new
    bike1 = Bike.new

    # variables
    license1 = "TRUCK-123"
    colour2 = "Black"
    truck_speed = 45
    truck_air = 20
    truck_brake = 10
    bike_speed = 20
    bike_brake = 2

    # TRUCK
    puts "The truck is in use."

    # change license method
    puts
    puts "The license for truck1 has been changed to: #{license1}"
    truck1.set_license(license1)

    # return wheels
    puts "The truck has #{truck1.get_wheels} wheels."

    # change speed method
    puts
    puts "Truck 1 has accelerated by #{truck_speed} km/h."
    puts "The current speed of the truck is " \
    "#{truck1.accelerate(truck_speed)} km/h."
    puts
    puts "The truck adds #{truck_air} PSI to the air brakes."
    puts "The current amount of pressurized air is " \
    "#{truck1.provide_air(truck_air)} PSI."
    puts
    puts "The truck tries to brake by #{truck_brake} km/h."
    puts "The current speed of the truck is " \
    "#{truck1.brake(truck_brake)} km/h."

    # BIKE
    puts
    puts
    puts "The bike is in use."

    # change colour method
    puts
    puts "The colour for the bike has been changed to: #{colour2}"
    bike1.set_colour(colour2)

    # return wheels
    puts "The bike has #{bike1.get_wheels} wheels."

    # change speed method
    puts
    puts "The bike has accelerated by #{bike_speed} km/h."
    puts "The current speed of the bike is " \
    "#{bike1.accelerate(bike_speed)} km/h."
    puts "The current cadence of the bike is " \
    "#{bike1.calc_cadence} rpm."
    puts
    puts "The bike rings the bell."
    bike1.ring_bell
    puts
    puts "The bike tries to brake by #{bike_brake} km/h."
    puts "The current speed of the bike is " \
    "#{bike1.brake(bike_brake)} km/h."

rescue StandardError
    # error catch
    puts
    puts "Sorry, invalid input. Please try again."
end

puts
puts "Done."
