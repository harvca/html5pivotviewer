::   This file is part of the html5 pivotviewer project
:: 
::   Copyright (C) 2012-2014 OpenLink Software
:: 
::   This project is free software; you can redistribute it and/or modify it
::   under the terms of the GNU General Public License as published by the
::   Free Software Foundation; only version 2 of the License, dated June 1991.
::
::   This program is distributed in the hope that it will be useful, but
::   WITHOUT ANY WARRANTY; without even the implied warranty of
::   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
::   General Public License for more details.
::
::   You should have received a copy of the GNU General Public License along
::   with this program; if not, write to the Free Software Foundation, Inc.,
::   51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
::
::
::
::  Make pivotviewer.js on Windows and create the scripts folder
::
@echo off

mkdir build
del build\* /s /q

type src\namespaces.js >> build\pivotviewer.js
type src\pubsub.js >> build\pivotviewer.js
type src\utils.js >> build\pivotviewer.js
type src\models.js >> build\pivotviewer.js
type src\collectionloader.js >> build\pivotviewer.js
type src\jsonloader.js >> build\pivotviewer.js
type src\views\ipivotviewerview.js >> build\pivotviewer.js
type src\views\tilebasedview.js >> build\pivotviewer.js
type src\views\dataview.js >> build\pivotviewer.js
type src\views\graphview.js >> build\pivotviewer.js
type src\views\gridview.js >> build\pivotviewer.js
type src\views\iimagecontroller.js >> build\pivotviewer.js
type src\views\LoadImageSetHelper.js >> build\pivotviewer.js
type src\views\mapview.js >> build\pivotviewer.js
type src\views\mapview2.js >> build\pivotviewer.js
type src\views\timeview.js >> build\pivotviewer.js
type src\views\tableview.js >> build\pivotviewer.js
type src\views\tilecontroller.js >> build\pivotviewer.js
type src\views\deepzoom.js >> build\pivotviewer.js
type src\views\simpleimage.js >> build\pivotviewer.js
type src\pivotviewer.js >> build\pivotviewer.js

copy pivotviewer.js pivotviewer.min.js

::
::  Make scripts folder
::
mkdir build\scripts
mkdir build\scripts\images
mkdir build\scripts\timeline_js
mkdir build\scripts\timeline_js\images
copy lib\leaflet\images\* build\scripts\images\
copy lib\wicket\wicket-arcgis.min.js build\scripts\
copy lib\wicket\wicket-gmap3.min.js build\scripts\
copy lib\wicket\wicket-leaflet.min.js build\scripts\
copy lib\simile-timeline\timeline_js\images\blue-circle.png build\scripts\timeline_js\images\
copy lib\simile-timeline\timeline_js\images\dark-red-circle.png build\scripts\timeline_js\images\

::
::  Make Lib Folder
::
mkdir build\lib
xcopy lib build\lib /e


::
:: Make Images Folder
::
mkdir build\images
copy images\* build\images

::
:: Copy defaults and other data
::
copy defaults build
copy timeline.json build