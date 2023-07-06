.PHONY: upload
upload:
	git add -A
	git commit -m "update"
	git push
	echo "lsp/servers.lua"
