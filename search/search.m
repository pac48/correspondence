function out = search(D, expandFunc, goalFunc)
% states must be vertical vectors

addpath('search/pq/')
maxSize = 1e4;
pq = pq_create(maxSize);
% pq is a max priority queue!! Make sure costs are negated

D = D - min(D, [],'all') + 10;

costMatrix = zeros(size(D,1)+1, size(D,2)) + inf;
states = zeros(numel(D), 3); % y, x, parent

state2ID = @(s) sub2ind(size(costMatrix), s(1), s(2));
ID2state = @(id) ind2sub(size(costMatrix), id);


% for i = 1:size(startStates,2)
%     cost = D(startStates(1,i), startStates(2,i));
%     pq_push(pq, state2ID(startStates(:,i)), -cost);
%     costMatrix(startStates(1,i), startStates(2,i) ) = cost;
% end

out = [];
found = false;

state = [size(D,1)+1; size(D,2)];
id = state2ID(state);
costMatrix(state(1), state(2)) = 0;
states(id, 1:2) = state;

pq_push(pq, id, -0);


while pq_size(pq) > 0

    stateInd = pq_top(pq);
    pq_pop(pq);

    [r,c] = ID2state(stateInd);
    state = [r;c];
%     costMatrix(state(1), state(2)) = costMatrix(state(1), state(2)) + D(state(1), state(2));

    if goalFunc(state)
        found = true;
        break;
    end
    newStates = expandFunc(state);

    for i = 1:size(newStates,2)
        newStatesi = newStates(:, i);
        if newStatesi(1) > size(costMatrix,1) || newStatesi(2) > size(costMatrix,2)|| ...
                newStatesi(1) <= 0 || newStatesi(2) <= 0 % skip out of bounds
            continue
        end
        addedCost = 0;
        if newStatesi(1) < state(1) %&& state(1) <= size(D,1) 
            addedCost = D(newStatesi(1), newStatesi(2)); %% cost only counts if vertical
        end
        if ...%costMatrix(newStatesi(1), newStatesi(2)) == 0 || ...
                addedCost + costMatrix(state(1), state(2)) < costMatrix(newStatesi(1), newStatesi(2))
            cost = addedCost + costMatrix(state(1), state(2));
            id = state2ID(newStatesi);
            pq_push(pq, id, -cost);
            costMatrix(newStatesi(1), newStatesi(2)) = cost;
            states(id, 1:2) = newStatesi;
            states(id, 3) = stateInd; 
        end

    end

end

if found
    while true
        out = cat(2, out, state);
        id = state2ID(state);
        childID = states(id, 3);
        if childID==0
            break;
        end
        state =  states(childID, 1:2)';
    end
end

end