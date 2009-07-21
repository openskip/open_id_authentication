export GEMNAME="openskip-open_id_authentication"
rm -rf ./pkg && rake package && gem install pkg/${GEMNAME} --no-rdoc --no-ri && gem clean ${GEMNAME}
