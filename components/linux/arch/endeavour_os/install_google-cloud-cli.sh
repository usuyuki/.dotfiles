# yay経由だとcloud-sql-proxyまでうまく繋げないので手動インストール
# 厄介なのでセットアップには含めない
(cd ~ \
&& curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-437.0.1-linux-x86_64.tar.gz \
&& tar -xf google-cloud-cli-437.0.1-linux-x86_64.tar.gz \
&& ./google-cloud-sdk/install.sh )

logout
# .zshrcにパスが通らないと動かない
gcloud components install cloud_sql_proxy 
gcloud auth login 
