FROM theteamultroid/ultroid:main

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .

RUN ./Ultroid
WORKDIR root/TeamUltroid


RUN pip3 install -r requirements.txt
RUN pip3 uninstall pytgcalls -y
RUN pip install -U pytgcalls==3.0.0.dev6

CMD ./START
