FROM yongjhih/kotlin

ADD . ./kotlin-yana
WORKDIR ./kotlin-yana
RUN kotlinc ./src/mini.kt -include-runtime -d ./bin/mini.jar

CMD ["sh", "-c", "java -jar ./bin/mini.jar"]
