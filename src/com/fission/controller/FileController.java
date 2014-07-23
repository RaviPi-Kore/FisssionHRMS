package com.fission.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fission.beans.FileMeta;

@Controller
@RequestMapping("/controller")
public class FileController {

	LinkedList<FileMeta> files = new LinkedList<FileMeta>();
	FileMeta fileMeta = null;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody
	LinkedList<FileMeta> upload(MultipartHttpServletRequest request, HttpServletResponse response) {

		Iterator<String> itr = request.getFileNames();
		MultipartFile mpf = null;

		while (itr.hasNext()) {

			mpf = request.getFile(itr.next());
			System.out.println(mpf.getOriginalFilename() + " uploaded! " + files.size());
			if (files.size() >= 10)
				files.pop();
			fileMeta = new FileMeta();
			fileMeta.setFileName(mpf.getOriginalFilename());
			fileMeta.setFileSize(mpf.getSize() / 1024 + " Kb");
			fileMeta.setFileType(mpf.getContentType());
			try {
				fileMeta.setBytes(mpf.getBytes());
				FileCopyUtils.copy(mpf.getBytes(), new FileOutputStream("D:/" + mpf.getOriginalFilename()));

			} catch (IOException e) {
				e.printStackTrace();
			}
			files.add(fileMeta);

		}
		return files;

	}
}
