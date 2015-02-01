## Family Facebook

Personal project to create a private family chatting, messaging, photo-sharing application.

### To Do List:

####Features:
* Posts
* User authentication
    * Devise
    * Omniauth
* Custom feeds: user can create feeds based on different filters
* Photos (use paperclip or carrierwave)
    * photo albums
    * photo tagging
    * cropping photos (http://andowebsit.es/blog/noteslog.com/post/how-to-allow-users-to-crop-images-in-rails-4/)
    * testing (http://andowebsit.es/blog/noteslog.com/post/how-to-test-paperclip-uploads-in-rails4/)
* File-uploading and sharing


####Technical Features:
* Continuous Integration
   * upon commit, runs all tests
   * if all tests pass, deploy to Heroku
* Switch from ERB to HAML
* jQuery 
* Add appropriate indexes to Posts table

### ERD (will continue to be updated)

![entity-relationship diagram](family-facebook.png)

[![Code Climate](https://codeclimate.com/github/jacindaz/family-facebook/badges/gpa.svg)](https://codeclimate.com/github/jacindaz/family-facebook)
