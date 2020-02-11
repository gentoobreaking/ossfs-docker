#!/bin/sh

echo " - aliyun_access_key:${aliyun_access_key}"
echo " - aliyun_secret_key:${aliyun_secret_key}"
echo " - oss_bucket_name:${oss_bucket_name}"
echo " - oss_bucket_domain:${oss_bucket_domain}"

echo "${oss_bucket_name}:${aliyun_access_key}:${aliyun_secret_key}" > /etc/passwd-ossfs
chmod 600 /etc/passwd-ossfs
/usr/bin/ossfs "${oss_bucket_name}" /ossfs -f -ourl=http://"${oss_bucket_domain}"

# --- END --- #
