"use strict";

var gulp = require('gulp');
var stylus = require('gulp-stylus');
var postcss = require('gulp-postcss');
var postcssImport = require('postcss-import');
var autoprefixer = require('autoprefixer');
var uglify = require('gulp-uglify');
var cssnano = require('cssnano');
var del = require('del');

var target = 'source/assets/';

gulp.task('clean', function () {
  return del([target]);
});

gulp.task('copy:image', ['clean'], function () {
  return gulp.src('source/_images/*')
    .pipe(gulp.dest(target + 'images'));
});

gulp.task('copy:fonts', ['copy:image'], function () {
  return gulp.src('source/_fonts/**/*')
    .pipe(gulp.dest(target + 'fonts'));
});

gulp.task('build:js', ['copy:fonts'], function () {
  return gulp.src('source/_js/*.js')
    .pipe(uglify())
    .pipe(gulp.dest(target + 'js'));
});

gulp.task('build:css', ['build:js'], function () {
  var processors = [
    postcssImport,
    autoprefixer({browsers: ['> 2% in CN', 'last 2 version']}),
    cssnano()
  ];
  return gulp.src('source/_css/style.styl')
    .pipe(stylus())
    .pipe(postcss(processors))
    .pipe(gulp.dest(target + 'css'));
});

gulp.task('watch', function () {
  gulp.watch(['source/_**/**/*'], ['build:css']);
});

gulp.task('default', ['build:css']);

gulp.task('dev', ['build:css', 'watch']);
