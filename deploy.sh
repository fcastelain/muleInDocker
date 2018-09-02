# Remve the old version of the bus using anchor
rm ./mule/apps/muleindocker-anchor.txt

# Deploy the new version of the bus on mulesoft
cp ./maven/sourceCode/target/muleindocker-*.zip ./mule/apps/muleindocker.zip
