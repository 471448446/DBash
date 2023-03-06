# numeric argument required？
# bash的function返回值，只能是数字
versionName="1.0"
checkAppVersionName() {
    if ([[ $versionName == "" ]]); then
        appVersionName=""
        return
    fi
    host="www.baidu.com"
    appVersionName="--build-name=${versionName}"
}
checkAppVersionName
echo "$appVersionName"
ping ${host}
