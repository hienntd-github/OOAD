package service;

import java.util.List;

import entity.Blog;

public interface IBlogService {
	public List<Blog> getAllBlog();
	public Blog getBlogByID(String bID);
	public void insertBlog(String details,  String blogName, String blogImage);
	public void deleteBlog(String bId);

}
