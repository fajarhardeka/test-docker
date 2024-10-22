#Menentukan base image dari dockerhub
FROM python:3.9

#Menentukan tempat kerja
WORKDIR /usr/src/app

#Copy requirement.txt ke dalam container
COPY requirement.txt ./

#Install dependensi (kebutuhan aplikasi)
RUN pip install --no-cache-dir -r requirement.txt

#Salin kode aplikasi ke dalam container
COPY . .

#Expose aplikasi pada sebuah port
EXPOSE 5000

#Jalankan aplikasi menggunakan command
CMD [ "python", "./app.py" ]