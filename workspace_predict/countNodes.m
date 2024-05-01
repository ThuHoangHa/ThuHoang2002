function num = countNodes(tree)
    num = 0; % Kh?i t?o s? l??ng nút
    queue = {tree}; % Kh?i t?o hàng ??i v?i nút g?c

    % L?p qua t?ng nút trong cây
    while ~isempty(queue)
        % L?y nút ??u tiên ra kh?i hàng ??i
        node = queue{1};
        queue(1) = []; % Lo?i b? nút ?ã ???c x? lý

        % T?ng s? l??ng nút
        num = num + 1;

        % L?y danh sách các nút con
        children = children(node);

        % N?u nút hi?n t?i có các nút con, thêm chúng vào hàng ??i
        if ~isempty(children)
            queue = [queue, children];
        end
    end
end
