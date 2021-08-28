FROM theteamultroid/ultroid:main

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .

RUN ./Ultroid
WORKDIR root/TeamUltroid


RUN pip3 install -r requirements.txt

CMD ./START
