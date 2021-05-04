git clone -b master https://github.com/CPSC430AlumniDB/AlumniDB.git
cd AlumniDB
cd alumni-search
npm install
cd frontend
npm install
cd pages
sed -i 's/localhost/34.123.130.56/' *
cd ../lib
sed -i 's/localhost/34.123.130.56/' *
cd ..
cd ..
sed -i 's/INSERT INTO admin//' *.sql
psql -f alumnidb.sql
pm2 start server.js
cd frontend
pm2 start 'npm run dev'

