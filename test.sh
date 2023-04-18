script_folder=`dirname "$0"`
export PATH=`realpath "$script_folder"`:"$PATH"

mkdir TEST
cp conf TEST
cd TEST
git init
git annex init
export RCLONE_CONFIG_PASS=123
git annex initremote abc type=external externaltype=rclone2 encryption=none local_config=conf target=test --debug
git annex enableremote abc

cd ..
rm -rf TEST
