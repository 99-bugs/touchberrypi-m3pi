require "mazebots/version"

require "touchberrypi"
require "m3pi"

module Mazebots

	class Mazebots

		include Touchberrypi
		include M3pi

		def initialize
			keyboard = Keyboard.new

			serial = SerialPort.new '/dev/ttyUSB0', 9600
			#serial.open

			robot = Robot.new [0x00,0x13,0xA2,0x00,0x40,0xB4,0x10,0x5D], serial

			direction = "stop"

			keyboard.on_key_down do |key|
			direction = key
			end

			keyboard.on_key_up do |key|
				direction = "stop"
			end

			loop do
				#puts direction
				case direction
				when "UP" #forward
					robot.forward
				when 'LEFT' #left
					robot.left
				when 'DOWN' #back
				        robot.reverse
				when 'RIGHT' #right
					robot.right
				end
				sleep 0.05			
			end
		end
	end

end

