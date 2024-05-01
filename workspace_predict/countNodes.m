function num = countNodes(tree)
    num = 0; % Kh?i t?o s? l??ng n�t
    queue = {tree}; % Kh?i t?o h�ng ??i v?i n�t g?c

    % L?p qua t?ng n�t trong c�y
    while ~isempty(queue)
        % L?y n�t ??u ti�n ra kh?i h�ng ??i
        node = queue{1};
        queue(1) = []; % Lo?i b? n�t ?� ???c x? l�

        % T?ng s? l??ng n�t
        num = num + 1;

        % L?y danh s�ch c�c n�t con
        children = children(node);

        % N?u n�t hi?n t?i c� c�c n�t con, th�m ch�ng v�o h�ng ??i
        if ~isempty(children)
            queue = [queue, children];
        end
    end
end
