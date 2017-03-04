add_lunch_combo omni_o7prolte-eng
add_lunch_combo omni_o7prolte-userdebug
function mkazip_o7prolte
{
cp device/samsung/o7prolte/META-INF.zip out/target/product/o7prolte/META-INF.zip 
cd out/target/product/o7prolte/
unzip META-INF.zip 
rm META-INF.zip 
zip twrp-$(date +%Y%m%d)-3.0.3-UNOFFICIAL-o7prolte.zip  -r recovery.img -r META-INF
cd ../../../../
}
