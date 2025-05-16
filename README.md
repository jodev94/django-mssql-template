# django-mssql-template
A template for spinning up a rapid django mssql project.

Note: For mssql to work you likely will need the OBDC driver (currently 17 or 18). In `/scripts` there is a shell script to get this installed on various platforms.


### Notes

In `app_root/settings.py` make sure to modify for your credentials

```
DATABASES = {
    "default": {
        "ENGINE": "mssql",
        "NAME": "mydb",
        "USER": "user@myserver",
        "PASSWORD": "password",
        "HOST": "myserver.database.windows.net",
        "PORT": "",
        "OPTIONS": {
            "driver": "ODBC Driver 17 for SQL Server",
        },
    },
}
```