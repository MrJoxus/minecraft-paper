CHUNKY_PATH="Chunky"
EASY_CARTS_PATH="EasyCarts"
DYNMAP_PATH="dynmap"

.PHONY: ln-config ln-plugins ln-users

ln-config: 
#  basic configs
	mkdir -p ./data/config
	ln -f ./config/data/bukkit.yml ./data/bukkit.yml
	ln -f ./config/data/server.properties ./data/server.properties
	ln -f ./config/data/spigot.yml ./data/spigot.yml
	ln -f ./config/data/config/* ./data/config/

ln-plugins: 
# plugin chunky
	mkdir -p ./data/plugins/${CHUNKY_PATH}
	ln -f ./config/data/plugins/chunky/config.yml ./data/plugins/${CHUNKY_PATH}/config.yml

# plugin dynmap
	mkdir -p ./data/plugins/${DYNMAP_PATH}/templates
	ln -f ./config/data/plugins/dynmap/configuration.txt ./data/plugins/${DYNMAP_PATH}/configuration.txt
	ln -f ./config/data/plugins/dynmap/templates/* ./data/plugins/${DYNMAP_PATH}/templates/

# plugin easycarts
	mkdir -p ./data/plugins/${EASY_CARTS_PATH}
	ln -f ./config/data/plugins/easycarts/config.yml ./data/plugins/${EASY_CARTS_PATH}/config.yml

ln-users: 
	ln -f ./config/data/banned-players.json ./data/banned-players.json
	ln -f ./config/data/whitelist.json ./data/whitelist.json
	ln -f ./config/data/ops.json ./data/ops.json
