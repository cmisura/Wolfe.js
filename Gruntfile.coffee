###
	Grunt build system
###
module.exports = (grunt) ->

	config =
		pkg: grunt.file.readJSON 'package.json'
		watch:
    		coffee:
        		files: ['js/app.coffee']
        		tasks: ['concat','uglify']
        		# options:
        		# # Start another live reload server on port 1337
        		# 	livereload: 1337
		concat:
			dist:
				dest: 'js/wolfe.dev.js'
				src: [
					"js/vendor/jquery-2.0.3.min.js"
					"js/app.js"
					]
		uglify:
			build:
				src: 'js/wolfe.dev.js'
				dest: 'js/wolfe.build.js'

	grunt.initConfig config

	grunt.loadNpmTasks 'grunt-contrib-concat'
	grunt.loadNpmTasks 'grunt-contrib-uglify'
	grunt.loadNpmTasks 'grunt-contrib-watch'
