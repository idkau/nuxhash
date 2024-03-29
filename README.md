![logo](https://raw.githubusercontent.com/YoRyan/nuxhash/master/nuxhash/gui/icons/nuxhash_128x128.png)

nuxhash is a [NiceHash](https://nicehash.com) cryptocurrency mining client for
Linux. nuxhash consists of a headless daemon and an optional wxPython-based GUI.
It is currently in beta.

Donations: 3GWuZZehCcL2vmUZSxegqD7F8fKxNjqtPP

## Features

- Miner downloader
- Profit-switching
- Nvidia graphics cards
- NiceHash's proprietary [excavator](https://github.com/nicehash/excavator) miner
- Command-line and (optional) GUI interfaces

![GUI screenshot](https://raw.githubusercontent.com/wiki/YoRyan/nuxhash/gui_alpha.png)

```
nuxhashd initial setup
Wallet address: 3DJBpNcgP3Pihw45p9544PK6TbbYeMcnk7
Worker name: nuxhash
Region (eu/usa/hk/jp/in/br): usa

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   617    0   617    0     0   1402      0 --:--:-- --:--:-- --:--:--  1402
100 5618k  100 5618k    0     0  1283k      0  0:00:04  0:00:04 --:--:-- 1554k

CUDA device: GeForce GTX 1060 6GB (GPU-452679f3-ba2b-2cfe-4aff-5a50c4a32efb)
  excavator_equihash  .  287.41  H/s (warming up, 23 s)
```

## Dependencies

* Python 3.6 or later
* Nvidia's proprietary graphics driver for Linux, version 387.xx or later
* curl

Optionally, for the GUI interface:

* wxPython 4 for Python 3

## Quick Start

Install the following dependencies (this list is for Ubuntu 18.04 LTS):

* python3
* python3-pip
* curl
* ocl-icd-libopencl1 [(to run CUDA apps)](https://askubuntu.com/questions/1032430/opencl-with-nvidia-390-on-ubunut-18-04)


This step is optional, however creating a Virtual Python Environment helps to make life easier and you don't break your Systems Python instance and you can have multiple Versions at the same time.

Create a Python Virtual Environment using my provided script createvenv.sh like this

createvenv.sh "venvname" for example:
createvenv.sh nuxhashvenv
activate it following the scripts instructions (source...)

To enable the "nuxhash-gui" install this package:

python3-wxgtk4.0 (distro package)
for the next to work, you need to have gtk+ devel packages installed, on my Mageia Linux 9 this is installed by using:
$ urpmi lib64gtk+3.0-devel lib64gtk+3_0
install wxPython in to your Venv
$ pip install wxPython 

Then, install nuxhash, either for the user only in his $home or globally (running as root with sudo)

user only:
```
$ pip3 install pypubsub
$ pip3 install git+https://github.com/thetuxinator/nuxhash
```

globally as root:
```
$ sudo pip3 install pypubsub
$ sudo pip3 install git+https://github.com/thetuxinator/nuxhash
```

To start the daemon, run `nuxhashd`. To start the graphical interface, run `nuxhash-gui`.

### Donation Fee

nuxhash will donate 0.5% of its mining time to me. If you don't like this, you
may opt out by setting the flag in the configuration file (located by default at
`~/.config/nuxhash/settings.conf`). Currently, there are no penalties if you do
so, but please consider sending me a one-time donation.

## Roadmap

- [x] Daemon with basic mining logic
- [x] Automatic miner downloads and integrity checking
- [X] Finish wx-based GUI
- [ ] Implement other miners
- [ ] Support AMD devices

I have no plans to implement direct overclocking or fan control.
