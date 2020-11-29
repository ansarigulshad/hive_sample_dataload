
```
yum clean all
yum install git -y
cd /var/tmp/
git clone https://github.com/ansarigulshad/hive_sample_dataload.git
```

```
cd script_datagenerator
chmod +x *.sh
sh get_required_sample_files.sh
```

```
vi load_data_to_hive.sh
# Update your Beeline JDBC COnnection string. For secured clusters, add hive principal in the string. Make sure string is valid
```

```
sh load_data_to_hive.sh
```
