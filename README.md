# taiko-web
A web-based Taiko no Tatsujin simulator.

Running instance: [https://taiko.pages.dev](https://taiko.pages.dev)

Still in development. Works best with Chrome.

## Note for Windows

For Windows users, run this command and re-clone this repository:
```bash
git config --global --unset core.autocrlf
```

Because came to be there are no different because of line endings between operating systems by this repository.

## Setup

To launch the taiko-web instance, simply run:
```bash
docker-compose up -d --build
```

The taiko-web instance can be accessed at http://127.0.0.1:9999/. You can also access mongo-gui at http://127.0.0.1:4321/.

## Reset assets

If you want to reset the public assets to the original version by bui, you can use the following command:
```bash
git restore --source=f7617c1b7492e30011a1f08e8f3a023839aa41bd -- public/assets
```

This will revert the public/assets folder to the specific commit (f7617c1b7492e30011a1f08e8f3a023839aa41bd) where the original assets were added by bui.

Note that if you have made changes to the public/assets folder, they will be overwritten by this command. If you want to keep your changes and still use the original assets, you can make a backup copy of your current public/assets folder before running the command, and then manually merge any changes you made with the original assets.

This command resets the public assets to the original version added by bui, useful if you want to understand changes from original to current or start with the original assets.

## Adding songs

If you want to add songs, here is step by step.
1. Open the taiko-web instance.
2. Create an account with the button on the bottom left corner.
3. Open mongo-gui.
4. Navigate to `taiko`, then `users`.
5. Increase the user_level of the user you created from 1 to 100 to grant admin privileges.
6. Go back to the taiko-web instance and add `/admin/songs/new` to the address bar.
7. Enter the necessary information about the song. Remember the song ID, which can be found at the top.
8. Click `Save` to finish.
9. Create `main.tja` for a TJA and (`main.mp3` or `main.ogg`) for a song in a `public/songs/<song ID>` folder. For more details on adding songs, see https://web.archive.org/web/20230103093909/https://github.com/bui/taiko-web/wiki/Adding-songs.

## Let's go

Enjoy!
