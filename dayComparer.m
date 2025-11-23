function subjectId = dayComparer(subjectId, day1, day2)
%The purpose of this function is to return subject IDs of individuals who
%show an increase between two days of strength testing.
%
%Inputs: 
%Subject IDs
%Day 1 = The first day you'd like to pull data from. For example, if you'd
%like to compare Day 2 to Day 3, Day 2 would be be called in the Day 1
%input slot.
%Day 2 = The second day you'd like to pull data from. For example, if you'd
%like to compare Day 2 to Day 3, Day 3 would be be called in the Day 2
%input slot.
%
%Outputs:
%The subject ID numbers who showed an increased between the two days. 
    
subjectId = subjectId(day2 > day1);

end
