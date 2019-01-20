package com.guysfromlab.service;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

public interface FileManagerService {
    List<String> getFiles(String directory, boolean isRecursively) throws IOException;
}