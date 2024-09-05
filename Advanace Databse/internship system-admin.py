import pydoc
import pandas  

Cnxn_str = ('Driver = {ODBC Driver 17 for SQL Server};''Server=MF086PC16\SQLEXPRESS;' 'Database=Internship;''Trusted)_Connection=yes;')

cnxn = pydoc.connect(Cnxn_str)

cursor=cnxn.cursor()

cursor.execute() 
