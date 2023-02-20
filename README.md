# taiko-web
A web-based Taiko no Tatsujin simulator.

Running instance: [https://taiko.bui.pm](https://taiko.bui.pm)

Still in development. Works best with Chrome.

## Setup

Just run:
```bash
docker-compose up -d --build
```

And web interface will be launch at http://127.0.0.1:9999/.
Also mongo-gui at http://127.0.0.1:4321/.

If you want to reset public assets to bui's specific, run following command:
```bash
git restore --source=f7617c1b7492e30011a1f08e8f3a023839aa41bd -- public/assets
```

Enjoy!
