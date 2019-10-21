# History
Including interesting history from this project. These are just `ffmpeg` and `gifsicle` commands
used to convert, scale, exclude audio, and optimize gifs from screen recordings.

Takeaways: 
* use `-c copy -an` to strip audio
* use `vf scale=800:-1` with `-1` for either width or height to maintain aspect ratio

Also, learned a new vim command to help curate this file. use `g/pattern/d` to
delete lines matching pattern. After deleting lines from history like `clear`,
`ls`, and `cd` eventually I realized all the commands were non-novel except for these
`ffmpeg` and `gifsicle` commands.

```
ffmpeg -i typing_typer_demo_short.mov typing_typer_demo_short.mp4
ffmpeg -i typing_typer_demo_short.mp4 -c copy -an typing_typer_demo_short_no_sound.mp4
ffmpeg -i typing_typer_demo.mp4 demo.gif
ffmpeg -i typing_typer_demo.mp4 -vf scale=567:276 demo_scaled.mp4
ffmpeg -i typing_typer_demo.mp4 -vf scale=568:276 demo_scaled.mp4
ffmpeg -i typing_typer_demo.mp4 -vf scale=800:-1 demo_scaled.mp4
ffmpeg -i demo_scaled.mp4 scaled.gif
gifsicle -O3 demo.gif
gifsicle -O3 scaled.gif > optimized.gif
ffmpeg -i take2.mov -vf scale=800:-1 take2_scaled.mp4
ffmpeg -i take2.mov -vf scale=800:396 take2_scaled.mp4
ffmpeg -i take2_scaled.mp4 -c copy -an take2_no_sound.mp4
ffmpeg -i take2_no_sound.mp4 take2.gif
ffmpeg -i take2.mov -c copy -an take2_muted.mp4
```
