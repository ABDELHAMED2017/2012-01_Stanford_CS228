%NAIVEGETNEXTCLUSTERS Takes in a node adjacency matrix and returns the indices
%   of the nodes between which the m+1th message should be passed.
%
%   Output [i j]
%     i = the origin of the m+1th message
%     j = the destination of the m+1th message
%
%   This method should iterate over the messages in increasing order where
%   messages are sorted in ascending ordered by their destination index and 
%   ties are broken based on the origin index. (note: this differs from PA4's
%   ordering)
%
%   Thus, if m is 0, [i j] will be the pair of clusters with the lowest j value
%   and (of those pairs over this j) lowest i value as this is the 'first'
%   element in our ordering.


function [i, j] = NaiveGetNextClusters(P, m)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % YOUR CODE HERE
    % Find the indices between which to pass a cluster
    % The 'find' function may be useful
    %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [row,col] = find(P.edges);
    N=length(row);
    indx=mod(m,N);
    j=col(indx+1);
    i=row(indx+1);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end

