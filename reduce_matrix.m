function retval = reduce_matrix(M)
  # Takes a matrix, M, that is expected to have dimensions 2xN
  # and reduced the matrix by summing rows with the same value in
  # the first column
  
  retval = [];

  size = length(M);
  
  for i=1:size,
    curr = M(i,1);
    if length(retval)
      if any(ismember(retval,curr)(:,1))
	continue
	end# if
    end

    newval = sum(M(ismember(M(:,1),curr),:),1)(2);
    retval = [curr,newval;retval];
    end# for loop
  
endfunction
