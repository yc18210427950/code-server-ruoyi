
java 启动
cd RuoYi-Vue
mvn package
cp -r ruoyi-admin/target/ruoyi-admin.jar .
java -jar ruoyi-admin.jar

vue 启动
cd RuoYi-Vue/ruoyi-uid
tyarn
tyarn dev --port 3000 --host 0.0.0.0

nginx 访问地址
IP:34738

