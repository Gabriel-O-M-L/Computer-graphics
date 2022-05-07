function chess
  
  chess_board = 255*ones(8*20,8*20,'uint8');
  
  chess_board(1:20,21:40,:) = zeros(20,20,'uint8');
  
  chess_board(21:40,1:20,:) = chess_board(1:20,21:40,:);
  chess_board(61:80,1:20,:) = chess_board(1:20,21:40,:);
  chess_board(101:120,1:20,:) = chess_board(1:20,21:40,:);
  chess_board(141:160,1:20,:) = chess_board(1:20,21:40,:);
  
  chess_board(41:60,21:40,:) = chess_board(1:20,21:40,:);
  chess_board(81:100,21:40,:) = chess_board(1:20,21:40,:);
  chess_board(121:140,21:40,:) = chess_board(1:20,21:40,:);
  
  
  chess_board(21:40,41:60,:) = chess_board(1:20,21:40,:);
  chess_board(61:80,41:60,:) = chess_board(1:20,21:40,:);
  chess_board(101:120,41:60,:) = chess_board(1:20,21:40,:);
  chess_board(141:160,41:60,:) = chess_board(1:20,21:40,:);
  
  chess_board(1:20,61:80,:) = chess_board(1:20,21:40,:);
  chess_board(41:60,61:80,:) = chess_board(1:20,21:40,:);
  chess_board(81:100,61:80,:) = chess_board(1:20,21:40,:);
  chess_board(121:140,61:80,:) = chess_board(1:20,21:40,:);
  
  chess_board(21:40,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(61:80,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(101:120,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(141:160,81:100,:) = chess_board(1:20,21:40,:);
  
  chess_board(1:160,81:160,:) = chess_board(1:160,1:80,:)
  
  chess_board(21:40,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(61:80,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(101:120,81:100,:) = chess_board(1:20,21:40,:);
  chess_board(141:160,81:100,:) = chess_board(1:20,21:40,:);
  
  chess_board(1:20,141:160,:) = chess_board(1:20,21:40,:);
  chess_board(41:60,141:160,:) = chess_board(1:20,21:40,:);
  chess_board(81:100,141:160,:) = chess_board(1:20,21:40,:);
  chess_board(121:140,141:160,:) = chess_board(1:20,21:40,:);
  

  
 
  imshow(chess_board);
  end
