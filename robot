robot
	accept_input
	attr left_leg, right_leg
		walk
	attr l_hand, r_hand
		grasp
		drop
		rotate
		open
	kill_humans

knife
	cut
	spread
	load_ingredients

pb, jelly
	jar
		turn_counterclockwise #closed
		turn_clockwise #open

pb, jelly
	jar_lid
		turn_counterclockwise #open
		turn_clockwise #closed

raisin_bread
	put

french_toast
	put

plate
	put

table
	put


prompt "What bread do you want?"
bread_input = User Input

def which_bread
	if input == Raisin_bread
		def get_bread
			open bag of bread_input
			grasp 2 slices
			put 2 slices on plate
		end
		get_bread
	elsif input == French_toast
		get_bread
	else
		print "I only have french toast or raisin bread. Choose again."
	end
end

which_bread

def open_jar(l_hand, r_hand)
	if jar open = false
		grasp jar with l_hand
		grasp jar_lid with r_hand
		open (jar, jar_lid)
		put jar on table
		break if jar open = true
	else
		put jar on table
	end
end

open_jar(pb)
open_jar(jelly)
deploy_knife #What self-respecting robot doesn't have a built-in knife?

def load_knife(jar)
	grasp jar with l_hand
	lower knife into jar
	extract dollop of contents
		if contents == nil
			search for new jar
			deploy jar
		end
	r_hand.extend
end

def spread(condiment)
	with l_hand grasp 1 slice
	until level with r_hand lift slice
	move l_hand right
	move r_hand left
	when knife over slice knife.rotate 180
	break move when knife == end of bread
	return l_hand, r_hand to starting positions
end

