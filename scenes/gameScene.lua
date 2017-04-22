gameScene = Scene("gameScene")

--Componentes
GameHexMap = Component("hexmap", {
	map = HexMap(6,5)
	})

--Scripts
require("mapRenderer")



function gameScene:init()
	map = Coisa("map", {GameHexMap})

	map.hexmap.map.map[2][2].tipo = 2
	map.hexmap.map.map[3][2].tipo = 2
	map.hexmap.map.map[3][3].tipo = 2
	map.hexmap.map.map[4][2].melhoria = 1
	map.hexmap.map.map[4][3].melhoria = 2
	map.hexmap.map.map[4][1].melhoria = 2
end

function gameScene:draw()

end

return gameScene
