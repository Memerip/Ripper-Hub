if game.PlaceId == 9144187696 then -- A Piece
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Memerip/Ripper-Hub/main/script/apiece.lua'))()
    
elseif game.PlaceId == 11983467451 then -- Ohio piece
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Memerip/Ripper-Hub/main/script/ohiopiece.lua"))()
    
else  -- Universal
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Memerip/Ripper-Hub/main/script/universal.lua"))()
end
