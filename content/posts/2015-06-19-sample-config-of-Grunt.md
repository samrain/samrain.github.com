---
layout : post
category : work
tags : [Grunt, config, nodejs]
title : Grunt配置文件
date : 2015-06-19
---

## Gruntfile.js

<pre>

/*global module:false*/
module.exports = function (grunt) {
    grunt.initConfig({
	imagemin: {
            /* 压缩图片大小 */
            dist: {
                options: {
                    optimizationLevel: 9 //定义 PNG 图片优化水平
                },
                files: [{
                    expand: true,
                    cwd: 'app/MyCard/',
                    src: ['**/*.{png,jpg,jpeg}'], // 优化 img 目录下所有 png/jpg/jpeg 图片
                    dest: 'app/build/' // 优化后的图片保存位置，覆盖旧图片，并且不作提示
                }]
            }
        },
	uglify: {
	    // 这里是uglify任务的配置信息
	    buildall: {
	    options: {
                    report: "max"//输出压缩率，可选的值有 false(不输出信息)，gzip
                },
	    files: [{
		expand: true,     // Enable dynamic expansion.
		cwd: 'app/MyCard/',      // Src matches are relative  this path.
		src: ['**/*.js'], // Actual pattern(s)  match.
		dest: 'app/build/',   // Destination path prefix.
		    //          ext: '.min.js',   // Dest filepaths will have this extension.
		}]
	    },
	    buildcdn: {
	    options: {
                    report: "max"//输出压缩率，可选的值有 false(不输出信息)，gzip
                },
	    files: [{
		expand: true,     // Enable dynamic expansion.
		cwd: '/home/rain/下载',      // Src matches are relative  this path.
		src: ['*.js'], // Actual pattern(s)  match.
		dest: '/home/rain/下载/build',   // Destination path prefix.
		    //          ext: '.min.js',   // Dest filepaths will have this extension.
		}]
	    }
	},
	cssmin: {
	    buildall: {
	    files: [{
		expand: true,     // Enable dynamic expansion.
		cwd: 'app/MyCard/',      // Src matches are relative  this path.
		src: ['**/*.css'], // Actual pattern(s)  match.
		dest: 'app/build/',   // Destination path prefix.
		}]
	    }
	},
	htmlmin: {
	    buildall: {
	    options: {
		collapseBooleanAttributes: true,
		collapseWhitespace: true,
		conservativeCollapse: true,
	//	removeAttributeQuotes: true,
		removeCommentsFromCDATA: true,
	//	removeEmptyAttributes: true,
		removeOptionalTags: true,
	//	removeRedundantAttributes: true,
	//	useShortDoctype: true
            },
	    files: [{
		expand: true,     // Enable dynamic expansion.
		cwd: 'app/MyCard/',      // Src matches are relative  this path.
		src: ['**/*.html'], // Actual pattern(s)  match.
		dest: 'app/build/',   // Destination path prefix.
		}]
	    }
	}
});
  
grunt.loadNpmTasks('grunt-contrib-uglify');
grunt.loadNpmTasks('grunt-contrib-imagemin');
grunt.loadNpmTasks('grunt-contrib-cssmin');
grunt.loadNpmTasks('grunt-contrib-htmlmin');

  //注册任务
grunt.registerTask('default',['uglify:buildall','imagemin','cssmin','htmlmin']);
grunt.registerTask('js',['uglify:buildall']);
grunt.registerTask('jscdn',['uglify:buildcdn']);
grunt.registerTask('img', ['imagemin']);
grunt.registerTask('css', ['cssmin']);
grunt.registerTask('html', ['htmlmin']);
};

</pre>

## package.json

<pre>

{
  "name": "temp",
  "devDependencies": {
    "apache-server-configs": "^2.7.1",
    "grunt": "^0.4.5",
    "grunt-autoprefixer": "^1.0.0",
    "grunt-concurrent": "^0.5.0",
    "grunt-contrib-clean": "^0.6.0",
    "grunt-contrib-concat": "^0.5.0",
    "grunt-contrib-connect": "^0.8.0",
    "grunt-contrib-copy": "^0.5.0",
    "grunt-contrib-cssmin": "^0.10.0",
    "grunt-contrib-htmlmin": "^0.3.0",
    "grunt-contrib-imagemin": "^0.8.0",
    "grunt-contrib-jshint": "^0.10.0",
    "grunt-contrib-uglify": "^0.5.1",
    "grunt-contrib-watch": "^0.6.1",
    "grunt-mocha": "^0.4.10",
    "grunt-newer": "^0.7.0",
    "grunt-rev": "^0.1.0",
    "grunt-svgmin": "^0.4.0",
    "grunt-usemin": "^2.3.0",
    "grunt-wiredep": "^1.7.0",
    "jshint-stylish": "^0.4.0",
    "load-grunt-tasks": "^0.4.0",
    "time-grunt": "^0.4.0"
  },
  "engines": {
    "node": ">=0.10.0"
  }
}

</pre>
