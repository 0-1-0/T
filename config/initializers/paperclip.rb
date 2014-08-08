# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'http://quizzesasdasd.s3-website-eu-west-1.amazonaws.coml'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 'quizzesasdasd.s3-website-eu-west-1.amazonaws.com'