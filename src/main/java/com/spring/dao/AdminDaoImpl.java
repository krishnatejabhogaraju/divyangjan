package com.spring.dao;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.spring.model.SkillAndTraining;
import com.spring.model.SuccessStory;

public class AdminDaoImpl implements AdminDao {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public String fileUpload(MultipartFile file, String name, String path) {

		String dbPath = "";

		try {

			Date date = new Date();

			SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");

			byte[] bytes = file.getBytes();

			String fileName = file.getOriginalFilename();
			String contentType = file.getContentType();
			String extnName = fileName.substring(fileName.lastIndexOf(".") + 1);

			fileName = fileName.substring(0, fileName.lastIndexOf("."));

			name = name + "_" + format.format(date);

			dbPath = path + name + "." + extnName;

			String rootPath = "E:/Tomcat8/webapps";

			// String rootPath = "/home/user/Downloads/spring";

			File dir = new File(rootPath + path);

			if (!dir.exists())

				dir.mkdirs();

			File serverFile = new File(dir.getAbsolutePath() + File.separator + name + "." + extnName);

			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));

			stream.write(bytes);

			stream.close();

		} catch (Exception e) {

		}

		return dbPath;

	}

	@Override
	public int postSuccessStory(SuccessStory successStory, HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "INSERT INTO success_stories (name, title, story_desc, photo_path, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,'Y',GETDATE(),GETDATE())";

		Object[] args = new Object[] { successStory.getName(), successStory.getTitle(), successStory.getStory(),
				successStory.getDbPath(), loginId };

		int insertCount = jdbcTemplate.update(query, args);

		return insertCount;
	}

	@Override
	public int postSkillAndTraining(SkillAndTraining skillAndTraining, HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "INSERT INTO training_details (institue_name, courses_offered, location, duration, start_date, end_date, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

		Object[] args = new Object[] { skillAndTraining.getInstituteName(), skillAndTraining.getCouresesOffered(),
				skillAndTraining.getLocation(), skillAndTraining.getDuration(), skillAndTraining.getStartDate(),
				skillAndTraining.getEndDate(), loginId };

		int insertCount = jdbcTemplate.update(query, args);

		return insertCount;

	}

}
