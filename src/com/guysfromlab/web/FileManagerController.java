package com.guysfromlab.web;

import com.guysfromlab.service.FileManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("file-manager")
public class FileManagerController {

    @Autowired
    private FileManagerService managerService;

    @GetMapping
    public List<String> getAllFilesInDirectory(String directory) throws IOException {
        return managerService.getFiles(directory, false);
    }

}
