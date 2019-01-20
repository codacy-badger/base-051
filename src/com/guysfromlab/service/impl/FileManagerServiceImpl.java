package com.guysfromlab.service.impl;

import com.guysfromlab.service.FileManagerService;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class FileManagerServiceImpl implements FileManagerService {

    private List<String> getFilesRecursively(String directory) throws IOException {
        List<String> directories;
        try (Stream<Path> pathStream = Files.walk(Paths.get(directory))) {
            directories = pathStream
                    .filter(Files::isRegularFile)
                    .map(Path::toString)
                    .collect(Collectors.toList());
        }
        return directories;
    }

    private List<String> getFilesAndFolders(String directory) {
        File file = new File(directory);
        // String[] dirs = file.list((dir, name) -> new File(dir, name).isDirectory());
        String[] dirs = file.list();
        return dirs == null ? new ArrayList<>() : Arrays.asList(dirs);
    }

    @Override
    public List<String> getFiles(String directory, boolean isRecursively) throws IOException {
        return isRecursively ? getFilesRecursively(directory) : getFilesAndFolders(directory);
    }
}
