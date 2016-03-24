# DeepDarkFantasy

	I'm hired for people to fulfill their fantasies. Their **DEEP DARK FANTASIES**. - Van Darkholme

Sorry, It's just a joke. It makes [DeepDream](https://github.com/google/deepdream) video with using ffmpeg and caffe. **This project is targeted at Ubuntu 14.04 LTS**.

## Requirement

Install [CUDA 7.5](https://developer.nvidia.com/cuda-downloads) yourself. Then our Install Script will install every dependencies.

## How to Use?

- In first, Run Installer Script.
```shell
$ ./setup.sh
```

- After setup, Set your configure file. If you are using vim, 
```shell
$ vi configure.conf
```
or if you are using emacs, 
```shell
$ sudo apt-get remove emacs
$ vi configure.conf
```

- And, Run main script.
```shell
$ ./main.sh
```

- Feel **DEEP DARK FANTASIES**.

## Configure Options
 - **INPUT_FOLDER**: Temporary Input Folder for Extracting video. 
 - **OUTPUT_FOLDER**: Temporary Output Folder for Processing frames.
 - **VIDEO_FILE**: Video file for process.
 - **OUTPUT_FILE**: Output video file.
 - **FRAMERATE**: Video's Framerate
 - **MODEL_IMAGE**: Deep Dream Model Image
 - **THREADS**: CPU's threads. (Only for ffmpeg)
 - **ITERATIONS**: Iterations when processing images.
 - **OCTAVES**: Octaves when processing images.
 - **OCTAVES_SCALE**: Octaves Scale when processing images.