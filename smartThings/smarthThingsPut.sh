#!/usr/bin/bash

function uploadImage {

   uid=${2/|*/}
   guid=${2/*|/}
   fileName=`basename ${4}`
   testImageName="test-`date +"%s"`.jpg"
op
   uploadResult=`curl --fail --show-error --silent \
       --form "guid=${guid}" \
       --form "uid=${uid}" \
       --form "Filename=${fileName}" \
       --form "sessionKey=${3}" \
       --form "sourceSystemName=YBA" \
       --form "sourceSystemType=F" \
       --form "categoryId=${5}" \
       --form "categoryName=${6}" \
       --form "Filename=@${4};filename=\"${testImageName}\"" \
       "${1}"`
   exit_on_error "Could not upload image"

   echo "${uploadResult}"
}

function smartThingsEndpoints {
   curl --header "Authorization: Bearer 94023cee-3df3-459d-9c6d-21750a4daee7" \
       --request GET \
       https://graph.api.smartthings.com/api/smartapps/endpoints

   echo "smartThings endpoints"
}

function smartThingsCommandListAll {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 99f97a91-edeb-48fc-bc71-29a741866674" \
       --request GET \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/list

   echo "smartThingsPut go"
}

function smartThingsPut {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 94023cee-3df3-459d-9c6d-21750a4daee7" \
       --request PUT \
       --data '{command: on}' \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/switches/000D6F0003043EEE

   echo "smartThingsPut go"
}

function smartThingsCommandOff {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 99f97a91-edeb-48fc-bc71-29a741866674" \
       --request PUT \
       --data '{command: off}' \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/switches/d36534c4-7694-46fd-99c2-bcb482847a1f

   echo "smartThingsPut go"
}

function smartThingsCommandOn {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 99f97a91-edeb-48fc-bc71-29a741866674" \
       --request PUT \
       --data '{command: strobe}' \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/switches/d36534c4-7694-46fd-99c2-bcb482847a1f

   echo "smartThingsPut go"
}

function smartThingsFredOff {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 99f97a91-edeb-48fc-bc71-29a741866674" \
       --request PUT \
       --data '{command: off}' \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/switches/86f4d6e2-1ce5-4ac9-a192-33af7bb27497

   echo "smartThingsPut go"
}

function smartThingsFredOn {
   curl --user admin:admin \
       --header "Content-Type:  application/json" \
       --header "Authorization: Bearer 99f97a91-edeb-48fc-bc71-29a741866674" \
       --request PUT \
       --data '{command: on}' \
       https://graph.api.smartthings.com/api/smartapps/installations/175f447e-bbff-4efc-b658-7930650ea93e/switches/86f4d6e2-1ce5-4ac9-a192-33af7bb27497

   echo "smartThingsPut go"
}

#uploadResult=`uploadImage "${uploadURI}" "${uploadToken}" "${ytoSessionKey}" "${testImage}" ${categoryId} "Academics"`

#[
#{"id":"86f4d6e2-1ce5-4ac9-a192-33af7bb27497","name":"CentraLite Switch","label":"Fred"},
#{"id":"8ef72248-01ec-414f-9d15-df869b279e43","name":"CentraLite Switch","label":"Helen"},
#{"id":"d36534c4-7694-46fd-99c2-bcb482847a1f","name":"SmartAlert Siren","label":"Runlikehell"},
#{"id":"343f71e2-4ebc-4cba-81f1-c4184f43cee2","name":"SmartSense Motion/Temp Sensor","label":"M2"}
#]


#smartThingsEndpoints
#smartThingsCommandListAll
#smartThingsPut
#smartThingsFredOff
smartThingsFredOn
smartThingsCommandOff
#smartThingsCommandOn 