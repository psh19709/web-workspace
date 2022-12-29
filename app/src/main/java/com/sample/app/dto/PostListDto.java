package com.sample.app.dto;

import java.util.Date;

public class PostListDto {

   private int no;
   private String title;
   private String userName;
   private int readCount;
   private int commentCount;
   private Date createdDate;
   
   public PostListDto() {}

   public int getNo() {
      return no;
   }

   public void setNo(int no) {
      this.no = no;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getUserName() {
      return userName;
   }

   public void setUserName(String userName) {
      this.userName = userName;
   }

   public int getReadCount() {
      return readCount;
   }

   public void setReadCount(int readCount) {
      this.readCount = readCount;
   }
   
   public int getCommentCount() {
      return commentCount;
   }
   
   public void setCommentCount(int commentCount) {
      this.commentCount = commentCount;
   }

   public Date getCreatedDate() {
      return createdDate;
   }

   public void setCreatedDate(Date createdDate) {
      this.createdDate = createdDate;
   }
   
}