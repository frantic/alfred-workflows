all: clean 4shared naver.movie torrent rotten geny

clean:
	rm -f workflows/*.alfredworkflow

4shared:
	cd net.yakiyama.alfred.4shared ; \
	zip ../workflows/4shared.alfredworkflow . -r --exclude=*.DS_Store* --exclude=*.pyc*
	cd ../ ; \

naver.movie:
	cd net.yakiyama.alfred.naver.movie ; \
	zip ../workflows/naver.movie.alfredworkflow . -r --exclude=*.DS_Store* --exclude=*.pyc*
	cd ../ ; \

torrent:
	cd net.yakiyama.alfred.torrent ; \
	zip ../workflows/torrent.alfredworkflow . -r --exclude=*.DS_Store* --exclude=*.pyc*
	cd ../ ; \

rotten:
	cd net.yakiyama.alfred.rotten ; \
	zip ../workflows/rotten.alfredworkflow . -r --exclude=*.DS_Store* --exclude=*.pyc*
	cd ../ ; \

geny:
	cd net.yakiyama.alfred.genymotion ; \
	zip ../workflows/genymotion.alfredworkflow . -r --exclude=*.DS_Store* --exclude=*.pyc*
	cd ../ ; \