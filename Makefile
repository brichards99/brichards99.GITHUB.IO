build:
	rm -rf public
	hugo
	
deploy: build
	aws s3 sync public/ s3://brichards.net --acl public-read --delete
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id EX5Q9JH3LCRUM --paths '/*'