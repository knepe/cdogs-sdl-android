Android port of C-Dogs SDL
========================

(based on C-Dogs 1.06)

            .--------.
           |  _______|
          /  /  __
         |  |  |  '-.   .---.  .---.  .---.
        /  /  /  /\  \ |  _  ||  ___||  __|
       |  |  |  |_/   || (_) || | __  \ \
      /  /  /        / |     || '-' |.-' `.
     |  |   '-------'   '---'  '----''----'
     /  '.___________
    |                |                  SDL
     `---------------'               


C-Dogs SDL is a classic overhead run-and-gun game. 
Customize your player, choose from up to 11 weapons,
and try the dozens of user-created campaigns. Have fun!

For more information about the original C-Dogs read 'original\_readme.txt'.

Android Play Store: https://play.google.com/store/apps/details?id=com.knepe.cdogs

This port is based on CDogs SDL port maintaned and developed by Cong <congusbongus@gmail.com>

Homepage: http://cxong.github.io/cdogs-sdl
Github: https://github.com/cxong/cdogs-sdl

Big thank you to pelya https://github.com/pelya/commandergenius

Quick compilation guide for Debian/Ubuntu (Windows is not supported, MacOsX should be okay though):
Install latest Android SDK, Android NDK r8b or newer, and "ant" tool (sudo apt-get install ant),
then launch commands:

    git submodule update --init --recursive project/jni/application/c-dogs/src    
    rm project/jni/application/src
    ln -s c-dogs project/jni/application/src
--modify src abit--
Rename src/cdogs/sys_config.h.cmake to sys_config.h and edit these lines:
#define CDOGS_SDL_VERSION "v[version here]"
#define CDOGS_DATA_DIR "/sdcard/Android/data/com.knepe.cdogs/files/"
#define CDOGS_CFG_DIR ".cdogs/"
--end modify src--
    ./build.sh
    
Contact me (knepe) <kneppedyr@gmail.com>
