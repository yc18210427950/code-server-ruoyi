git clone https://gitee.com/y_project/RuoYi-Vue.git
cd RuoYi-Vue
rm -rf .git
cp -r ruoyi-admin/target/ruoyi-admin.jar .

echo "12345678" | sudo mkdir -p /ruoyi && sudo chmod -R 7777 /ruoyi

java -jar ruoyi-admin.jar

cd ruoyi-ui
tyarn
tyarn dev