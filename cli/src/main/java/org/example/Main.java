package org.example;


import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.type.TypeReference;

public class Main {
    public static void main(String[] args) {

        Path inFilePath;
        List<String> lines = new ArrayList<>();
        String jsonString;

        try {
            // read the backup user data file
            inFilePath = Paths.get("reports", "users.json");
            lines = Files.readAllLines(inFilePath);
            jsonString = String.join("", lines);

            // map the string to a list of User objects
            ObjectMapper objectMapper = new ObjectMapper();
            List<User> users = objectMapper.readValue(jsonString, new TypeReference<List<User>>() {});

            // add an insert statement for each user object
            StringBuilder stringBuilder = new StringBuilder();
            for(User user : users){
                stringBuilder.append(
                        String.format("INSERT INTO users VALUES (%s, \"%s\", \"%s\", \"%s\"," +
                                "\"%s\", \"%s\", \"%s\"); \n", user.id, user.username, user.first_name,
                                user.last_name, user.email, user.avatar, user.password)
                                .replaceAll("'", "''")
                );
            }

            // write the file
            Path outPath = Paths.get("db", "seeds", "users.sql");
            Files.write(outPath, stringBuilder.toString().getBytes());

        } catch (Exception e) {
            System.out.println("something went wrong!!");
            e.printStackTrace();
        }


    }

}