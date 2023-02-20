# taiko-web
A web-based Taiko no Tatsujin simulator.

Running instance: [https://taiko.bui.pm](https://taiko.bui.pm)

Still in development. Works best with Chrome.

## Setup

Just run:
```bash
docker-compose up -d --build
```

And taiko-web instance will be launch at http://127.0.0.1:9999/.
Also mongo-gui at http://127.0.0.1:4321/.

If you want to reset public assets to bui's specific, run following command:
```bash
git restore --source=f7617c1b7492e30011a1f08e8f3a023839aa41bd -- public/assets
```

If you want to add songs, here is step by step.
1. Open taiko-web instanace.
2. Create account with button on bottom left corner.
3. Open mongo-gui.
4. Navigate to `taiko`, then `users`.
5. Increase user_level from 1 to 100 you created user.
6. Go back to taiko-web instance, add `/admin/songs/new` to address bar.
7. Type need information about songs. Remember song id, you can find it to top.
8. Click `Save` to done.
9. Create `main.tja`, `main.mp3` or `main.ogg` in `public/songs/<id>` folder. See  details at https://web.archive.org/web/20230103093909/https://github.com/bui/taiko-web/wiki/Adding-songs.

Enjoy!
