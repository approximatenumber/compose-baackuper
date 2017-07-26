# compose-backuper
Little image for backing up mounted volumes (automatically).

**This image is for using inside [compose-backuper-script](https://github.com/approximatenumber/compose-backuper-script)! 
Please use it if you want to backup your named volumes from docker-compose.yml**

### Usage

To automatically backup mount dir to backup to `/mnt/src` and destination directory to `/mnt/dst`.

Also you need to add argument for name of backup. For example, `my_service`.

Run:

`docker run -v /opt/app:/mnt/src -v /mnt/disc:/mnt/dst --rm compose-backuper my_service`

You\`ll find `/mnt/disc/my_service.tar.gz`.
