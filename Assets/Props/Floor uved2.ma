//Maya ASCII 2014 scene
//Name: Floor uved2.ma
//Last modified: Sun, Mar 23, 2014 03:17:45 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.7.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.33467883430739 7.095839235196455 32.15853169572344 ;
	setAttr ".r" -type "double3" -11.738352729616434 14.599999999999582 2.0541777804220251e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.897121751469051;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.968149466502361 -1.8172349061144595 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 40.449700316565362;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 23.742406395290544;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 0.25 0 ;
createNode transform -n "transform102" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform102";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0 0 -0.5 0 0 0.5 0 0 
		-0.5 0 0 0.5 0 0 -0.5 0 0 0.5 0 0 -0.5 0 0;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0 -1.25 0 ;
createNode transform -n "transform101" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform101";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0 0 -0.5 0 0 0.5 0 0 
		-0.5 0 0 0.5 0 0 -0.5 0 0 0.5 0 0 -0.5 0 0;
	setAttr -s 8 ".vt[0:7]"  -50 -0.25 5 50 -0.25 5 -50 0.25 5 50 0.25 5
		 -50 0.25 -5 50 0.25 -5 -50 -0.25 -5 50 -0.25 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0 -0.5321616083199594 0 ;
createNode transform -n "transform100" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform100";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 -0.19690755 -0.5 -0.5 
		-0.19690755 -0.5 0.5 0.26123071 -0.5 -0.5 0.26123071 -0.5 0.5 0.26123071 0 -0.5 0.26123071 
		0 0.5 -0.19690755 0 -0.5 -0.19690755 0;
createNode transform -n "group1";
createNode transform -n "pCube4" -p "group1";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform99" -p "|group1|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
createNode transform -n "pCube5" -p "group1";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform98" -p "|group1|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group1";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform97" -p "|group1|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group1";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform96" -p "|group1|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform96";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group1";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform95" -p "|group1|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group1";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform94" -p "|group1|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group1";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform93" -p "|group1|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group1";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform92" -p "|group1|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform92";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group1";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform91" -p "|group1|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform91";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group1";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform90" -p "|group1|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group1";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform89" -p "|group1|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform89";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group1";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform88" -p "|group1|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform88";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group1";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform87" -p "|group1|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group1";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform86" -p "|group1|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform86";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group1";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform85" -p "|group1|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group1";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform84" -p "|group1|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" -16 0 0 ;
createNode transform -n "pCube4" -p "group2";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform83" -p "|group2|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group2";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform82" -p "|group2|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform82";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group2";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform81" -p "|group2|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group2";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform80" -p "|group2|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group2";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform79" -p "|group2|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group2";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform78" -p "|group2|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform78";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group2";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform77" -p "|group2|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform77";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group2";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform76" -p "|group2|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group2";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform75" -p "|group2|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform75";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group2";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform74" -p "|group2|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform74";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group2";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform73" -p "|group2|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group2";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform72" -p "|group2|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform72";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group2";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform71" -p "|group2|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group2";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform70" -p "|group2|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform70";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group2";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform69" -p "|group2|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform69";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group2";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform68" -p "|group2|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" -32 0 0 ;
createNode transform -n "pCube4" -p "group3";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform67" -p "|group3|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group3";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform66" -p "|group3|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform66";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group3";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform65" -p "|group3|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group3";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform64" -p "|group3|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group3";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform63" -p "|group3|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group3";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform62" -p "|group3|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group3";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform61" -p "|group3|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group3";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform60" -p "|group3|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform60";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group3";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform59" -p "|group3|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group3";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform58" -p "|group3|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform58";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group3";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform57" -p "|group3|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group3";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform56" -p "|group3|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group3";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform55" -p "|group3|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group3";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform54" -p "|group3|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group3";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform53" -p "|group3|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group3";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform52" -p "|group3|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	setAttr ".t" -type "double3" -48 0 0 ;
createNode transform -n "pCube4" -p "group4";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform51" -p "|group4|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group4";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform50" -p "|group4|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group4";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform49" -p "|group4|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group4";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform48" -p "|group4|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group4";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform47" -p "|group4|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group4";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform46" -p "|group4|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group4";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform45" -p "|group4|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group4";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform44" -p "|group4|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group4";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform43" -p "|group4|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group4";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform42" -p "|group4|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group4";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform41" -p "|group4|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group4";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform40" -p "|group4|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group4";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform39" -p "|group4|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group4";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform38" -p "|group4|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group4";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform37" -p "|group4|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group4";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform36" -p "|group4|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "group4";
	setAttr ".t" -type "double3" -1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform35" -p "pCube22";
	setAttr ".v" no;
createNode mesh -n "pCubeShape22" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group5";
	setAttr ".t" -type "double3" 16 0 0 ;
createNode transform -n "pCube4" -p "group5";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform34" -p "|group5|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group5";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform33" -p "|group5|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group5";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform32" -p "|group5|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group5";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform31" -p "|group5|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group5";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform30" -p "|group5|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group5";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform29" -p "|group5|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group5";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform28" -p "|group5|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group5";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform27" -p "|group5|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group5";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform26" -p "|group5|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group5";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform25" -p "|group5|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group5";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform24" -p "|group5|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group5";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform23" -p "|group5|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group5";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform22" -p "|group5|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group5";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform21" -p "|group5|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group5";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform20" -p "|group5|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group5";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform19" -p "|group5|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group6";
	setAttr ".t" -type "double3" 32 0 0 ;
createNode transform -n "pCube4" -p "group6";
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform18" -p "|group6|pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group6";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform17" -p "|group6|pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group6";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform16" -p "|group6|pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group6";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform15" -p "|group6|pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group6";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform14" -p "|group6|pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group6";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform13" -p "|group6|pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group6";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform12" -p "|group6|pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group6";
	setAttr ".t" -type "double3" 9 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform11" -p "|group6|pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group6";
	setAttr ".t" -type "double3" 11 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform10" -p "|group6|pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group6";
	setAttr ".t" -type "double3" 13 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform9" -p "|group6|pCube13";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group6";
	setAttr ".t" -type "double3" 15 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform8" -p "|group6|pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group6";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform7" -p "|group6|pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group6";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform6" -p "|group6|pCube16";
	setAttr ".v" no;
createNode mesh -n "pCubeShape16" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group6";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform5" -p "|group6|pCube17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape17" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group6";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform4" -p "|group6|pCube18";
	setAttr ".v" no;
createNode mesh -n "pCubeShape18" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group6";
	setAttr ".t" -type "double3" 14 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform3" -p "|group6|pCube19";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "group6";
	setAttr ".t" -type "double3" 16 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform2" -p "pCube20";
	setAttr ".v" no;
createNode mesh -n "pCubeShape20" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "group6";
	setAttr ".t" -type "double3" 17 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.5 4.75 ;
	setAttr ".sp" -type "double3" 0 -0.5 4.75 ;
createNode transform -n "transform1" -p "pCube21";
	setAttr ".v" no;
createNode mesh -n "pCubeShape21" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5 4 0 -4.5 4 0 4.5 -5 0 -5 
		-5 0 4.5 -5 9.5 -5 -5 9.5 5 4 9.5 -4.5 4 9.5;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1";
createNode transform -n "polySurface2" -p "polySurface1";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.61870023252502571 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "polySurface1";
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "polySurface1";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "polySurface1";
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.73226421547512865 0.17829390527099714 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5Orig" -p "polySurface5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "polySurface1";
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6Orig" -p "polySurface6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "polySurface1";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7Orig" -p "polySurface7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface8" -p "polySurface1";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8Orig" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "polySurface1";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9Orig" -p "polySurface9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "polySurface1";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10Orig" -p "polySurface10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "polySurface1";
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11Orig" -p "polySurface11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12" -p "polySurface1";
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape12Orig" -p "polySurface12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface13" -p "polySurface1";
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape13Orig" -p "polySurface13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "polySurface1";
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14Orig" -p "polySurface14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "polySurface1";
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15Orig" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16" -p "polySurface1";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16Orig" -p "polySurface16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17" -p "polySurface1";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17Orig" -p "polySurface17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface18" -p "polySurface1";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18Orig" -p "polySurface18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface19" -p "polySurface1";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19Orig" -p "polySurface19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20" -p "polySurface1";
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape20Orig" -p "polySurface20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface21" -p "polySurface1";
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape21Orig" -p "polySurface21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22" -p "polySurface1";
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape22Orig" -p "polySurface22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface23" -p "polySurface1";
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape23Orig" -p "polySurface23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24" -p "polySurface1";
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape24Orig" -p "polySurface24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25" -p "polySurface1";
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape25Orig" -p "polySurface25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26" -p "polySurface1";
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape26Orig" -p "polySurface26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27" -p "polySurface1";
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape27Orig" -p "polySurface27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface28" -p "polySurface1";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape28Orig" -p "polySurface28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29" -p "polySurface1";
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape29Orig" -p "polySurface29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30" -p "polySurface1";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape30Orig" -p "polySurface30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31" -p "polySurface1";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape31Orig" -p "polySurface31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32" -p "polySurface1";
createNode mesh -n "polySurfaceShape32" -p "polySurface32";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape32Orig" -p "polySurface32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface33" -p "polySurface1";
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape33Orig" -p "polySurface33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface34" -p "polySurface1";
createNode mesh -n "polySurfaceShape34" -p "polySurface34";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape34Orig" -p "polySurface34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35" -p "polySurface1";
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape35Orig" -p "polySurface35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface36" -p "polySurface1";
createNode mesh -n "polySurfaceShape36" -p "polySurface36";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape36Orig" -p "polySurface36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface37" -p "polySurface1";
createNode mesh -n "polySurfaceShape37" -p "polySurface37";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape37Orig" -p "polySurface37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38" -p "polySurface1";
createNode mesh -n "polySurfaceShape38" -p "polySurface38";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape38Orig" -p "polySurface38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface39" -p "polySurface1";
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape39Orig" -p "polySurface39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface40" -p "polySurface1";
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape40Orig" -p "polySurface40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface41" -p "polySurface1";
createNode mesh -n "polySurfaceShape41" -p "polySurface41";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape41Orig" -p "polySurface41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface42" -p "polySurface1";
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape42Orig" -p "polySurface42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface43" -p "polySurface1";
createNode mesh -n "polySurfaceShape43" -p "polySurface43";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape43Orig" -p "polySurface43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface44" -p "polySurface1";
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape44Orig" -p "polySurface44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface45" -p "polySurface1";
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape45Orig" -p "polySurface45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface46" -p "polySurface1";
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape46Orig" -p "polySurface46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface47" -p "polySurface1";
createNode mesh -n "polySurfaceShape47" -p "polySurface47";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape47Orig" -p "polySurface47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface48" -p "polySurface1";
createNode mesh -n "polySurfaceShape48" -p "polySurface48";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape48Orig" -p "polySurface48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface49" -p "polySurface1";
createNode mesh -n "polySurfaceShape49" -p "polySurface49";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape49Orig" -p "polySurface49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface50" -p "polySurface1";
createNode mesh -n "polySurfaceShape50" -p "polySurface50";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape50Orig" -p "polySurface50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface51" -p "polySurface1";
createNode mesh -n "polySurfaceShape51" -p "polySurface51";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape51Orig" -p "polySurface51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface52" -p "polySurface1";
createNode mesh -n "polySurfaceShape52" -p "polySurface52";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape52Orig" -p "polySurface52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface53" -p "polySurface1";
createNode mesh -n "polySurfaceShape53" -p "polySurface53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface54" -p "polySurface1";
createNode mesh -n "polySurfaceShape54" -p "polySurface54";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape54Orig" -p "polySurface54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface55" -p "polySurface1";
createNode mesh -n "polySurfaceShape55" -p "polySurface55";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape55Orig" -p "polySurface55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface56" -p "polySurface1";
createNode mesh -n "polySurfaceShape56" -p "polySurface56";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape56Orig" -p "polySurface56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface57" -p "polySurface1";
createNode mesh -n "polySurfaceShape57" -p "polySurface57";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape57Orig" -p "polySurface57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface58" -p "polySurface1";
createNode mesh -n "polySurfaceShape58" -p "polySurface58";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape58Orig" -p "polySurface58";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface59" -p "polySurface1";
createNode mesh -n "polySurfaceShape59" -p "polySurface59";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape59Orig" -p "polySurface59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface60" -p "polySurface1";
createNode mesh -n "polySurfaceShape60" -p "polySurface60";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape60Orig" -p "polySurface60";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface61" -p "polySurface1";
createNode mesh -n "polySurfaceShape61" -p "polySurface61";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape61Orig" -p "polySurface61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface62" -p "polySurface1";
createNode mesh -n "polySurfaceShape62" -p "polySurface62";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape62Orig" -p "polySurface62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface63" -p "polySurface1";
createNode mesh -n "polySurfaceShape63" -p "polySurface63";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape63Orig" -p "polySurface63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface64" -p "polySurface1";
createNode mesh -n "polySurfaceShape64" -p "polySurface64";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape64Orig" -p "polySurface64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface65" -p "polySurface1";
createNode mesh -n "polySurfaceShape65" -p "polySurface65";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape65Orig" -p "polySurface65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface66" -p "polySurface1";
createNode mesh -n "polySurfaceShape66" -p "polySurface66";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape66Orig" -p "polySurface66";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface67" -p "polySurface1";
createNode mesh -n "polySurfaceShape67" -p "polySurface67";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape67Orig" -p "polySurface67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface68" -p "polySurface1";
createNode mesh -n "polySurfaceShape68" -p "polySurface68";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape68Orig" -p "polySurface68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface69" -p "polySurface1";
createNode mesh -n "polySurfaceShape69" -p "polySurface69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface70" -p "polySurface1";
createNode mesh -n "polySurfaceShape70" -p "polySurface70";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape70Orig" -p "polySurface70";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface71" -p "polySurface1";
createNode mesh -n "polySurfaceShape71" -p "polySurface71";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape71Orig" -p "polySurface71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface72" -p "polySurface1";
createNode mesh -n "polySurfaceShape72" -p "polySurface72";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape72Orig" -p "polySurface72";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface73" -p "polySurface1";
createNode mesh -n "polySurfaceShape73" -p "polySurface73";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape73Orig" -p "polySurface73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface74" -p "polySurface1";
createNode mesh -n "polySurfaceShape74" -p "polySurface74";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape74Orig" -p "polySurface74";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface75" -p "polySurface1";
createNode mesh -n "polySurfaceShape75" -p "polySurface75";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape75Orig" -p "polySurface75";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface76" -p "polySurface1";
createNode mesh -n "polySurfaceShape76" -p "polySurface76";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape76Orig" -p "polySurface76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface77" -p "polySurface1";
createNode mesh -n "polySurfaceShape77" -p "polySurface77";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape77Orig" -p "polySurface77";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface78" -p "polySurface1";
createNode mesh -n "polySurfaceShape78" -p "polySurface78";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape78Orig" -p "polySurface78";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface79" -p "polySurface1";
createNode mesh -n "polySurfaceShape79" -p "polySurface79";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape79Orig" -p "polySurface79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface80" -p "polySurface1";
createNode mesh -n "polySurfaceShape80" -p "polySurface80";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape80Orig" -p "polySurface80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface81" -p "polySurface1";
createNode mesh -n "polySurfaceShape81" -p "polySurface81";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape81Orig" -p "polySurface81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface82" -p "polySurface1";
createNode mesh -n "polySurfaceShape82" -p "polySurface82";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape82Orig" -p "polySurface82";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface83" -p "polySurface1";
createNode mesh -n "polySurfaceShape83" -p "polySurface83";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape83Orig" -p "polySurface83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface84" -p "polySurface1";
createNode mesh -n "polySurfaceShape84" -p "polySurface84";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape84Orig" -p "polySurface84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface85" -p "polySurface1";
createNode mesh -n "polySurfaceShape85" -p "polySurface85";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape85Orig" -p "polySurface85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface86" -p "polySurface1";
createNode mesh -n "polySurfaceShape86" -p "polySurface86";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape86Orig" -p "polySurface86";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface87" -p "polySurface1";
createNode mesh -n "polySurfaceShape87" -p "polySurface87";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape87Orig" -p "polySurface87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface88" -p "polySurface1";
createNode mesh -n "polySurfaceShape88" -p "polySurface88";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape88Orig" -p "polySurface88";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface89" -p "polySurface1";
createNode mesh -n "polySurfaceShape89" -p "polySurface89";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape89Orig" -p "polySurface89";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface90" -p "polySurface1";
createNode mesh -n "polySurfaceShape90" -p "polySurface90";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape90Orig" -p "polySurface90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface91" -p "polySurface1";
createNode mesh -n "polySurfaceShape91" -p "polySurface91";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape91Orig" -p "polySurface91";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface92" -p "polySurface1";
createNode mesh -n "polySurfaceShape92" -p "polySurface92";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape92Orig" -p "polySurface92";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface93" -p "polySurface1";
createNode mesh -n "polySurfaceShape93" -p "polySurface93";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape93Orig" -p "polySurface93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface94" -p "polySurface1";
createNode mesh -n "polySurfaceShape94" -p "polySurface94";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape94Orig" -p "polySurface94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface95" -p "polySurface1";
createNode mesh -n "polySurfaceShape95" -p "polySurface95";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape95Orig" -p "polySurface95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface96" -p "polySurface1";
createNode mesh -n "polySurfaceShape96" -p "polySurface96";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape96Orig" -p "polySurface96";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface97" -p "polySurface1";
createNode mesh -n "polySurfaceShape97" -p "polySurface97";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape97Orig" -p "polySurface97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface98" -p "polySurface1";
createNode mesh -n "polySurfaceShape98" -p "polySurface98";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape98Orig" -p "polySurface98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface99" -p "polySurface1";
createNode mesh -n "polySurfaceShape99" -p "polySurface99";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape99Orig" -p "polySurface99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface100" -p "polySurface1";
createNode mesh -n "polySurfaceShape100" -p "polySurface100";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape100Orig" -p "polySurface100";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface101" -p "polySurface1";
createNode mesh -n "polySurfaceShape101" -p "polySurface101";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape101Orig" -p "polySurface101";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface102" -p "polySurface1";
createNode mesh -n "polySurfaceShape102" -p "polySurface102";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape102Orig" -p "polySurface102";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform103" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform103";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51039324101581363 0.4054991602897644 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 100;
	setAttr ".h" 0.5;
	setAttr ".d" 10;
	setAttr ".cuv" 1;
createNode polyCube -n "polyCube2";
	setAttr ".w" 100;
	setAttr ".h" 0.54186173283841776;
	setAttr ".d" 10;
	setAttr ".cuv" 1;
createNode polyCube -n "polyCube3";
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".d" 10;
	setAttr ".cuv" 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"UV Texture Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"polyTexturePlacementPanel\\\" -l (localizedPanelLabel(\\\"UV Texture Editor\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"UV Texture Editor\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyUnite -n "polyUnite1";
	setAttr -s 102 ".ip";
	setAttr -s 102 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode groupId -n "groupId141";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	setAttr ".ihi" 0;
createNode groupId -n "groupId149";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId151";
	setAttr ".ihi" 0;
createNode groupId -n "groupId152";
	setAttr ".ihi" 0;
createNode groupId -n "groupId153";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	setAttr ".ihi" 0;
createNode groupId -n "groupId155";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	setAttr ".ihi" 0;
createNode groupId -n "groupId157";
	setAttr ".ihi" 0;
createNode groupId -n "groupId158";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	setAttr ".ihi" 0;
createNode groupId -n "groupId161";
	setAttr ".ihi" 0;
createNode groupId -n "groupId162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId163";
	setAttr ".ihi" 0;
createNode groupId -n "groupId164";
	setAttr ".ihi" 0;
createNode groupId -n "groupId165";
	setAttr ".ihi" 0;
createNode groupId -n "groupId166";
	setAttr ".ihi" 0;
createNode groupId -n "groupId167";
	setAttr ".ihi" 0;
createNode groupId -n "groupId168";
	setAttr ".ihi" 0;
createNode groupId -n "groupId169";
	setAttr ".ihi" 0;
createNode groupId -n "groupId170";
	setAttr ".ihi" 0;
createNode groupId -n "groupId171";
	setAttr ".ihi" 0;
createNode groupId -n "groupId172";
	setAttr ".ihi" 0;
createNode groupId -n "groupId173";
	setAttr ".ihi" 0;
createNode groupId -n "groupId174";
	setAttr ".ihi" 0;
createNode groupId -n "groupId175";
	setAttr ".ihi" 0;
createNode groupId -n "groupId176";
	setAttr ".ihi" 0;
createNode groupId -n "groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "groupId178";
	setAttr ".ihi" 0;
createNode groupId -n "groupId179";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	setAttr ".ihi" 0;
createNode groupId -n "groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	setAttr ".ihi" 0;
createNode groupId -n "groupId183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	setAttr ".ihi" 0;
createNode groupId -n "groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "groupId187";
	setAttr ".ihi" 0;
createNode groupId -n "groupId188";
	setAttr ".ihi" 0;
createNode groupId -n "groupId189";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	setAttr ".ihi" 0;
createNode groupId -n "groupId191";
	setAttr ".ihi" 0;
createNode groupId -n "groupId192";
	setAttr ".ihi" 0;
createNode groupId -n "groupId193";
	setAttr ".ihi" 0;
createNode groupId -n "groupId194";
	setAttr ".ihi" 0;
createNode groupId -n "groupId195";
	setAttr ".ihi" 0;
createNode groupId -n "groupId196";
	setAttr ".ihi" 0;
createNode groupId -n "groupId197";
	setAttr ".ihi" 0;
createNode groupId -n "groupId198";
	setAttr ".ihi" 0;
createNode groupId -n "groupId199";
	setAttr ".ihi" 0;
createNode groupId -n "groupId200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId201";
	setAttr ".ihi" 0;
createNode groupId -n "groupId202";
	setAttr ".ihi" 0;
createNode groupId -n "groupId203";
	setAttr ".ihi" 0;
createNode groupId -n "groupId204";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2:611]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.5 0 ;
	setAttr ".ic" -type "double2" 0.5 0.38802457728036999 ;
	setAttr ".ps" -type "double2" 99 99 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.5 0 ;
	setAttr ".ic" -type "double2" 0.5 0.59331285226635799 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 99 99 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 820 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.017474547 0 0.017474547 0 -0.083966859
		 0 -0.083966859 0 -0.086270608 0 -0.086270608 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547;
	setAttr ".uvtk[250:499]" 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547;
	setAttr ".uvtk[500:749]" 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547;
	setAttr ".uvtk[750:819]" 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547
		 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547 0 0.017474547;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 101 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/mistergood100/Documents/Game Design Class/Props/Floor//Floor UV Snapshot2.psd";
createNode place2dTexture -n "place2dTexture1";
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 2448 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.010393222 0 0.010393241 0 1 0 -1
		 0 -1 0 1 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241 0
		 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393241
		 0 0.010393222 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241
		 0 0.010393222 0 0.010393241 0 0.010393222 0 0.010393241 0 0.010393222 0 0.010393222
		 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393252
		 0 0.010393222 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393252 0 0.010393222
		 0 0.010393252 0 0.010393222 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0;
	setAttr ".uvtk[250:499]" 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0;
	setAttr ".uvtk[500:749]" 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393252 0 0.010393237 0 0.010393252 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.01039324
		 0 0.010393244 0 0.01039324 0 0.010393244 0 0.010393244 0 0.01039324 0 0.01039324
		 0;
	setAttr ".uvtk[750:999]" 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324
		 0 0.01039324 0 0.01039324 0 0.01039324 0 0.010393242 0 0.01039324 0 0.01039324 0
		 0.01039324 0 0.01039324 0 0.010393242 0 0.01039324 0 0.010393244 0 0.010393244 0
		 0.010393244 0 0.010393237 0 0.010393244 0 0.010393237 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.01039324
		 0 0.010393244 0 0.01039324 0 0.010393244 0 0.01039324 0 0.01039324 0 0.010393244
		 0 0.01039324 0 0.010393242 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0
		 0.010393242 0 0.01039324 0 0.01039324 0 0.010393241 0 0.01039324 0 0.01039324 0 0.01039324
		 0 0.01039324 0 0.010393241 0 0.01039324 0 0.010393241 0 0.010393241 0 0.010393241
		 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393222
		 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241
		 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222
		 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241
		 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222
		 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241
		 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222
		 0 0.010393241 0 0.010393241 0 0.010393222 0 0.010393222 0 0.010393241 0 0.010393241
		 0 0.010393222 0 0.010393222 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393252
		 0 0.010393222 0 0.010393222 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393252 0 0.010393222
		 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393252 0 0.010393252
		 0 0.010393222 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393252 0 0.010393252
		 0 0.010393222 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0;
	setAttr ".uvtk[1000:1249]" 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0;
	setAttr ".uvtk[1250:1499]" 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0;
	setAttr ".uvtk[1500:1749]" 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0;
	setAttr ".uvtk[1750:1999]" 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222 0 0.010393222
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0;
	setAttr ".uvtk[2000:2249]" 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252 0 0.010393252
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393252 0 0.010393252 0 0.010393237
		 0 0.010393237 0 0.010393252 0 0.010393252 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0;
	setAttr ".uvtk[2250:2447]" 0.010393237 0 0.010393237 0 0.010393237 0 0.010393237
		 0 0.010393237 0 0.010393237 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.01039324 0 0.01039324 0 0.010393244 0 0.010393244 0 0.01039324
		 0 0.01039324 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0
		 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324
		 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.010393242
		 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324
		 0 0.01039324 0 0.010393242 0 0.01039324 0 0.01039324 0 0.010393242 0 0.010393242
		 0 0.01039324 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393237 0 0.010393237
		 0 0.010393244 0 0.010393244 0 0.010393237 0 0.010393237 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244 0 0.010393244
		 0 0.010393244 0 0.010393244 0 0.01039324 0 0.010393244 0 0.01039324 0 0.01039324
		 0 0.010393244 0 0.010393244 0 0.01039324 0 0.01039324 0 0.010393244 0 0.01039324
		 0 0.010393244 0 0.010393244 0 0.01039324 0 0.01039324 0 0.010393244 0 0.01039324
		 0 0.010393242 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0
		 0.01039324 0 0.01039324 0 0.01039324 0 0.010393242 0 0.01039324 0 0.01039324 0 0.010393242
		 0 0.010393242 0 0.01039324 0 0.01039324 0 0.010393241 0 0.01039324 0 0.01039324 0
		 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.01039324 0 0.010393241
		 0 0.01039324 0 0.01039324 0 0.010393241 0 0.010393241 0 0.01039324 0 0.010393241
		 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241
		 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241 0 0.010393241
		 0 0.010393241 0 0.010393241 0 0.010393241 0;
	setAttr -s 2444 ".nuv";
	setAttr ".nuv[0:124]"  0 0 1 0.41054964 0 1 0 0.41054964 
		0 3 0 0.41560018 0 2 1 0.41560018 2 4 1 0.41560018 
		2 5 0 0.41560018 2 7 0 0.41054964 2 6 1 0.41054964 
		3 6 1 0.41054964 3 7 0 0.41054964 3 1 0 0.41054964 
		3 0 1 0.41054964 4 1 0 0.41054964 4 7 0 0.41054964 
		4 5 0 0.41560018 4 3 0 0.41560018 5 6 1 0.41054964 
		5 0 1 0.41054964 5 2 1 0.41560018 5 4 1 0.41560018 
		6 8 1 0.39539814 6 9 0 0.39539814 6 11 0 0.40044862 
		6 10 1 0.40044862 7 10 1 0.40044862 7 11 0 0.40044862 
		7 13 0 0.40044862 7 12 1 0.40044862 8 12 1 0.40044862 
		8 13 0 0.40044862 8 15 0 0.39539814 8 14 1 0.39539814 
		9 14 1 0.39539814 9 15 0 0.39539814 9 9 0 0.39539814 
		9 8 1 0.39539814 10 9 0 0.39539814 10 15 0 0.39539814 
		10 13 0 0.40044862 10 11 0 0.40044862 11 14 1 0.39539814 
		11 8 1 0.39539814 11 10 1 0.40044862 11 12 1 0.40044862 
		12 16 1 0.40044862 12 17 0 0.40044862 12 19 0 0.41054964 
		12 18 1 0.41054964 13 18 1 0.41054964 13 19 0 0.41054964 
		13 21 0 0.41054964 13 20 1 0.41054964 14 20 1 0.41054964 
		14 21 0 0.41054964 14 23 0 0.40044862 14 22 1 0.40044862 
		15 22 1 0.40044862 15 23 0 0.40044862 15 17 0 0.40044862 
		15 16 1 0.40044862 16 17 0 0.40044862 16 23 0 0.40044862 
		16 21 0 0.41054964 16 19 0 0.41054964 17 22 1 0.40044862 
		17 16 1 0.40044862 17 18 1 0.41054964 17 20 1 0.41054964 
		18 24 0.5 0.40044862 18 25 0.49494946 0.40044862 18 27 0.5
		 0.41054964 18 26 0.50505048 0.41054964 19 26 0.50505048 0.41054964 
		19 27 0.5 0.41054964 19 29 0.5 0.41054964 19 28 0.50505048
		 0.41054964 20 28 0.50505048 0.41054964 20 29 0.5 0.41054964 20 
		31 0.49494946 0.40044862 20 30 0.5 0.40044862 21 30 0.5 0.40044862 
		21 31 0.49494946 0.40044862 21 25 0.49494946 0.40044862 21 24
		 0.5 0.40044862 22 25 0.49494946 0.40044862 22 31 0.49494946 0.40044862 
		22 29 0.5 0.41054964 22 27 0.5 0.41054964 23 30 0.5 0.40044862 
		23 24 0.5 0.40044862 23 26 0.50505048 0.41054964 23 28 0.50505048
		 0.41054964 24 32 0.47979796 0.40044862 24 33 0.47474742 0.40044862 
		24 35 0.47979796 0.41054964 24 34 0.4848485 0.41054964 25 34
		 0.4848485 0.41054964 25 35 0.47979796 0.41054964 25 37 0.47979796
		 0.41054964 25 36 0.4848485 0.41054964 26 36 0.4848485 0.41054964 
		26 37 0.47979796 0.41054964 26 39 0.47474742 0.40044862 26 38
		 0.47979796 0.40044862 27 38 0.47979796 0.40044862 27 39 0.47474742
		 0.40044862 27 33 0.47474742 0.40044862 27 32 0.47979796 0.40044862 
		28 33 0.47474742 0.40044862 28 39 0.47474742 0.40044862 28 37
		 0.47979796 0.41054964 28 35 0.47979796 0.41054964 29 38 0.47979796
		 0.40044862 29 32 0.47979796 0.40044862 29 34 0.4848485 0.41054964 
		29 36 0.4848485 0.41054964 30 40 0.48989904 0.40044862 30 41
		 0.49494946 0.40044862 30 43 0.48989904 0.41054964 30 42 0.4848485
		 0.41054964 31 42 0.4848485 0.41054964 31 43 0.48989904 0.41054964 
		31 45 0.48989904 0.41054964 31 44 0.4848485 0.41054964 32 44
		 0.4848485 0.41054964;
	setAttr ".nuv[125:249]" 32 45 0.48989904 0.41054964 32 47 0.49494946
		 0.40044862 32 46 0.48989904 0.40044862 33 46 0.48989904 0.40044862 
		33 47 0.49494946 0.40044862 33 41 0.49494946 0.40044862 33 40
		 0.48989904 0.40044862 34 41 0.49494946 0.40044862 34 47 0.49494946
		 0.40044862 34 45 0.48989904 0.41054964 34 43 0.48989904 0.41054964 
		35 46 0.48989904 0.40044862 35 40 0.48989904 0.40044862 35 42
		 0.4848485 0.41054964 35 44 0.4848485 0.41054964 36 48 0.45959592
		 0.40044862 36 49 0.4545455 0.40044862 36 51 0.45959592 0.41054964 
		36 50 0.46464646 0.41054964 37 50 0.46464646 0.41054964 37 51
		 0.45959592 0.41054964 37 53 0.45959592 0.41054964 37 52 0.46464646
		 0.41054964 38 52 0.46464646 0.41054964 38 53 0.45959592 0.41054964 
		38 55 0.4545455 0.40044862 38 54 0.45959592 0.40044862 39 54
		 0.45959592 0.40044862 39 55 0.4545455 0.40044862 39 49 0.4545455
		 0.40044862 39 48 0.45959592 0.40044862 40 49 0.4545455 0.40044862 
		40 55 0.4545455 0.40044862 40 53 0.45959592 0.41054964 40 51
		 0.45959592 0.41054964 41 54 0.45959592 0.40044862 41 48 0.45959592
		 0.40044862 41 50 0.46464646 0.41054964 41 52 0.46464646 0.41054964 
		42 56 0.469697 0.40044862 42 57 0.47474742 0.40044862 42 59
		 0.469697 0.41054964 42 58 0.46464646 0.41054964 43 58 0.46464646
		 0.41054964 43 59 0.469697 0.41054964 43 61 0.469697 0.41054964 43 
		60 0.46464646 0.41054964 44 60 0.46464646 0.41054964 44 61 0.469697
		 0.41054964 44 63 0.47474742 0.40044862 44 62 0.469697 0.40044862 
		45 62 0.469697 0.40044862 45 63 0.47474742 0.40044862 45 57
		 0.47474742 0.40044862 45 56 0.469697 0.40044862 46 57 0.47474742
		 0.40044862 46 63 0.47474742 0.40044862 46 61 0.469697 0.41054964 
		46 59 0.469697 0.41054964 47 62 0.469697 0.40044862 47 56
		 0.469697 0.40044862 47 58 0.46464646 0.41054964 47 60 0.46464646
		 0.41054964 48 64 0.44949496 0.40044862 48 65 0.4545455 0.40044862 
		48 67 0.44949496 0.41054964 48 66 0.44444442 0.41054964 49 66
		 0.44444442 0.41054964 49 67 0.44949496 0.41054964 49 69 0.44949496
		 0.41054964 49 68 0.44444442 0.41054964 50 68 0.44444442 0.41054964 
		50 69 0.44949496 0.41054964 50 71 0.4545455 0.40044862 50 70
		 0.44949496 0.40044862 51 70 0.44949496 0.40044862 51 71 0.4545455
		 0.40044862 51 65 0.4545455 0.40044862 51 64 0.44949496 0.40044862 
		52 65 0.4545455 0.40044862 52 71 0.4545455 0.40044862 52 69
		 0.44949496 0.41054964 52 67 0.44949496 0.41054964 53 70 0.44949496
		 0.40044862 53 64 0.44949496 0.40044862 53 66 0.44444442 0.41054964 
		53 68 0.44444442 0.41054964 54 72 0.42929292 0.40044862 54 73
		 0.43434346 0.40044862 54 75 0.42929292 0.41054964 54 74 0.42424238
		 0.41054964 55 74 0.42424238 0.41054964 55 75 0.42929292 0.41054964 
		55 77 0.42929292 0.41054964 55 76 0.42424238 0.41054964 56 76
		 0.42424238 0.41054964 56 77 0.42929292 0.41054964 56 79 0.43434346
		 0.40044862 56 78 0.42929292 0.40044862 57 78 0.42929292 0.40044862 
		57 79 0.43434346 0.40044862 57 73 0.43434346 0.40044862 57 72
		 0.42929292 0.40044862 58 73 0.43434346 0.40044862 58 79 0.43434346
		 0.40044862 58 77 0.42929292 0.41054964 58 75 0.42929292 0.41054964 
		59 78 0.42929292 0.40044862 59 72 0.42929292 0.40044862 59 74
		 0.42424238 0.41054964 59 76 0.42424238 0.41054964 60 80 0.40909088
		 0.40044862 60 81 0.41414142 0.40044862 60 83 0.40909088 0.41054964 
		60 82 0.40404046 0.41054964 61 82 0.40404046 0.41054964 61 83
		 0.40909088 0.41054964 61 85 0.40909088 0.41054964 61 84 0.40404046
		 0.41054964 62 84 0.40404046 0.41054964 62 85 0.40909088 0.41054964 
		62 87 0.41414142 0.40044862 62 86 0.40909088 0.40044862 63 86
		 0.40909088 0.40044862 63 87 0.41414142 0.40044862;
	setAttr ".nuv[250:374]" 63 81 0.41414142 0.40044862 63 80 0.40909088
		 0.40044862 64 81 0.41414142 0.40044862 64 87 0.41414142 0.40044862 
		64 85 0.40909088 0.41054964 64 83 0.40909088 0.41054964 65 86
		 0.40909088 0.40044862 65 80 0.40909088 0.40044862 65 82 0.40404046
		 0.41054964 65 84 0.40404046 0.41054964 66 88 0.38888884 0.40044862 
		66 89 0.39393938 0.40044862 66 91 0.38888884 0.41054964 66 90
		 0.38383842 0.41054964 67 90 0.38383842 0.41054964 67 91 0.38888884
		 0.41054964 67 93 0.38888884 0.41054964 67 92 0.38383842 0.41054964 
		68 92 0.38383842 0.41054964 68 93 0.38888884 0.41054964 68 95
		 0.39393938 0.40044862 68 94 0.38888884 0.40044862 69 94 0.38888884
		 0.40044862 69 95 0.39393938 0.40044862 69 89 0.39393938 0.40044862 
		69 88 0.38888884 0.40044862 70 89 0.39393938 0.40044862 70 95
		 0.39393938 0.40044862 70 93 0.38888884 0.41054964 70 91 0.38888884
		 0.41054964 71 94 0.38888884 0.40044862 71 88 0.38888884 0.40044862 
		71 90 0.38383842 0.41054964 71 92 0.38383842 0.41054964 72 96
		 0.36868691 0.40044862 72 97 0.37373734 0.40044862 72 99 0.36868691
		 0.41054964 72 98 0.36363637 0.41054964 73 98 0.36363637 0.41054964 
		73 99 0.36868691 0.41054964 73 101 0.36868691 0.41054964 73 100
		 0.36363637 0.41054964 74 100 0.36363637 0.41054964 74 101 0.36868691
		 0.41054964 74 103 0.37373734 0.40044862 74 102 0.36868691 0.40044862 
		75 102 0.36868691 0.40044862 75 103 0.37373734 0.40044862 75 97
		 0.37373734 0.40044862 75 96 0.36868691 0.40044862 76 97 0.37373734
		 0.40044862 76 103 0.37373734 0.40044862 76 101 0.36868691 0.41054964 
		76 99 0.36868691 0.41054964 77 102 0.36868691 0.40044862 77 96
		 0.36868691 0.40044862 77 98 0.36363637 0.41054964 77 100 0.36363637
		 0.41054964 78 104 0.34848487 0.40044862 78 105 0.35353541 0.40044862 
		78 107 0.34848487 0.41054964 78 106 0.34343433 0.41054964 79 106
		 0.34343433 0.41054964 79 107 0.34848487 0.41054964 79 109 0.34848487
		 0.41054964 79 108 0.34343433 0.41054964 80 108 0.34343433 0.41054964 
		80 109 0.34848487 0.41054964 80 111 0.35353541 0.40044862 80 110
		 0.34848487 0.40044862 81 110 0.34848487 0.40044862 81 111 0.35353541
		 0.40044862 81 105 0.35353541 0.40044862 81 104 0.34848487 0.40044862 
		82 105 0.35353541 0.40044862 82 111 0.35353541 0.40044862 82 109
		 0.34848487 0.41054964 82 107 0.34848487 0.41054964 83 110 0.34848487
		 0.40044862 83 104 0.34848487 0.40044862 83 106 0.34343433 0.41054964 
		83 108 0.34343433 0.41054964 84 112 0.439394 0.40044862 84 113
		 0.43434346 0.40044862 84 115 0.439394 0.41054964 84 114 0.44444442
		 0.41054964 85 114 0.44444442 0.41054964 85 115 0.439394 0.41054964 
		85 117 0.439394 0.41054964 85 116 0.44444442 0.41054964 86 116
		 0.44444442 0.41054964 86 117 0.439394 0.41054964 86 119 0.43434346
		 0.40044862 86 118 0.439394 0.40044862 87 118 0.439394 0.40044862 87 
		119 0.43434346 0.40044862 87 113 0.43434346 0.40044862 87 112 0.439394
		 0.40044862 88 113 0.43434346 0.40044862 88 119 0.43434346 0.40044862 
		88 117 0.439394 0.41054964 88 115 0.439394 0.41054964 89 118
		 0.439394 0.40044862 89 112 0.439394 0.40044862 89 114 0.44444442 0.41054964 
		89 116 0.44444442 0.41054964 90 120 0.41919196 0.40044862 90 121
		 0.41414142 0.40044862 90 123 0.41919196 0.41054964 90 122 0.42424238
		 0.41054964 91 122 0.42424238 0.41054964 91 123 0.41919196 0.41054964 
		91 125 0.41919196 0.41054964 91 124 0.42424238 0.41054964 92 124
		 0.42424238 0.41054964 92 125 0.41919196 0.41054964 92 127 0.41414142
		 0.40044862 92 126 0.41919196 0.40044862 93 126 0.41919196 0.40044862 
		93 127 0.41414142 0.40044862 93 121 0.41414142 0.40044862 93 120
		 0.41919196 0.40044862 94 121 0.41414142 0.40044862 94 127 0.41414142
		 0.40044862 94 125 0.41919196 0.41054964;
	setAttr ".nuv[375:499]" 94 123 0.41919196 0.41054964 95 126 0.41919196
		 0.40044862 95 120 0.41919196 0.40044862 95 122 0.42424238 0.41054964 
		95 124 0.42424238 0.41054964 96 128 0.39898992 0.40044862 96 129
		 0.39393938 0.40044862 96 131 0.39898992 0.41054964 96 130 0.40404046
		 0.41054964 97 130 0.40404046 0.41054964 97 131 0.39898992 0.41054964 
		97 133 0.39898992 0.41054964 97 132 0.40404046 0.41054964 98 132
		 0.40404046 0.41054964 98 133 0.39898992 0.41054964 98 135 0.39393938
		 0.40044862 98 134 0.39898992 0.40044862 99 134 0.39898992 0.40044862 
		99 135 0.39393938 0.40044862 99 129 0.39393938 0.40044862 99 128
		 0.39898992 0.40044862 100 129 0.39393938 0.40044862 100 135 0.39393938
		 0.40044862 100 133 0.39898992 0.41054964 100 131 0.39898992 0.41054964 
		101 134 0.39898992 0.40044862 101 128 0.39898992 0.40044862 101 130
		 0.40404046 0.41054964 101 132 0.40404046 0.41054964 102 136 0.37878788
		 0.40044862 102 137 0.37373734 0.40044862 102 139 0.37878788 0.41054964 
		102 138 0.38383842 0.41054964 103 138 0.38383842 0.41054964 103 139
		 0.37878788 0.41054964 103 141 0.37878788 0.41054964 103 140 0.38383842
		 0.41054964 104 140 0.38383842 0.41054964 104 141 0.37878788 0.41054964 
		104 143 0.37373734 0.40044862 104 142 0.37878788 0.40044862 105 142
		 0.37878788 0.40044862 105 143 0.37373734 0.40044862 105 137 0.37373734
		 0.40044862 105 136 0.37878788 0.40044862 106 137 0.37373734 0.40044862 
		106 143 0.37373734 0.40044862 106 141 0.37878788 0.41054964 106 139
		 0.37878788 0.41054964 107 142 0.37878788 0.40044862 107 136 0.37878788
		 0.40044862 107 138 0.38383842 0.41054964 107 140 0.38383842 0.41054964 
		108 144 0.35858583 0.40044862 108 145 0.35353541 0.40044862 108 147
		 0.35858583 0.41054964 108 146 0.36363637 0.41054964 109 146 0.36363637
		 0.41054964 109 147 0.35858583 0.41054964 109 149 0.35858583 0.41054964 
		109 148 0.36363637 0.41054964 110 148 0.36363637 0.41054964 110 149
		 0.35858583 0.41054964 110 151 0.35353541 0.40044862 110 150 0.35858583
		 0.40044862 111 150 0.35858583 0.40044862 111 151 0.35353541 0.40044862 
		111 145 0.35353541 0.40044862 111 144 0.35858583 0.40044862 112 145
		 0.35353541 0.40044862 112 151 0.35353541 0.40044862 112 149 0.35858583
		 0.41054964 112 147 0.35858583 0.41054964 113 150 0.35858583 0.40044862 
		113 144 0.35858583 0.40044862 113 146 0.36363637 0.41054964 113 148
		 0.36363637 0.41054964 114 152 0.66161615 0.40044862 114 153 0.65656567
		 0.40044862 114 155 0.66161615 0.41054964 114 154 0.66666669 0.41054964 
		115 154 0.66666669 0.41054964 115 155 0.66161615 0.41054964 115 157
		 0.66161615 0.41054964 115 156 0.66666669 0.41054964 116 156 0.66666669
		 0.41054964 116 157 0.66161615 0.41054964 116 159 0.65656567 0.40044862 
		116 158 0.66161615 0.40044862 117 158 0.66161615 0.40044862 117 159
		 0.65656567 0.40044862 117 153 0.65656567 0.40044862 117 152 0.66161615
		 0.40044862 118 153 0.65656567 0.40044862 118 159 0.65656567 0.40044862 
		118 157 0.66161615 0.41054964 118 155 0.66161615 0.41054964 119 158
		 0.66161615 0.40044862 119 152 0.66161615 0.40044862 119 154 0.66666669
		 0.41054964 119 156 0.66666669 0.41054964 120 160 0.64141417 0.40044862 
		120 161 0.63636363 0.40044862 120 163 0.64141417 0.41054964 120 162
		 0.64646465 0.41054964 121 162 0.64646465 0.41054964 121 163 0.64141417
		 0.41054964 121 165 0.64141417 0.41054964 121 164 0.64646465 0.41054964 
		122 164 0.64646465 0.41054964 122 165 0.64141417 0.41054964 122 167
		 0.63636363 0.40044862 122 166 0.64141417 0.40044862 123 166 0.64141417
		 0.40044862 123 167 0.63636363 0.40044862 123 161 0.63636363 0.40044862 
		123 160 0.64141417 0.40044862 124 161 0.63636363 0.40044862 124 167
		 0.63636363 0.40044862 124 165 0.64141417 0.41054964 124 163 0.64141417
		 0.41054964 125 166 0.64141417 0.40044862 125 160 0.64141417 0.40044862 
		125 162 0.64646465 0.41054964 125 164 0.64646465 0.41054964;
	setAttr ".nuv[500:624]" 126 168 0.65151513 0.40044862 126 169 0.65656567
		 0.40044862 126 171 0.65151513 0.41054964 126 170 0.64646465 0.41054964 
		127 170 0.64646465 0.41054964 127 171 0.65151513 0.41054964 127 173
		 0.65151513 0.41054964 127 172 0.64646465 0.41054964 128 172 0.64646465
		 0.41054964 128 173 0.65151513 0.41054964 128 175 0.65656567 0.40044862 
		128 174 0.65151513 0.40044862 129 174 0.65151513 0.40044862 129 175
		 0.65656567 0.40044862 129 169 0.65656567 0.40044862 129 168 0.65151513
		 0.40044862 130 169 0.65656567 0.40044862 130 175 0.65656567 0.40044862 
		130 173 0.65151513 0.41054964 130 171 0.65151513 0.41054964 131 174
		 0.65151513 0.40044862 131 168 0.65151513 0.40044862 131 170 0.64646465
		 0.41054964 131 172 0.64646465 0.41054964 132 176 0.62121212 0.40044862 
		132 177 0.61616158 0.40044862 132 179 0.62121212 0.41054964 132 178
		 0.62626261 0.41054964 133 178 0.62626261 0.41054964 133 179 0.62121212
		 0.41054964 133 181 0.62121212 0.41054964 133 180 0.62626261 0.41054964 
		134 180 0.62626261 0.41054964 134 181 0.62121212 0.41054964 134 183
		 0.61616158 0.40044862 134 182 0.62121212 0.40044862 135 182 0.62121212
		 0.40044862 135 183 0.61616158 0.40044862 135 177 0.61616158 0.40044862 
		135 176 0.62121212 0.40044862 136 177 0.61616158 0.40044862 136 183
		 0.61616158 0.40044862 136 181 0.62121212 0.41054964 136 179 0.62121212
		 0.41054964 137 182 0.62121212 0.40044862 137 176 0.62121212 0.40044862 
		137 178 0.62626261 0.41054964 137 180 0.62626261 0.41054964 138 184
		 0.63131315 0.40044862 138 185 0.63636363 0.40044862 138 187 0.63131315
		 0.41054964 138 186 0.62626261 0.41054964 139 186 0.62626261 0.41054964 
		139 187 0.63131315 0.41054964 139 189 0.63131315 0.41054964 139 188
		 0.62626261 0.41054964 140 188 0.62626261 0.41054964 140 189 0.63131315
		 0.41054964 140 191 0.63636363 0.40044862 140 190 0.63131315 0.40044862 
		141 190 0.63131315 0.40044862 141 191 0.63636363 0.40044862 141 185
		 0.63636363 0.40044862 141 184 0.63131315 0.40044862 142 185 0.63636363
		 0.40044862 142 191 0.63636363 0.40044862 142 189 0.63131315 0.41054964 
		142 187 0.63131315 0.41054964 143 190 0.63131315 0.40044862 143 184
		 0.63131315 0.40044862 143 186 0.62626261 0.41054964 143 188 0.62626261
		 0.41054964 144 192 0.6111111 0.40044862 144 193 0.61616158 0.40044862 
		144 195 0.6111111 0.41054964 144 194 0.60606062 0.41054964 145 194
		 0.60606062 0.41054964 145 195 0.6111111 0.41054964 145 197 0.6111111
		 0.41054964 145 196 0.60606062 0.41054964 146 196 0.60606062 0.41054964 
		146 197 0.6111111 0.41054964 146 199 0.61616158 0.40044862 146 198
		 0.6111111 0.40044862 147 198 0.6111111 0.40044862 147 199 0.61616158
		 0.40044862 147 193 0.61616158 0.40044862 147 192 0.6111111 0.40044862 
		148 193 0.61616158 0.40044862 148 199 0.61616158 0.40044862 148 197
		 0.6111111 0.41054964 148 195 0.6111111 0.41054964 149 198 0.6111111 0.40044862 
		149 192 0.6111111 0.40044862 149 194 0.60606062 0.41054964 149 196
		 0.60606062 0.41054964 150 200 0.59090912 0.40044862 150 201 0.5959596
		 0.40044862 150 203 0.59090912 0.41054964 150 202 0.58585858 0.41054964 
		151 202 0.58585858 0.41054964 151 203 0.59090912 0.41054964 151 205
		 0.59090912 0.41054964 151 204 0.58585858 0.41054964 152 204 0.58585858
		 0.41054964 152 205 0.59090912 0.41054964 152 207 0.5959596 0.40044862 
		152 206 0.59090912 0.40044862 153 206 0.59090912 0.40044862 153 207
		 0.5959596 0.40044862 153 201 0.5959596 0.40044862 153 200 0.59090912
		 0.40044862 154 201 0.5959596 0.40044862 154 207 0.5959596 0.40044862 
		154 205 0.59090912 0.41054964 154 203 0.59090912 0.41054964 155 206
		 0.59090912 0.40044862 155 200 0.59090912 0.40044862 155 202 0.58585858
		 0.41054964 155 204 0.58585858 0.41054964 156 208 0.57070708 0.40044862 
		156 209 0.57575756 0.40044862 156 211 0.57070708 0.41054964 156 210
		 0.56565654 0.41054964 157 210 0.56565654 0.41054964;
	setAttr ".nuv[625:749]" 157 211 0.57070708 0.41054964 157 213 0.57070708
		 0.41054964 157 212 0.56565654 0.41054964 158 212 0.56565654 0.41054964 
		158 213 0.57070708 0.41054964 158 215 0.57575756 0.40044862 158 214
		 0.57070708 0.40044862 159 214 0.57070708 0.40044862 159 215 0.57575756
		 0.40044862 159 209 0.57575756 0.40044862 159 208 0.57070708 0.40044862 
		160 209 0.57575756 0.40044862 160 215 0.57575756 0.40044862 160 213
		 0.57070708 0.41054964 160 211 0.57070708 0.41054964 161 214 0.57070708
		 0.40044862 161 208 0.57070708 0.40044862 161 210 0.56565654 0.41054964 
		161 212 0.56565654 0.41054964 162 216 0.55050504 0.40044862 162 217
		 0.55555558 0.40044862 162 219 0.55050504 0.41054964 162 218 0.54545456
		 0.41054964 163 218 0.54545456 0.41054964 163 219 0.55050504 0.41054964 
		163 221 0.55050504 0.41054964 163 220 0.54545456 0.41054964 164 220
		 0.54545456 0.41054964 164 221 0.55050504 0.41054964 164 223 0.55555558
		 0.40044862 164 222 0.55050504 0.40044862 165 222 0.55050504 0.40044862 
		165 223 0.55555558 0.40044862 165 217 0.55555558 0.40044862 165 216
		 0.55050504 0.40044862 166 217 0.55555558 0.40044862 166 223 0.55555558
		 0.40044862 166 221 0.55050504 0.41054964 166 219 0.55050504 0.41054964 
		167 222 0.55050504 0.40044862 167 216 0.55050504 0.40044862 167 218
		 0.54545456 0.41054964 167 220 0.54545456 0.41054964 168 224 0.530303
		 0.40044862 168 225 0.53535354 0.40044862 168 227 0.530303 0.41054964 
		168 226 0.52525252 0.41054964 169 226 0.52525252 0.41054964 169 227
		 0.530303 0.41054964 169 229 0.530303 0.41054964 169 228 0.52525252 0.41054964 
		170 228 0.52525252 0.41054964 170 229 0.530303 0.41054964 170 231
		 0.53535354 0.40044862 170 230 0.530303 0.40044862 171 230 0.530303 0.40044862 
		171 231 0.53535354 0.40044862 171 225 0.53535354 0.40044862 171 224
		 0.530303 0.40044862 172 225 0.53535354 0.40044862 172 231 0.53535354
		 0.40044862 172 229 0.530303 0.41054964 172 227 0.530303 0.41054964 173 
		230 0.530303 0.40044862 173 224 0.530303 0.40044862 173 226 0.52525252
		 0.41054964 173 228 0.52525252 0.41054964 174 232 0.51010102 0.40044862 
		174 233 0.5151515 0.40044862 174 235 0.51010102 0.41054964 174 234
		 0.50505048 0.41054964 175 234 0.50505048 0.41054964 175 235 0.51010102
		 0.41054964 175 237 0.51010102 0.41054964 175 236 0.50505048 0.41054964 
		176 236 0.50505048 0.41054964 176 237 0.51010102 0.41054964 176 239
		 0.5151515 0.40044862 176 238 0.51010102 0.40044862 177 238 0.51010102
		 0.40044862 177 239 0.5151515 0.40044862 177 233 0.5151515 0.40044862 
		177 232 0.51010102 0.40044862 178 233 0.5151515 0.40044862 178 239
		 0.5151515 0.40044862 178 237 0.51010102 0.41054964 178 235 0.51010102
		 0.41054964 179 238 0.51010102 0.40044862 179 232 0.51010102 0.40044862 
		179 234 0.50505048 0.41054964 179 236 0.50505048 0.41054964 180 240
		 0.60101008 0.40044862 180 241 0.5959596 0.40044862 180 243 0.60101008
		 0.41054964 180 242 0.60606062 0.41054964 181 242 0.60606062 0.41054964 
		181 243 0.60101008 0.41054964 181 245 0.60101008 0.41054964 181 244
		 0.60606062 0.41054964 182 244 0.60606062 0.41054964 182 245 0.60101008
		 0.41054964 182 247 0.5959596 0.40044862 182 246 0.60101008 0.40044862 
		183 246 0.60101008 0.40044862 183 247 0.5959596 0.40044862 183 241
		 0.5959596 0.40044862 183 240 0.60101008 0.40044862 184 241 0.5959596
		 0.40044862 184 247 0.5959596 0.40044862 184 245 0.60101008 0.41054964 
		184 243 0.60101008 0.41054964 185 246 0.60101008 0.40044862 185 240
		 0.60101008 0.40044862 185 242 0.60606062 0.41054964 185 244 0.60606062
		 0.41054964 186 248 0.5808081 0.40044862 186 249 0.57575756 0.40044862 
		186 251 0.5808081 0.41054964 186 250 0.58585858 0.41054964 187 250
		 0.58585858 0.41054964 187 251 0.5808081 0.41054964 187 253 0.5808081
		 0.41054964 187 252 0.58585858 0.41054964 188 252 0.58585858 0.41054964 
		188 253 0.5808081 0.41054964;
	setAttr ".nuv[750:874]" 188 255 0.57575756 0.40044862 188 254 0.5808081
		 0.40044862 189 254 0.5808081 0.40044862 189 255 0.57575756 0.40044862 
		189 249 0.57575756 0.40044862 189 248 0.5808081 0.40044862 190 249
		 0.57575756 0.40044862 190 255 0.57575756 0.40044862 190 253 0.5808081
		 0.41054964 190 251 0.5808081 0.41054964 191 254 0.5808081 0.40044862 
		191 248 0.5808081 0.40044862 191 250 0.58585858 0.41054964 191 252
		 0.58585858 0.41054964 192 256 0.56060606 0.40044862 192 257 0.55555558
		 0.40044862 192 259 0.56060606 0.41054964 192 258 0.56565654 0.41054964 
		193 258 0.56565654 0.41054964 193 259 0.56060606 0.41054964 193 261
		 0.56060606 0.41054964 193 260 0.56565654 0.41054964 194 260 0.56565654
		 0.41054964 194 261 0.56060606 0.41054964 194 263 0.55555558 0.40044862 
		194 262 0.56060606 0.40044862 195 262 0.56060606 0.40044862 195 263
		 0.55555558 0.40044862 195 257 0.55555558 0.40044862 195 256 0.56060606
		 0.40044862 196 257 0.55555558 0.40044862 196 263 0.55555558 0.40044862 
		196 261 0.56060606 0.41054964 196 259 0.56060606 0.41054964 197 262
		 0.56060606 0.40044862 197 256 0.56060606 0.40044862 197 258 0.56565654
		 0.41054964 197 260 0.56565654 0.41054964 198 264 0.54040402 0.40044862 
		198 265 0.53535354 0.40044862 198 267 0.54040402 0.41054964 198 266
		 0.54545456 0.41054964 199 266 0.54545456 0.41054964 199 267 0.54040402
		 0.41054964 199 269 0.54040402 0.41054964 199 268 0.54545456 0.41054964 
		200 268 0.54545456 0.41054964 200 269 0.54040402 0.41054964 200 271
		 0.53535354 0.40044862 200 270 0.54040402 0.40044862 201 270 0.54040402
		 0.40044862 201 271 0.53535354 0.40044862 201 265 0.53535354 0.40044862 
		201 264 0.54040402 0.40044862 202 265 0.53535354 0.40044862 202 271
		 0.53535354 0.40044862 202 269 0.54040402 0.41054964 202 267 0.54040402
		 0.41054964 203 270 0.54040402 0.40044862 203 264 0.54040402 0.40044862 
		203 266 0.54545456 0.41054964 203 268 0.54545456 0.41054964 204 272
		 0.52020204 0.40044862 204 273 0.5151515 0.40044862 204 275 0.52020204
		 0.41054964 204 274 0.52525252 0.41054964 205 274 0.52525252 0.41054964 
		205 275 0.52020204 0.41054964 205 277 0.52020204 0.41054964 205 276
		 0.52525252 0.41054964 206 276 0.52525252 0.41054964 206 277 0.52020204
		 0.41054964 206 279 0.5151515 0.40044862 206 278 0.52020204 0.40044862 
		207 278 0.52020204 0.40044862 207 279 0.5151515 0.40044862 207 273
		 0.5151515 0.40044862 207 272 0.52020204 0.40044862 208 273 0.5151515
		 0.40044862 208 279 0.5151515 0.40044862 208 277 0.52020204 0.41054964 
		208 275 0.52020204 0.41054964 209 278 0.52020204 0.40044862 209 272
		 0.52020204 0.40044862 209 274 0.52525252 0.41054964 209 276 0.52525252
		 0.41054964 210 280 0.82323229 0.40044862 210 281 0.81818181 0.40044862 
		210 283 0.82323229 0.41054964 210 282 0.82828283 0.41054964 211 282
		 0.82828283 0.41054964 211 283 0.82323229 0.41054964 211 285 0.82323229
		 0.41054964 211 284 0.82828283 0.41054964 212 284 0.82828283 0.41054964 
		212 285 0.82323229 0.41054964 212 287 0.81818181 0.40044862 212 286
		 0.82323229 0.40044862 213 286 0.82323229 0.40044862 213 287 0.81818181
		 0.40044862 213 281 0.81818181 0.40044862 213 280 0.82323229 0.40044862 
		214 281 0.81818181 0.40044862 214 287 0.81818181 0.40044862 214 285
		 0.82323229 0.41054964 214 283 0.82323229 0.41054964 215 286 0.82323229
		 0.40044862 215 280 0.82323229 0.40044862 215 282 0.82828283 0.41054964 
		215 284 0.82828283 0.41054964 216 288 0.80303031 0.40044862 216 289
		 0.79797983 0.40044862 216 291 0.80303031 0.41054964 216 290 0.80808079
		 0.41054964 217 290 0.80808079 0.41054964 217 291 0.80303031 0.41054964 
		217 293 0.80303031 0.41054964 217 292 0.80808079 0.41054964 218 292
		 0.80808079 0.41054964 218 293 0.80303031 0.41054964 218 295 0.79797983
		 0.40044862 218 294 0.80303031 0.40044862 219 294 0.80303031 0.40044862 
		219 295 0.79797983 0.40044862 219 289 0.79797983 0.40044862;
	setAttr ".nuv[875:999]" 219 288 0.80303031 0.40044862 220 289 0.79797983
		 0.40044862 220 295 0.79797983 0.40044862 220 293 0.80303031 0.41054964 
		220 291 0.80303031 0.41054964 221 294 0.80303031 0.40044862 221 288
		 0.80303031 0.40044862 221 290 0.80808079 0.41054964 221 292 0.80808079
		 0.41054964 222 296 0.81313133 0.40044862 222 297 0.81818181 0.40044862 
		222 299 0.81313133 0.41054964 222 298 0.80808079 0.41054964 223 298
		 0.80808079 0.41054964 223 299 0.81313133 0.41054964 223 301 0.81313133
		 0.41054964 223 300 0.80808079 0.41054964 224 300 0.80808079 0.41054964 
		224 301 0.81313133 0.41054964 224 303 0.81818181 0.40044862 224 302
		 0.81313133 0.40044862 225 302 0.81313133 0.40044862 225 303 0.81818181
		 0.40044862 225 297 0.81818181 0.40044862 225 296 0.81313133 0.40044862 
		226 297 0.81818181 0.40044862 226 303 0.81818181 0.40044862 226 301
		 0.81313133 0.41054964 226 299 0.81313133 0.41054964 227 302 0.81313133
		 0.40044862 227 296 0.81313133 0.40044862 227 298 0.80808079 0.41054964 
		227 300 0.80808079 0.41054964 228 304 0.78282827 0.40044862 228 305
		 0.77777779 0.40044862 228 307 0.78282827 0.41054964 228 306 0.78787875
		 0.41054964 229 306 0.78787875 0.41054964 229 307 0.78282827 0.41054964 
		229 309 0.78282827 0.41054964 229 308 0.78787875 0.41054964 230 308
		 0.78787875 0.41054964 230 309 0.78282827 0.41054964 230 311 0.77777779
		 0.40044862 230 310 0.78282827 0.40044862 231 310 0.78282827 0.40044862 
		231 311 0.77777779 0.40044862 231 305 0.77777779 0.40044862 231 304
		 0.78282827 0.40044862 232 305 0.77777779 0.40044862 232 311 0.77777779
		 0.40044862 232 309 0.78282827 0.41054964 232 307 0.78282827 0.41054964 
		233 310 0.78282827 0.40044862 233 304 0.78282827 0.40044862 233 306
		 0.78787875 0.41054964 233 308 0.78787875 0.41054964 234 312 0.79292929
		 0.40044862 234 313 0.79797983 0.40044862 234 315 0.79292929 0.41054964 
		234 314 0.78787875 0.41054964 235 314 0.78787875 0.41054964 235 315
		 0.79292929 0.41054964 235 317 0.79292929 0.41054964 235 316 0.78787875
		 0.41054964 236 316 0.78787875 0.41054964 236 317 0.79292929 0.41054964 
		236 319 0.79797983 0.40044862 236 318 0.79292929 0.40044862 237 318
		 0.79292929 0.40044862 237 319 0.79797983 0.40044862 237 313 0.79797983
		 0.40044862 237 312 0.79292929 0.40044862 238 313 0.79797983 0.40044862 
		238 319 0.79797983 0.40044862 238 317 0.79292929 0.41054964 238 315
		 0.79292929 0.41054964 239 318 0.79292929 0.40044862 239 312 0.79292929
		 0.40044862 239 314 0.78787875 0.41054964 239 316 0.78787875 0.41054964 
		240 320 0.77272725 0.40044862 240 321 0.77777779 0.40044862 240 323
		 0.77272725 0.41054964 240 322 0.76767677 0.41054964 241 322 0.76767677
		 0.41054964 241 323 0.77272725 0.41054964 241 325 0.77272725 0.41054964 
		241 324 0.76767677 0.41054964 242 324 0.76767677 0.41054964 242 325
		 0.77272725 0.41054964 242 327 0.77777779 0.40044862 242 326 0.77272725
		 0.40044862 243 326 0.77272725 0.40044862 243 327 0.77777779 0.40044862 
		243 321 0.77777779 0.40044862 243 320 0.77272725 0.40044862 244 321
		 0.77777779 0.40044862 244 327 0.77777779 0.40044862 244 325 0.77272725
		 0.41054964 244 323 0.77272725 0.41054964 245 326 0.77272725 0.40044862 
		245 320 0.77272725 0.40044862 245 322 0.76767677 0.41054964 245 324
		 0.76767677 0.41054964 246 328 0.75252521 0.40044862 246 329 0.75757575
		 0.40044862 246 331 0.75252521 0.41054964 246 330 0.74747473 0.41054964 
		247 330 0.74747473 0.41054964 247 331 0.75252521 0.41054964 247 333
		 0.75252521 0.41054964 247 332 0.74747473 0.41054964 248 332 0.74747473
		 0.41054964 248 333 0.75252521 0.41054964 248 335 0.75757575 0.40044862 
		248 334 0.75252521 0.40044862 249 334 0.75252521 0.40044862 249 335
		 0.75757575 0.40044862 249 329 0.75757575 0.40044862 249 328 0.75252521
		 0.40044862 250 329 0.75757575 0.40044862 250 335 0.75757575 0.40044862 
		250 333 0.75252521 0.41054964 250 331 0.75252521 0.41054964;
	setAttr ".nuv[1000:1124]" 251 334 0.75252521 0.40044862 251 328 0.75252521
		 0.40044862 251 330 0.74747473 0.41054964 251 332 0.74747473 0.41054964 
		252 336 0.73232323 0.40044862 252 337 0.73737371 0.40044862 252 339
		 0.73232323 0.41054964 252 338 0.72727275 0.41054964 253 338 0.72727275
		 0.41054964 253 339 0.73232323 0.41054964 253 341 0.73232323 0.41054964 
		253 340 0.72727275 0.41054964 254 340 0.72727275 0.41054964 254 341
		 0.73232323 0.41054964 254 343 0.73737371 0.40044862 254 342 0.73232323
		 0.40044862 255 342 0.73232323 0.40044862 255 343 0.73737371 0.40044862 
		255 337 0.73737371 0.40044862 255 336 0.73232323 0.40044862 256 337
		 0.73737371 0.40044862 256 343 0.73737371 0.40044862 256 341 0.73232323
		 0.41054964 256 339 0.73232323 0.41054964 257 342 0.73232323 0.40044862 
		257 336 0.73232323 0.40044862 257 338 0.72727275 0.41054964 257 340
		 0.72727275 0.41054964 258 344 0.71212125 0.40044862 258 345 0.71717173
		 0.40044862 258 347 0.71212125 0.41054964 258 346 0.70707071 0.41054964 
		259 346 0.70707071 0.41054964 259 347 0.71212125 0.41054964 259 349
		 0.71212125 0.41054964 259 348 0.70707071 0.41054964 260 348 0.70707071
		 0.41054964 260 349 0.71212125 0.41054964 260 351 0.71717173 0.40044862 
		260 350 0.71212125 0.40044862 261 350 0.71212125 0.40044862 261 351
		 0.71717173 0.40044862 261 345 0.71717173 0.40044862 261 344 0.71212125
		 0.40044862 262 345 0.71717173 0.40044862 262 351 0.71717173 0.40044862 
		262 349 0.71212125 0.41054964 262 347 0.71212125 0.41054964 263 350
		 0.71212125 0.40044862 263 344 0.71212125 0.40044862 263 346 0.70707071
		 0.41054964 263 348 0.70707071 0.41054964 264 352 0.69191921 0.40044862 
		264 353 0.69696969 0.40044862 264 355 0.69191921 0.41054964 264 354
		 0.68686867 0.41054964 265 354 0.68686867 0.41054964 265 355 0.69191921
		 0.41054964 265 357 0.69191921 0.41054964 265 356 0.68686867 0.41054964 
		266 356 0.68686867 0.41054964 266 357 0.69191921 0.41054964 266 359
		 0.69696969 0.40044862 266 358 0.69191921 0.40044862 267 358 0.69191921
		 0.40044862 267 359 0.69696969 0.40044862 267 353 0.69696969 0.40044862 
		267 352 0.69191921 0.40044862 268 353 0.69696969 0.40044862 268 359
		 0.69696969 0.40044862 268 357 0.69191921 0.41054964 268 355 0.69191921
		 0.41054964 269 358 0.69191921 0.40044862 269 352 0.69191921 0.40044862 
		269 354 0.68686867 0.41054964 269 356 0.68686867 0.41054964 270 360
		 0.67171717 0.40044862 270 361 0.67676771 0.40044862 270 363 0.67171717
		 0.41054964 270 362 0.66666669 0.41054964 271 362 0.66666669 0.41054964 
		271 363 0.67171717 0.41054964 271 365 0.67171717 0.41054964 271 364
		 0.66666669 0.41054964 272 364 0.66666669 0.41054964 272 365 0.67171717
		 0.41054964 272 367 0.67676771 0.40044862 272 366 0.67171717 0.40044862 
		273 366 0.67171717 0.40044862 273 367 0.67676771 0.40044862 273 361
		 0.67676771 0.40044862 273 360 0.67171717 0.40044862 274 361 0.67676771
		 0.40044862 274 367 0.67676771 0.40044862 274 365 0.67171717 0.41054964 
		274 363 0.67171717 0.41054964 275 366 0.67171717 0.40044862 275 360
		 0.67171717 0.40044862 275 362 0.66666669 0.41054964 275 364 0.66666669
		 0.41054964 276 368 0.76262629 0.40044862 276 369 0.75757575 0.40044862 
		276 371 0.76262629 0.41054964 276 370 0.76767677 0.41054964 277 370
		 0.76767677 0.41054964 277 371 0.76262629 0.41054964 277 373 0.76262629
		 0.41054964 277 372 0.76767677 0.41054964 278 372 0.76767677 0.41054964 
		278 373 0.76262629 0.41054964 278 375 0.75757575 0.40044862 278 374
		 0.76262629 0.40044862 279 374 0.76262629 0.40044862 279 375 0.75757575
		 0.40044862 279 369 0.75757575 0.40044862 279 368 0.76262629 0.40044862 
		280 369 0.75757575 0.40044862 280 375 0.75757575 0.40044862 280 373
		 0.76262629 0.41054964 280 371 0.76262629 0.41054964 281 374 0.76262629
		 0.40044862 281 368 0.76262629 0.40044862 281 370 0.76767677 0.41054964 
		281 372 0.76767677 0.41054964 282 376 0.74242425 0.40044862;
	setAttr ".nuv[1125:1249]" 282 377 0.73737371 0.40044862 282 379 0.74242425
		 0.41054964 282 378 0.74747473 0.41054964 283 378 0.74747473 0.41054964 
		283 379 0.74242425 0.41054964 283 381 0.74242425 0.41054964 283 380
		 0.74747473 0.41054964 284 380 0.74747473 0.41054964 284 381 0.74242425
		 0.41054964 284 383 0.73737371 0.40044862 284 382 0.74242425 0.40044862 
		285 382 0.74242425 0.40044862 285 383 0.73737371 0.40044862 285 377
		 0.73737371 0.40044862 285 376 0.74242425 0.40044862 286 377 0.73737371
		 0.40044862 286 383 0.73737371 0.40044862 286 381 0.74242425 0.41054964 
		286 379 0.74242425 0.41054964 287 382 0.74242425 0.40044862 287 376
		 0.74242425 0.40044862 287 378 0.74747473 0.41054964 287 380 0.74747473
		 0.41054964 288 384 0.72222221 0.40044862 288 385 0.71717173 0.40044862 
		288 387 0.72222221 0.41054964 288 386 0.72727275 0.41054964 289 386
		 0.72727275 0.41054964 289 387 0.72222221 0.41054964 289 389 0.72222221
		 0.41054964 289 388 0.72727275 0.41054964 290 388 0.72727275 0.41054964 
		290 389 0.72222221 0.41054964 290 391 0.71717173 0.40044862 290 390
		 0.72222221 0.40044862 291 390 0.72222221 0.40044862 291 391 0.71717173
		 0.40044862 291 385 0.71717173 0.40044862 291 384 0.72222221 0.40044862 
		292 385 0.71717173 0.40044862 292 391 0.71717173 0.40044862 292 389
		 0.72222221 0.41054964 292 387 0.72222221 0.41054964 293 390 0.72222221
		 0.40044862 293 384 0.72222221 0.40044862 293 386 0.72727275 0.41054964 
		293 388 0.72727275 0.41054964 294 392 0.70202017 0.40044862 294 393
		 0.69696969 0.40044862 294 395 0.70202017 0.41054964 294 394 0.70707071
		 0.41054964 295 394 0.70707071 0.41054964 295 395 0.70202017 0.41054964 
		295 397 0.70202017 0.41054964 295 396 0.70707071 0.41054964 296 396
		 0.70707071 0.41054964 296 397 0.70202017 0.41054964 296 399 0.69696969
		 0.40044862 296 398 0.70202017 0.40044862 297 398 0.70202017 0.40044862 
		297 399 0.69696969 0.40044862 297 393 0.69696969 0.40044862 297 392
		 0.70202017 0.40044862 298 393 0.69696969 0.40044862 298 399 0.69696969
		 0.40044862 298 397 0.70202017 0.41054964 298 395 0.70202017 0.41054964 
		299 398 0.70202017 0.40044862 299 392 0.70202017 0.40044862 299 394
		 0.70707071 0.41054964 299 396 0.70707071 0.41054964 300 400 0.68181819
		 0.40044862 300 401 0.67676771 0.40044862 300 403 0.68181819 0.41054964 
		300 402 0.68686867 0.41054964 301 402 0.68686867 0.41054964 301 403
		 0.68181819 0.41054964 301 405 0.68181819 0.41054964 301 404 0.68686867
		 0.41054964 302 404 0.68686867 0.41054964 302 405 0.68181819 0.41054964 
		302 407 0.67676771 0.40044862 302 406 0.68181819 0.40044862 303 406
		 0.68181819 0.40044862 303 407 0.67676771 0.40044862 303 401 0.67676771
		 0.40044862 303 400 0.68181819 0.40044862 304 401 0.67676771 0.40044862 
		304 407 0.67676771 0.40044862 304 405 0.68181819 0.41054964 304 403
		 0.68181819 0.41054964 305 406 0.68181819 0.40044862 305 400 0.68181819
		 0.40044862 305 402 0.68686867 0.41054964 305 404 0.68686867 0.41054964 
		306 408 0.9848485 0.40044862 306 409 0.97979796 0.40044862 306 411
		 0.9848485 0.41054964 306 410 0.98989898 0.41054964 307 410 0.98989898
		 0.41054964 307 411 0.9848485 0.41054964 307 413 0.9848485 0.41054964 
		307 412 0.98989898 0.41054964 308 412 0.98989898 0.41054964 308 413
		 0.9848485 0.41054964 308 415 0.97979796 0.40044862 308 414 0.9848485
		 0.40044862 309 414 0.9848485 0.40044862 309 415 0.97979796 0.40044862 
		309 409 0.97979796 0.40044862 309 408 0.9848485 0.40044862 310 409
		 0.97979796 0.40044862 310 415 0.97979796 0.40044862 310 413 0.9848485
		 0.41054964 310 411 0.9848485 0.41054964 311 414 0.9848485 0.40044862 
		311 408 0.9848485 0.40044862 311 410 0.98989898 0.41054964 311 412
		 0.98989898 0.41054964 312 416 0.96464646 0.40044862 312 417 0.95959592
		 0.40044862 312 419 0.96464646 0.41054964 312 418 0.969697 0.41054964 
		313 418 0.969697 0.41054964 313 419 0.96464646 0.41054964;
	setAttr ".nuv[1250:1374]" 313 421 0.96464646 0.41054964 313 420 0.969697
		 0.41054964 314 420 0.969697 0.41054964 314 421 0.96464646 0.41054964 
		314 423 0.95959592 0.40044862 314 422 0.96464646 0.40044862 315 422
		 0.96464646 0.40044862 315 423 0.95959592 0.40044862 315 417 0.95959592
		 0.40044862 315 416 0.96464646 0.40044862 316 417 0.95959592 0.40044862 
		316 423 0.95959592 0.40044862 316 421 0.96464646 0.41054964 316 419
		 0.96464646 0.41054964 317 422 0.96464646 0.40044862 317 416 0.96464646
		 0.40044862 317 418 0.969697 0.41054964 317 420 0.969697 0.41054964 318 
		424 0.97474748 0.40044862 318 425 0.97979796 0.40044862 318 427 0.97474748
		 0.41054964 318 426 0.969697 0.41054964 319 426 0.969697 0.41054964 319 
		427 0.97474748 0.41054964 319 429 0.97474748 0.41054964 319 428 0.969697
		 0.41054964 320 428 0.969697 0.41054964 320 429 0.97474748 0.41054964 
		320 431 0.97979796 0.40044862 320 430 0.97474748 0.40044862 321 430
		 0.97474748 0.40044862 321 431 0.97979796 0.40044862 321 425 0.97979796
		 0.40044862 321 424 0.97474748 0.40044862 322 425 0.97979796 0.40044862 
		322 431 0.97979796 0.40044862 322 429 0.97474748 0.41054964 322 427
		 0.97474748 0.41054964 323 430 0.97474748 0.40044862 323 424 0.97474748
		 0.40044862 323 426 0.969697 0.41054964 323 428 0.969697 0.41054964 324 
		432 0.94444442 0.40044862 324 433 0.93939394 0.40044862 324 435 0.94444442
		 0.41054964 324 434 0.94949496 0.41054964 325 434 0.94949496 0.41054964 
		325 435 0.94444442 0.41054964 325 437 0.94444442 0.41054964 325 436
		 0.94949496 0.41054964 326 436 0.94949496 0.41054964 326 437 0.94444442
		 0.41054964 326 439 0.93939394 0.40044862 326 438 0.94444442 0.40044862 
		327 438 0.94444442 0.40044862 327 439 0.93939394 0.40044862 327 433
		 0.93939394 0.40044862 327 432 0.94444442 0.40044862 328 433 0.93939394
		 0.40044862 328 439 0.93939394 0.40044862 328 437 0.94444442 0.41054964 
		328 435 0.94444442 0.41054964 329 438 0.94444442 0.40044862 329 432
		 0.94444442 0.40044862 329 434 0.94949496 0.41054964 329 436 0.94949496
		 0.41054964 330 440 0.9545455 0.40044862 330 441 0.95959592 0.40044862 
		330 443 0.9545455 0.41054964 330 442 0.94949496 0.41054964 331 442
		 0.94949496 0.41054964 331 443 0.9545455 0.41054964 331 445 0.9545455
		 0.41054964 331 444 0.94949496 0.41054964 332 444 0.94949496 0.41054964 
		332 445 0.9545455 0.41054964 332 447 0.95959592 0.40044862 332 446
		 0.9545455 0.40044862 333 446 0.9545455 0.40044862 333 447 0.95959592
		 0.40044862 333 441 0.95959592 0.40044862 333 440 0.9545455 0.40044862 
		334 441 0.95959592 0.40044862 334 447 0.95959592 0.40044862 334 445
		 0.9545455 0.41054964 334 443 0.9545455 0.41054964 335 446 0.9545455 0.40044862 
		335 440 0.9545455 0.40044862 335 442 0.94949496 0.41054964 335 444
		 0.94949496 0.41054964 336 448 0.93434346 0.40044862 336 449 0.93939394
		 0.40044862 336 451 0.93434346 0.41054964 336 450 0.92929292 0.41054964 
		337 450 0.92929292 0.41054964 337 451 0.93434346 0.41054964 337 453
		 0.93434346 0.41054964 337 452 0.92929292 0.41054964 338 452 0.92929292
		 0.41054964 338 453 0.93434346 0.41054964 338 455 0.93939394 0.40044862 
		338 454 0.93434346 0.40044862 339 454 0.93434346 0.40044862 339 455
		 0.93939394 0.40044862 339 449 0.93939394 0.40044862 339 448 0.93434346
		 0.40044862 340 449 0.93939394 0.40044862 340 455 0.93939394 0.40044862 
		340 453 0.93434346 0.41054964 340 451 0.93434346 0.41054964 341 454
		 0.93434346 0.40044862 341 448 0.93434346 0.40044862 341 450 0.92929292
		 0.41054964 341 452 0.92929292 0.41054964 342 456 0.91414142 0.40044862 
		342 457 0.91919196 0.40044862 342 459 0.91414142 0.41054964 342 458
		 0.90909088 0.41054964 343 458 0.90909088 0.41054964 343 459 0.91414142
		 0.41054964 343 461 0.91414142 0.41054964 343 460 0.90909088 0.41054964 
		344 460 0.90909088 0.41054964 344 461 0.91414142 0.41054964 344 463
		 0.91919196 0.40044862;
	setAttr ".nuv[1375:1499]" 344 462 0.91414142 0.40044862 345 462 0.91414142
		 0.40044862 345 463 0.91919196 0.40044862 345 457 0.91919196 0.40044862 
		345 456 0.91414142 0.40044862 346 457 0.91919196 0.40044862 346 463
		 0.91919196 0.40044862 346 461 0.91414142 0.41054964 346 459 0.91414142
		 0.41054964 347 462 0.91414142 0.40044862 347 456 0.91414142 0.40044862 
		347 458 0.90909088 0.41054964 347 460 0.90909088 0.41054964 348 464
		 0.89393938 0.40044862 348 465 0.89898992 0.40044862 348 467 0.89393938
		 0.41054964 348 466 0.8888889 0.41054964 349 466 0.8888889 0.41054964 
		349 467 0.89393938 0.41054964 349 469 0.89393938 0.41054964 349 468
		 0.8888889 0.41054964 350 468 0.8888889 0.41054964 350 469 0.89393938
		 0.41054964 350 471 0.89898992 0.40044862 350 470 0.89393938 0.40044862 
		351 470 0.89393938 0.40044862 351 471 0.89898992 0.40044862 351 465
		 0.89898992 0.40044862 351 464 0.89393938 0.40044862 352 465 0.89898992
		 0.40044862 352 471 0.89898992 0.40044862 352 469 0.89393938 0.41054964 
		352 467 0.89393938 0.41054964 353 470 0.89393938 0.40044862 353 464
		 0.89393938 0.40044862 353 466 0.8888889 0.41054964 353 468 0.8888889
		 0.41054964 354 472 0.87373734 0.40044862 354 473 0.87878788 0.40044862 
		354 475 0.87373734 0.41054964 354 474 0.86868685 0.41054964 355 474
		 0.86868685 0.41054964 355 475 0.87373734 0.41054964 355 477 0.87373734
		 0.41054964 355 476 0.86868685 0.41054964 356 476 0.86868685 0.41054964 
		356 477 0.87373734 0.41054964 356 479 0.87878788 0.40044862 356 478
		 0.87373734 0.40044862 357 478 0.87373734 0.40044862 357 479 0.87878788
		 0.40044862 357 473 0.87878788 0.40044862 357 472 0.87373734 0.40044862 
		358 473 0.87878788 0.40044862 358 479 0.87878788 0.40044862 358 477
		 0.87373734 0.41054964 358 475 0.87373734 0.41054964 359 478 0.87373734
		 0.40044862 359 472 0.87373734 0.40044862 359 474 0.86868685 0.41054964 
		359 476 0.86868685 0.41054964 360 480 0.85353535 0.40044862 360 481
		 0.85858583 0.40044862 360 483 0.85353535 0.41054964 360 482 0.84848487
		 0.41054964 361 482 0.84848487 0.41054964 361 483 0.85353535 0.41054964 
		361 485 0.85353535 0.41054964 361 484 0.84848487 0.41054964 362 484
		 0.84848487 0.41054964 362 485 0.85353535 0.41054964 362 487 0.85858583
		 0.40044862 362 486 0.85353535 0.40044862 363 486 0.85353535 0.40044862 
		363 487 0.85858583 0.40044862 363 481 0.85858583 0.40044862 363 480
		 0.85353535 0.40044862 364 481 0.85858583 0.40044862 364 487 0.85858583
		 0.40044862 364 485 0.85353535 0.41054964 364 483 0.85353535 0.41054964 
		365 486 0.85353535 0.40044862 365 480 0.85353535 0.40044862 365 482
		 0.84848487 0.41054964 365 484 0.84848487 0.41054964 366 488 0.83333337
		 0.40044862 366 489 0.83838379 0.40044862 366 491 0.83333337 0.41054964 
		366 490 0.82828283 0.41054964 367 490 0.82828283 0.41054964 367 491
		 0.83333337 0.41054964 367 493 0.83333337 0.41054964 367 492 0.82828283
		 0.41054964 368 492 0.82828283 0.41054964 368 493 0.83333337 0.41054964 
		368 495 0.83838379 0.40044862 368 494 0.83333337 0.40044862 369 494
		 0.83333337 0.40044862 369 495 0.83838379 0.40044862 369 489 0.83838379
		 0.40044862 369 488 0.83333337 0.40044862 370 489 0.83838379 0.40044862 
		370 495 0.83838379 0.40044862 370 493 0.83333337 0.41054964 370 491
		 0.83333337 0.41054964 371 494 0.83333337 0.40044862 371 488 0.83333337
		 0.40044862 371 490 0.82828283 0.41054964 371 492 0.82828283 0.41054964 
		372 496 0.92424244 0.40044862 372 497 0.91919196 0.40044862 372 499
		 0.92424244 0.41054964 372 498 0.92929292 0.41054964 373 498 0.92929292
		 0.41054964 373 499 0.92424244 0.41054964 373 501 0.92424244 0.41054964 
		373 500 0.92929292 0.41054964 374 500 0.92929292 0.41054964 374 501
		 0.92424244 0.41054964 374 503 0.91919196 0.40044862 374 502 0.92424244
		 0.40044862 375 502 0.92424244 0.40044862 375 503 0.91919196 0.40044862 
		375 497 0.91919196 0.40044862 375 496 0.92424244 0.40044862;
	setAttr ".nuv[1500:1624]" 376 497 0.91919196 0.40044862 376 503 0.91919196
		 0.40044862 376 501 0.92424244 0.41054964 376 499 0.92424244 0.41054964 
		377 502 0.92424244 0.40044862 377 496 0.92424244 0.40044862 377 498
		 0.92929292 0.41054964 377 500 0.92929292 0.41054964 378 504 0.9040404
		 0.40044862 378 505 0.89898992 0.40044862 378 507 0.9040404 0.41054964 
		378 506 0.90909088 0.41054964 379 506 0.90909088 0.41054964 379 507
		 0.9040404 0.41054964 379 509 0.9040404 0.41054964 379 508 0.90909088
		 0.41054964 380 508 0.90909088 0.41054964 380 509 0.9040404 0.41054964 
		380 511 0.89898992 0.40044862 380 510 0.9040404 0.40044862 381 510
		 0.9040404 0.40044862 381 511 0.89898992 0.40044862 381 505 0.89898992
		 0.40044862 381 504 0.9040404 0.40044862 382 505 0.89898992 0.40044862 
		382 511 0.89898992 0.40044862 382 509 0.9040404 0.41054964 382 507
		 0.9040404 0.41054964 383 510 0.9040404 0.40044862 383 504 0.9040404 0.40044862 
		383 506 0.90909088 0.41054964 383 508 0.90909088 0.41054964 384 512
		 0.88383842 0.40044862 384 513 0.87878788 0.40044862 384 515 0.88383842
		 0.41054964 384 514 0.8888889 0.41054964 385 514 0.8888889 0.41054964 
		385 515 0.88383842 0.41054964 385 517 0.88383842 0.41054964 385 516
		 0.8888889 0.41054964 386 516 0.8888889 0.41054964 386 517 0.88383842
		 0.41054964 386 519 0.87878788 0.40044862 386 518 0.88383842 0.40044862 
		387 518 0.88383842 0.40044862 387 519 0.87878788 0.40044862 387 513
		 0.87878788 0.40044862 387 512 0.88383842 0.40044862 388 513 0.87878788
		 0.40044862 388 519 0.87878788 0.40044862 388 517 0.88383842 0.41054964 
		388 515 0.88383842 0.41054964 389 518 0.88383842 0.40044862 389 512
		 0.88383842 0.40044862 389 514 0.8888889 0.41054964 389 516 0.8888889
		 0.41054964 390 520 0.86363637 0.40044862 390 521 0.85858583 0.40044862 
		390 523 0.86363637 0.41054964 390 522 0.86868685 0.41054964 391 522
		 0.86868685 0.41054964 391 523 0.86363637 0.41054964 391 525 0.86363637
		 0.41054964 391 524 0.86868685 0.41054964 392 524 0.86868685 0.41054964 
		392 525 0.86363637 0.41054964 392 527 0.85858583 0.40044862 392 526
		 0.86363637 0.40044862 393 526 0.86363637 0.40044862 393 527 0.85858583
		 0.40044862 393 521 0.85858583 0.40044862 393 520 0.86363637 0.40044862 
		394 521 0.85858583 0.40044862 394 527 0.85858583 0.40044862 394 525
		 0.86363637 0.41054964 394 523 0.86363637 0.41054964 395 526 0.86363637
		 0.40044862 395 520 0.86363637 0.40044862 395 522 0.86868685 0.41054964 
		395 524 0.86868685 0.41054964 396 528 0.84343433 0.40044862 396 529
		 0.83838379 0.40044862 396 531 0.84343433 0.41054964 396 530 0.84848487
		 0.41054964 397 530 0.84848487 0.41054964 397 531 0.84343433 0.41054964 
		397 533 0.84343433 0.41054964 397 532 0.84848487 0.41054964 398 532
		 0.84848487 0.41054964 398 533 0.84343433 0.41054964 398 535 0.83838379
		 0.40044862 398 534 0.84343433 0.40044862 399 534 0.84343433 0.40044862 
		399 535 0.83838379 0.40044862 399 529 0.83838379 0.40044862 399 528
		 0.84343433 0.40044862 400 529 0.83838379 0.40044862 400 535 0.83838379
		 0.40044862 400 533 0.84343433 0.41054964 400 531 0.84343433 0.41054964 
		401 534 0.84343433 0.40044862 401 528 0.84343433 0.40044862 401 530
		 0.84848487 0.41054964 401 532 0.84848487 0.41054964 402 536 0.99494946
		 0.40044862 402 537 1 0.40044862 402 539 0.99494946 0.41054964 402 
		538 0.98989898 0.41054964 403 538 0.98989898 0.41054964 403 539 0.99494946
		 0.41054964 403 541 0.99494946 0.41054964 403 540 0.98989898 0.41054964 
		404 540 0.98989898 0.41054964 404 541 0.99494946 0.41054964 404 543
		 1 0.40044862 404 542 0.99494946 0.40044862 405 542 0.99494946 0.40044862 
		405 543 1 0.40044862 405 537 1 0.40044862 405 536 0.99494946 0.40044862 
		406 537 1 0.40044862 406 543 1 0.40044862 406 541 0.99494946 0.41054964 
		406 539 0.99494946 0.41054964 407 542 0.99494946 0.40044862;
	setAttr ".nuv[1625:1749]" 407 536 0.99494946 0.40044862 407 538 0.98989898
		 0.41054964 407 540 0.98989898 0.41054964 408 544 0.33838379 0.40044862 
		408 545 0.33333337 0.40044862 408 547 0.33838379 0.41054964 408 546
		 0.34343433 0.41054964 409 546 0.34343433 0.41054964 409 547 0.33838379
		 0.41054964 409 549 0.33838379 0.41054964 409 548 0.34343433 0.41054964 
		410 548 0.34343433 0.41054964 410 549 0.33838379 0.41054964 410 551
		 0.33333337 0.40044862 410 550 0.33838379 0.40044862 411 550 0.33838379
		 0.40044862 411 551 0.33333337 0.40044862 411 545 0.33333337 0.40044862 
		411 544 0.33838379 0.40044862 412 545 0.33333337 0.40044862 412 551
		 0.33333337 0.40044862 412 549 0.33838379 0.41054964 412 547 0.33838379
		 0.41054964 413 550 0.33838379 0.40044862 413 544 0.33838379 0.40044862 
		413 546 0.34343433 0.41054964 413 548 0.34343433 0.41054964 414 552
		 0.31818175 0.40044862 414 553 0.31313133 0.40044862 414 555 0.31818175
		 0.41054964 414 554 0.32323229 0.41054964 415 554 0.32323229 0.41054964 
		415 555 0.31818175 0.41054964 415 557 0.31818175 0.41054964 415 556
		 0.32323229 0.41054964 416 556 0.32323229 0.41054964 416 557 0.31818175
		 0.41054964 416 559 0.31313133 0.40044862 416 558 0.31818175 0.40044862 
		417 558 0.31818175 0.40044862 417 559 0.31313133 0.40044862 417 553
		 0.31313133 0.40044862 417 552 0.31818175 0.40044862 418 553 0.31313133
		 0.40044862 418 559 0.31313133 0.40044862 418 557 0.31818175 0.41054964 
		418 555 0.31818175 0.41054964 419 558 0.31818175 0.40044862 419 552
		 0.31818175 0.40044862 419 554 0.32323229 0.41054964 419 556 0.32323229
		 0.41054964 420 560 0.32828283 0.40044862 420 561 0.33333337 0.40044862 
		420 563 0.32828283 0.41054964 420 562 0.32323229 0.41054964 421 562
		 0.32323229 0.41054964 421 563 0.32828283 0.41054964 421 565 0.32828283
		 0.41054964 421 564 0.32323229 0.41054964 422 564 0.32323229 0.41054964 
		422 565 0.32828283 0.41054964 422 567 0.33333337 0.40044862 422 566
		 0.32828283 0.40044862 423 566 0.32828283 0.40044862 423 567 0.33333337
		 0.40044862 423 561 0.33333337 0.40044862 423 560 0.32828283 0.40044862 
		424 561 0.33333337 0.40044862 424 567 0.33333337 0.40044862 424 565
		 0.32828283 0.41054964 424 563 0.32828283 0.41054964 425 566 0.32828283
		 0.40044862 425 560 0.32828283 0.40044862 425 562 0.32323229 0.41054964 
		425 564 0.32323229 0.41054964 426 568 0.29797983 0.40044862 426 569
		 0.29292929 0.40044862 426 571 0.29797983 0.41054964 426 570 0.30303025
		 0.41054964 427 570 0.30303025 0.41054964 427 571 0.29797983 0.41054964 
		427 573 0.29797983 0.41054964 427 572 0.30303025 0.41054964 428 572
		 0.30303025 0.41054964 428 573 0.29797983 0.41054964 428 575 0.29292929
		 0.40044862 428 574 0.29797983 0.40044862 429 574 0.29797983 0.40044862 
		429 575 0.29292929 0.40044862 429 569 0.29292929 0.40044862 429 568
		 0.29797983 0.40044862 430 569 0.29292929 0.40044862 430 575 0.29292929
		 0.40044862 430 573 0.29797983 0.41054964 430 571 0.29797983 0.41054964 
		431 574 0.29797983 0.40044862 431 568 0.29797983 0.40044862 431 570
		 0.30303025 0.41054964 431 572 0.30303025 0.41054964 432 576 0.30808079
		 0.40044862 432 577 0.31313133 0.40044862 432 579 0.30808079 0.41054964 
		432 578 0.30303025 0.41054964 433 578 0.30303025 0.41054964 433 579
		 0.30808079 0.41054964 433 581 0.30808079 0.41054964 433 580 0.30303025
		 0.41054964 434 580 0.30303025 0.41054964 434 581 0.30808079 0.41054964 
		434 583 0.31313133 0.40044862 434 582 0.30808079 0.40044862 435 582
		 0.30808079 0.40044862 435 583 0.31313133 0.40044862 435 577 0.31313133
		 0.40044862 435 576 0.30808079 0.40044862 436 577 0.31313133 0.40044862 
		436 583 0.31313133 0.40044862 436 581 0.30808079 0.41054964 436 579
		 0.30808079 0.41054964 437 582 0.30808079 0.40044862 437 576 0.30808079
		 0.40044862 437 578 0.30303025 0.41054964 437 580 0.30303025 0.41054964 
		438 584 0.28787875 0.40044862 438 585 0.29292929 0.40044862;
	setAttr ".nuv[1750:1874]" 438 587 0.28787875 0.41054964 438 586 0.28282833
		 0.41054964 439 586 0.28282833 0.41054964 439 587 0.28787875 0.41054964 
		439 589 0.28787875 0.41054964 439 588 0.28282833 0.41054964 440 588
		 0.28282833 0.41054964 440 589 0.28787875 0.41054964 440 591 0.29292929
		 0.40044862 440 590 0.28787875 0.40044862 441 590 0.28787875 0.40044862 
		441 591 0.29292929 0.40044862 441 585 0.29292929 0.40044862 441 584
		 0.28787875 0.40044862 442 585 0.29292929 0.40044862 442 591 0.29292929
		 0.40044862 442 589 0.28787875 0.41054964 442 587 0.28787875 0.41054964 
		443 590 0.28787875 0.40044862 443 584 0.28787875 0.40044862 443 586
		 0.28282833 0.41054964 443 588 0.28282833 0.41054964 444 592 0.26767683
		 0.40044862 444 593 0.27272725 0.40044862 444 595 0.26767683 0.41054964 
		444 594 0.26262629 0.41054964 445 594 0.26262629 0.41054964 445 595
		 0.26767683 0.41054964 445 597 0.26767683 0.41054964 445 596 0.26262629
		 0.41054964 446 596 0.26262629 0.41054964 446 597 0.26767683 0.41054964 
		446 599 0.27272725 0.40044862 446 598 0.26767683 0.40044862 447 598
		 0.26767683 0.40044862 447 599 0.27272725 0.40044862 447 593 0.27272725
		 0.40044862 447 592 0.26767683 0.40044862 448 593 0.27272725 0.40044862 
		448 599 0.27272725 0.40044862 448 597 0.26767683 0.41054964 448 595
		 0.26767683 0.41054964 449 598 0.26767683 0.40044862 449 592 0.26767683
		 0.40044862 449 594 0.26262629 0.41054964 449 596 0.26262629 0.41054964 
		450 600 0.24747479 0.40044862 450 601 0.25252521 0.40044862 450 603
		 0.24747479 0.41054964 450 602 0.24242425 0.41054964 451 602 0.24242425
		 0.41054964 451 603 0.24747479 0.41054964 451 605 0.24747479 0.41054964 
		451 604 0.24242425 0.41054964 452 604 0.24242425 0.41054964 452 605
		 0.24747479 0.41054964 452 607 0.25252521 0.40044862 452 606 0.24747479
		 0.40044862 453 606 0.24747479 0.40044862 453 607 0.25252521 0.40044862 
		453 601 0.25252521 0.40044862 453 600 0.24747479 0.40044862 454 601
		 0.25252521 0.40044862 454 607 0.25252521 0.40044862 454 605 0.24747479
		 0.41054964 454 603 0.24747479 0.41054964 455 606 0.24747479 0.40044862 
		455 600 0.24747479 0.40044862 455 602 0.24242425 0.41054964 455 604
		 0.24242425 0.41054964 456 608 0.22727275 0.40044862 456 609 0.23232317
		 0.40044862 456 611 0.22727275 0.41054964 456 610 0.22222221 0.41054964 
		457 610 0.22222221 0.41054964 457 611 0.22727275 0.41054964 457 613
		 0.22727275 0.41054964 457 612 0.22222221 0.41054964 458 612 0.22222221
		 0.41054964 458 613 0.22727275 0.41054964 458 615 0.23232317 0.40044862 
		458 614 0.22727275 0.40044862 459 614 0.22727275 0.40044862 459 615
		 0.23232317 0.40044862 459 609 0.23232317 0.40044862 459 608 0.22727275
		 0.40044862 460 609 0.23232317 0.40044862 460 615 0.23232317 0.40044862 
		460 613 0.22727275 0.41054964 460 611 0.22727275 0.41054964 461 614
		 0.22727275 0.40044862 461 608 0.22727275 0.40044862 461 610 0.22222221
		 0.41054964 461 612 0.22222221 0.41054964 462 616 0.20707071 0.40044862 
		462 617 0.21212125 0.40044862 462 619 0.20707071 0.41054964 462 618
		 0.20202017 0.41054964 463 618 0.20202017 0.41054964 463 619 0.20707071
		 0.41054964 463 621 0.20707071 0.41054964 463 620 0.20202017 0.41054964 
		464 620 0.20202017 0.41054964 464 621 0.20707071 0.41054964 464 623
		 0.21212125 0.40044862 464 622 0.20707071 0.40044862 465 622 0.20707071
		 0.40044862 465 623 0.21212125 0.40044862 465 617 0.21212125 0.40044862 
		465 616 0.20707071 0.40044862 466 617 0.21212125 0.40044862 466 623
		 0.21212125 0.40044862 466 621 0.20707071 0.41054964 466 619 0.20707071
		 0.41054964 467 622 0.20707071 0.40044862 467 616 0.20707071 0.40044862 
		467 618 0.20202017 0.41054964 467 620 0.20202017 0.41054964 468 624
		 0.18686867 0.40044862 468 625 0.19191921 0.40044862 468 627 0.18686867
		 0.41054964 468 626 0.18181825 0.41054964 469 626 0.18181825 0.41054964 
		469 627 0.18686867 0.41054964 469 629 0.18686867 0.41054964;
	setAttr ".nuv[1875:1999]" 469 628 0.18181825 0.41054964 470 628 0.18181825
		 0.41054964 470 629 0.18686867 0.41054964 470 631 0.19191921 0.40044862 
		470 630 0.18686867 0.40044862 471 630 0.18686867 0.40044862 471 631
		 0.19191921 0.40044862 471 625 0.19191921 0.40044862 471 624 0.18686867
		 0.40044862 472 625 0.19191921 0.40044862 472 631 0.19191921 0.40044862 
		472 629 0.18686867 0.41054964 472 627 0.18686867 0.41054964 473 630
		 0.18686867 0.40044862 473 624 0.18686867 0.40044862 473 626 0.18181825
		 0.41054964 473 628 0.18181825 0.41054964 474 632 0.27777779 0.40044862 
		474 633 0.27272725 0.40044862 474 635 0.27777779 0.41054964 474 634
		 0.28282833 0.41054964 475 634 0.28282833 0.41054964 475 635 0.27777779
		 0.41054964 475 637 0.27777779 0.41054964 475 636 0.28282833 0.41054964 
		476 636 0.28282833 0.41054964 476 637 0.27777779 0.41054964 476 639
		 0.27272725 0.40044862 476 638 0.27777779 0.40044862 477 638 0.27777779
		 0.40044862 477 639 0.27272725 0.40044862 477 633 0.27272725 0.40044862 
		477 632 0.27777779 0.40044862 478 633 0.27272725 0.40044862 478 639
		 0.27272725 0.40044862 478 637 0.27777779 0.41054964 478 635 0.27777779
		 0.41054964 479 638 0.27777779 0.40044862 479 632 0.27777779 0.40044862 
		479 634 0.28282833 0.41054964 479 636 0.28282833 0.41054964 480 640
		 0.25757575 0.40044862 480 641 0.25252521 0.40044862 480 643 0.25757575
		 0.41054964 480 642 0.26262629 0.41054964 481 642 0.26262629 0.41054964 
		481 643 0.25757575 0.41054964 481 645 0.25757575 0.41054964 481 644
		 0.26262629 0.41054964 482 644 0.26262629 0.41054964 482 645 0.25757575
		 0.41054964 482 647 0.25252521 0.40044862 482 646 0.25757575 0.40044862 
		483 646 0.25757575 0.40044862 483 647 0.25252521 0.40044862 483 641
		 0.25252521 0.40044862 483 640 0.25757575 0.40044862 484 641 0.25252521
		 0.40044862 484 647 0.25252521 0.40044862 484 645 0.25757575 0.41054964 
		484 643 0.25757575 0.41054964 485 646 0.25757575 0.40044862 485 640
		 0.25757575 0.40044862 485 642 0.26262629 0.41054964 485 644 0.26262629
		 0.41054964 486 648 0.23737371 0.40044862 486 649 0.23232317 0.40044862 
		486 651 0.23737371 0.41054964 486 650 0.24242425 0.41054964 487 650
		 0.24242425 0.41054964 487 651 0.23737371 0.41054964 487 653 0.23737371
		 0.41054964 487 652 0.24242425 0.41054964 488 652 0.24242425 0.41054964 
		488 653 0.23737371 0.41054964 488 655 0.23232317 0.40044862 488 654
		 0.23737371 0.40044862 489 654 0.23737371 0.40044862 489 655 0.23232317
		 0.40044862 489 649 0.23232317 0.40044862 489 648 0.23737371 0.40044862 
		490 649 0.23232317 0.40044862 490 655 0.23232317 0.40044862 490 653
		 0.23737371 0.41054964 490 651 0.23737371 0.41054964 491 654 0.23737371
		 0.40044862 491 648 0.23737371 0.40044862 491 650 0.24242425 0.41054964 
		491 652 0.24242425 0.41054964 492 656 0.21717167 0.40044862 492 657
		 0.21212125 0.40044862 492 659 0.21717167 0.41054964 492 658 0.22222221
		 0.41054964 493 658 0.22222221 0.41054964 493 659 0.21717167 0.41054964 
		493 661 0.21717167 0.41054964 493 660 0.22222221 0.41054964 494 660
		 0.22222221 0.41054964 494 661 0.21717167 0.41054964 494 663 0.21212125
		 0.40044862 494 662 0.21717167 0.40044862 495 662 0.21717167 0.40044862 
		495 663 0.21212125 0.40044862 495 657 0.21212125 0.40044862 495 656
		 0.21717167 0.40044862 496 657 0.21212125 0.40044862 496 663 0.21212125
		 0.40044862 496 661 0.21717167 0.41054964 496 659 0.21717167 0.41054964 
		497 662 0.21717167 0.40044862 497 656 0.21717167 0.40044862 497 658
		 0.22222221 0.41054964 497 660 0.22222221 0.41054964 498 664 0.19696975
		 0.40044862 498 665 0.19191921 0.40044862 498 667 0.19696975 0.41054964 
		498 666 0.20202017 0.41054964 499 666 0.20202017 0.41054964 499 667
		 0.19696975 0.41054964 499 669 0.19696975 0.41054964 499 668 0.20202017
		 0.41054964 500 668 0.20202017 0.41054964 500 669 0.19696975 0.41054964 
		500 671 0.19191921 0.40044862 500 670 0.19696975 0.40044862;
	setAttr ".nuv[2000:2124]" 501 670 0.19696975 0.40044862 501 671 0.19191921
		 0.40044862 501 665 0.19191921 0.40044862 501 664 0.19696975 0.40044862 
		502 665 0.19191921 0.40044862 502 671 0.19191921 0.40044862 502 669
		 0.19696975 0.41054964 502 667 0.19696975 0.41054964 503 670 0.19696975
		 0.40044862 503 664 0.19696975 0.40044862 503 666 0.20202017 0.41054964 
		503 668 0.20202017 0.41054964 504 672 0.17676771 0.40044862 504 673
		 0.17171717 0.40044862 504 675 0.17676771 0.41054964 504 674 0.18181825
		 0.41054964 505 674 0.18181825 0.41054964 505 675 0.17676771 0.41054964 
		505 677 0.17676771 0.41054964 505 676 0.18181825 0.41054964 506 676
		 0.18181825 0.41054964 506 677 0.17676771 0.41054964 506 679 0.17171717
		 0.40044862 506 678 0.17676771 0.40044862 507 678 0.17676771 0.40044862 
		507 679 0.17171717 0.40044862 507 673 0.17171717 0.40044862 507 672
		 0.17676771 0.40044862 508 673 0.17171717 0.40044862 508 679 0.17171717
		 0.40044862 508 677 0.17676771 0.41054964 508 675 0.17676771 0.41054964 
		509 678 0.17676771 0.40044862 509 672 0.17676771 0.40044862 509 674
		 0.18181825 0.41054964 509 676 0.18181825 0.41054964 510 680 0.15656567
		 0.40044862 510 681 0.15151513 0.40044862 510 683 0.15656567 0.41054964 
		510 682 0.16161621 0.41054964 511 682 0.16161621 0.41054964 511 683
		 0.15656567 0.41054964 511 685 0.15656567 0.41054964 511 684 0.16161621
		 0.41054964 512 684 0.16161621 0.41054964 512 685 0.15656567 0.41054964 
		512 687 0.15151513 0.40044862 512 686 0.15656567 0.40044862 513 686
		 0.15656567 0.40044862 513 687 0.15151513 0.40044862 513 681 0.15151513
		 0.40044862 513 680 0.15656567 0.40044862 514 681 0.15151513 0.40044862 
		514 687 0.15151513 0.40044862 514 685 0.15656567 0.41054964 514 683
		 0.15656567 0.41054964 515 686 0.15656567 0.40044862 515 680 0.15656567
		 0.40044862 515 682 0.16161621 0.41054964 515 684 0.16161621 0.41054964 
		516 688 0.16666663 0.40044862 516 689 0.17171717 0.40044862 516 691
		 0.16666663 0.41054964 516 690 0.16161621 0.41054964 517 690 0.16161621
		 0.41054964 517 691 0.16666663 0.41054964 517 693 0.16666663 0.41054964 
		517 692 0.16161621 0.41054964 518 692 0.16161621 0.41054964 518 693
		 0.16666663 0.41054964 518 695 0.17171717 0.40044862 518 694 0.16666663
		 0.40044862 519 694 0.16666663 0.40044862 519 695 0.17171717 0.40044862 
		519 689 0.17171717 0.40044862 519 688 0.16666663 0.40044862 520 689
		 0.17171717 0.40044862 520 695 0.17171717 0.40044862 520 693 0.16666663
		 0.41054964 520 691 0.16666663 0.41054964 521 694 0.16666663 0.40044862 
		521 688 0.16666663 0.40044862 521 690 0.16161621 0.41054964 521 692
		 0.16161621 0.41054964 522 696 0.13636363 0.40044862 522 697 0.13131309
		 0.40044862 522 699 0.13636363 0.41054964 522 698 0.14141417 0.41054964 
		523 698 0.14141417 0.41054964 523 699 0.13636363 0.41054964 523 701
		 0.13636363 0.41054964 523 700 0.14141417 0.41054964 524 700 0.14141417
		 0.41054964 524 701 0.13636363 0.41054964 524 703 0.13131309 0.40044862 
		524 702 0.13636363 0.40044862 525 702 0.13636363 0.40044862 525 703
		 0.13131309 0.40044862 525 697 0.13131309 0.40044862 525 696 0.13636363
		 0.40044862 526 697 0.13131309 0.40044862 526 703 0.13131309 0.40044862 
		526 701 0.13636363 0.41054964 526 699 0.13636363 0.41054964 527 702
		 0.13636363 0.40044862 527 696 0.13636363 0.40044862 527 698 0.14141417
		 0.41054964 527 700 0.14141417 0.41054964 528 704 0.14646459 0.40044862 
		528 705 0.15151513 0.40044862 528 707 0.14646459 0.41054964 528 706
		 0.14141417 0.41054964 529 706 0.14141417 0.41054964 529 707 0.14646459
		 0.41054964 529 709 0.14646459 0.41054964 529 708 0.14141417 0.41054964 
		530 708 0.14141417 0.41054964 530 709 0.14646459 0.41054964 530 711
		 0.15151513 0.40044862 530 710 0.14646459 0.40044862 531 710 0.14646459
		 0.40044862 531 711 0.15151513 0.40044862 531 705 0.15151513 0.40044862 
		531 704 0.14646459 0.40044862 532 705 0.15151513 0.40044862;
	setAttr ".nuv[2125:2249]" 532 711 0.15151513 0.40044862 532 709 0.14646459
		 0.41054964 532 707 0.14646459 0.41054964 533 710 0.14646459 0.40044862 
		533 704 0.14646459 0.40044862 533 706 0.14141417 0.41054964 533 708
		 0.14141417 0.41054964 534 712 0.12626266 0.40044862 534 713 0.13131309
		 0.40044862 534 715 0.12626266 0.41054964 534 714 0.12121212 0.41054964 
		535 714 0.12121212 0.41054964 535 715 0.12626266 0.41054964 535 717
		 0.12626266 0.41054964 535 716 0.12121212 0.41054964 536 716 0.12121212
		 0.41054964 536 717 0.12626266 0.41054964 536 719 0.13131309 0.40044862 
		536 718 0.12626266 0.40044862 537 718 0.12626266 0.40044862 537 719
		 0.13131309 0.40044862 537 713 0.13131309 0.40044862 537 712 0.12626266
		 0.40044862 538 713 0.13131309 0.40044862 538 719 0.13131309 0.40044862 
		538 717 0.12626266 0.41054964 538 715 0.12626266 0.41054964 539 718
		 0.12626266 0.40044862 539 712 0.12626266 0.40044862 539 714 0.12121212
		 0.41054964 539 716 0.12121212 0.41054964 540 720 0.10606062 0.40044862 
		540 721 0.11111116 0.40044862 540 723 0.10606062 0.41054964 540 722
		 0.10101008 0.41054964 541 722 0.10101008 0.41054964 541 723 0.10606062
		 0.41054964 541 725 0.10606062 0.41054964 541 724 0.10101008 0.41054964 
		542 724 0.10101008 0.41054964 542 725 0.10606062 0.41054964 542 727
		 0.11111116 0.40044862 542 726 0.10606062 0.40044862 543 726 0.10606062
		 0.40044862 543 727 0.11111116 0.40044862 543 721 0.11111116 0.40044862 
		543 720 0.10606062 0.40044862 544 721 0.11111116 0.40044862 544 727
		 0.11111116 0.40044862 544 725 0.10606062 0.41054964 544 723 0.10606062
		 0.41054964 545 726 0.10606062 0.40044862 545 720 0.10606062 0.40044862 
		545 722 0.10101008 0.41054964 545 724 0.10101008 0.41054964 546 728
		 0.085858583 0.40044862 546 729 0.090909123 0.40044862 546 731 0.085858583
		 0.41054964 546 730 0.080808043 0.41054964 547 730 0.080808043 0.41054964 
		547 731 0.085858583 0.41054964 547 733 0.085858583 0.41054964 547 
		732 0.080808043 0.41054964 548 732 0.080808043 0.41054964 548 733 0.085858583
		 0.41054964 548 735 0.090909123 0.40044862 548 734 0.085858583 0.40044862 
		549 734 0.085858583 0.40044862 549 735 0.090909123 0.40044862 549 
		729 0.090909123 0.40044862 549 728 0.085858583 0.40044862 550 729 0.090909123
		 0.40044862 550 735 0.090909123 0.40044862 550 733 0.085858583 0.41054964 
		550 731 0.085858583 0.41054964 551 734 0.085858583 0.40044862 551 
		728 0.085858583 0.40044862 551 730 0.080808043 0.41054964 551 732 0.080808043
		 0.41054964 552 736 0.065656543 0.40044862 552 737 0.070707083 0.40044862 
		552 739 0.065656543 0.41054964 552 738 0.060606003 0.41054964 553 
		738 0.060606003 0.41054964 553 739 0.065656543 0.41054964 553 741 0.065656543
		 0.41054964 553 740 0.060606003 0.41054964 554 740 0.060606003 0.41054964 
		554 741 0.065656543 0.41054964 554 743 0.070707083 0.40044862 554 
		742 0.065656543 0.40044862 555 742 0.065656543 0.40044862 555 743 0.070707083
		 0.40044862 555 737 0.070707083 0.40044862 555 736 0.065656543 0.40044862 
		556 737 0.070707083 0.40044862 556 743 0.070707083 0.40044862 556 
		741 0.065656543 0.41054964 556 739 0.065656543 0.41054964 557 742 0.065656543
		 0.40044862 557 736 0.065656543 0.40044862 557 738 0.060606003 0.41054964 
		557 740 0.060606003 0.41054964 558 744 0.045454502 0.40044862 558 
		745 0.050505042 0.40044862 558 747 0.045454502 0.41054964 558 746 0.040404081
		 0.41054964 559 746 0.040404081 0.41054964 559 747 0.045454502 0.41054964 
		559 749 0.045454502 0.41054964 559 748 0.040404081 0.41054964 560 
		748 0.040404081 0.41054964 560 749 0.045454502 0.41054964 560 751 0.050505042
		 0.40044862 560 750 0.045454502 0.40044862 561 750 0.045454502 0.40044862 
		561 751 0.050505042 0.40044862 561 745 0.050505042 0.40044862 561 
		744 0.045454502 0.40044862 562 745 0.050505042 0.40044862 562 751 0.050505042
		 0.40044862 562 749 0.045454502 0.41054964 562 747 0.045454502 0.41054964 
		563 750 0.045454502 0.40044862 563 744 0.045454502 0.40044862;
	setAttr ".nuv[2250:2374]" 563 746 0.040404081 0.41054964 563 748
		 0.040404081 0.41054964 564 752 0.025252581 0.40044862 564 753 0.030303001
		 0.40044862 564 755 0.025252581 0.41054964 564 754 0.020202041 0.41054964 
		565 754 0.020202041 0.41054964 565 755 0.025252581 0.41054964 565 
		757 0.025252581 0.41054964 565 756 0.020202041 0.41054964 566 756 0.020202041
		 0.41054964 566 757 0.025252581 0.41054964 566 759 0.030303001 0.40044862 
		566 758 0.025252581 0.40044862 567 758 0.025252581 0.40044862 567 
		759 0.030303001 0.40044862 567 753 0.030303001 0.40044862 567 752 0.025252581
		 0.40044862 568 753 0.030303001 0.40044862 568 759 0.030303001 0.40044862 
		568 757 0.025252581 0.41054964 568 755 0.025252581 0.41054964 569 
		758 0.025252581 0.40044862 569 752 0.025252581 0.40044862 569 754 0.020202041
		 0.41054964 569 756 0.020202041 0.41054964 570 760 0.11616158 0.40044862 
		570 761 0.11111116 0.40044862 570 763 0.11616158 0.41054964 570 762
		 0.12121212 0.41054964 571 762 0.12121212 0.41054964 571 763 0.11616158
		 0.41054964 571 765 0.11616158 0.41054964 571 764 0.12121212 0.41054964 
		572 764 0.12121212 0.41054964 572 765 0.11616158 0.41054964 572 767
		 0.11111116 0.40044862 572 766 0.11616158 0.40044862 573 766 0.11616158
		 0.40044862 573 767 0.11111116 0.40044862 573 761 0.11111116 0.40044862 
		573 760 0.11616158 0.40044862 574 761 0.11111116 0.40044862 574 767
		 0.11111116 0.40044862 574 765 0.11616158 0.41054964 574 763 0.11616158
		 0.41054964 575 766 0.11616158 0.40044862 575 760 0.11616158 0.40044862 
		575 762 0.12121212 0.41054964 575 764 0.12121212 0.41054964 576 768
		 0.095959663 0.40044862 576 769 0.090909123 0.40044862 576 771 0.095959663
		 0.41054964 576 770 0.10101008 0.41054964 577 770 0.10101008 0.41054964 
		577 771 0.095959663 0.41054964 577 773 0.095959663 0.41054964 577 
		772 0.10101008 0.41054964 578 772 0.10101008 0.41054964 578 773 0.095959663
		 0.41054964 578 775 0.090909123 0.40044862 578 774 0.095959663 0.40044862 
		579 774 0.095959663 0.40044862 579 775 0.090909123 0.40044862 579 
		769 0.090909123 0.40044862 579 768 0.095959663 0.40044862 580 769 0.090909123
		 0.40044862 580 775 0.090909123 0.40044862 580 773 0.095959663 0.41054964 
		580 771 0.095959663 0.41054964 581 774 0.095959663 0.40044862 581 
		768 0.095959663 0.40044862 581 770 0.10101008 0.41054964 581 772 0.10101008
		 0.41054964 582 776 0.075757504 0.40044862 582 777 0.070707083 0.40044862 
		582 779 0.075757504 0.41054964 582 778 0.080808043 0.41054964 583 
		778 0.080808043 0.41054964 583 779 0.075757504 0.41054964 583 781 0.075757504
		 0.41054964 583 780 0.080808043 0.41054964 584 780 0.080808043 0.41054964 
		584 781 0.075757504 0.41054964 584 783 0.070707083 0.40044862 584 
		782 0.075757504 0.40044862 585 782 0.075757504 0.40044862 585 783 0.070707083
		 0.40044862 585 777 0.070707083 0.40044862 585 776 0.075757504 0.40044862 
		586 777 0.070707083 0.40044862 586 783 0.070707083 0.40044862 586 
		781 0.075757504 0.41054964 586 779 0.075757504 0.41054964 587 782 0.075757504
		 0.40044862 587 776 0.075757504 0.40044862 587 778 0.080808043 0.41054964 
		587 780 0.080808043 0.41054964 588 784 0.055555582 0.40044862 588 
		785 0.050505042 0.40044862 588 787 0.055555582 0.41054964 588 786 0.060606003
		 0.41054964 589 786 0.060606003 0.41054964 589 787 0.055555582 0.41054964 
		589 789 0.055555582 0.41054964 589 788 0.060606003 0.41054964 590 
		788 0.060606003 0.41054964 590 789 0.055555582 0.41054964 590 791 0.050505042
		 0.40044862 590 790 0.055555582 0.40044862 591 790 0.055555582 0.40044862 
		591 791 0.050505042 0.40044862 591 785 0.050505042 0.40044862 591 
		784 0.055555582 0.40044862 592 785 0.050505042 0.40044862 592 791 0.050505042
		 0.40044862 592 789 0.055555582 0.41054964 592 787 0.055555582 0.41054964 
		593 790 0.055555582 0.40044862 593 784 0.055555582 0.40044862 593 
		786 0.060606003 0.41054964 593 788 0.060606003 0.41054964 594 792 0.035353541
		 0.40044862 594 793 0.030303001 0.40044862 594 795 0.035353541 0.41054964;
	setAttr ".nuv[2375:2443]" 594 794 0.040404081 0.41054964 595 794
		 0.040404081 0.41054964 595 795 0.035353541 0.41054964 595 797 0.035353541
		 0.41054964 595 796 0.040404081 0.41054964 596 796 0.040404081 0.41054964 
		596 797 0.035353541 0.41054964 596 799 0.030303001 0.40044862 596 
		798 0.035353541 0.40044862 597 798 0.035353541 0.40044862 597 799 0.030303001
		 0.40044862 597 793 0.030303001 0.40044862 597 792 0.035353541 0.40044862 
		598 793 0.030303001 0.40044862 598 799 0.030303001 0.40044862 598 
		797 0.035353541 0.41054964 598 795 0.035353541 0.41054964 599 798 0.035353541
		 0.40044862 599 792 0.035353541 0.40044862 599 794 0.040404081 0.41054964 
		599 796 0.040404081 0.41054964 600 800 0.015151501 0.40044862 600 
		801 0.01010108 0.40044862 600 803 0.015151501 0.41054964 600 802 0.020202041
		 0.41054964 601 802 0.020202041 0.41054964 601 803 0.015151501 0.41054964 
		601 805 0.015151501 0.41054964 601 804 0.020202041 0.41054964 602 
		804 0.020202041 0.41054964 602 805 0.015151501 0.41054964 602 807 0.01010108
		 0.40044862 602 806 0.015151501 0.40044862 603 806 0.015151501 0.40044862 
		603 807 0.01010108 0.40044862 603 801 0.01010108 0.40044862 603 800
		 0.015151501 0.40044862 604 801 0.01010108 0.40044862 604 807 0.01010108
		 0.40044862 604 805 0.015151501 0.41054964 604 803 0.015151501 0.41054964 
		605 806 0.015151501 0.40044862 605 800 0.015151501 0.40044862 605 
		802 0.020202041 0.41054964 605 804 0.020202041 0.41054964 606 808 0.00505054
		 0.40044862 606 809 0.01010108 0.40044862 606 811 0.00505054 0.41054964 
		606 810 0 0.41054964 607 810 0 0.41054964 607 811 0.00505054 0.41054964 
		607 813 0.00505054 0.41054964 607 812 0 0.41054964 608 812 0 0.41054964 
		608 813 0.00505054 0.41054964 608 815 0.01010108 0.40044862 608 814
		 0.00505054 0.40044862 609 814 0.00505054 0.40044862 609 815 0.01010108
		 0.40044862 609 809 0.01010108 0.40044862 609 808 0.00505054 0.40044862 
		610 809 0.01010108 0.40044862 610 815 0.01010108 0.40044862 610 813
		 0.00505054 0.41054964 610 811 0.00505054 0.41054964 611 814 0.00505054
		 0.40044862 611 808 0.00505054 0.40044862 611 810 0 0.41054964 611 
		812 0 0.41054964;
createNode psdFileTex -n "psdFileTex1";
	setAttr ".ftn" -type "string" "/Users/mistergood100/Documents/Game Design Class/Props/Floor//Floor UV.psd";
createNode place2dTexture -n "place2dTexture2";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 102;
	setAttr -s 101 ".out";
createNode groupId -n "groupId205";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:611]";
createNode groupId -n "groupId206";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj58";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj59";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj77";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj82";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj83";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj85";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj94";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj96";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj100";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 4.75 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV21";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV22";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV24";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV25";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV26";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV27";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV28";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV29";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV30";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV31";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV32";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV33";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV34";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV35";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV36";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV37";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV38";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV39";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV40";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV41";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV42";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV43";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV44";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV45";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV46";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV47";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV48";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV49";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV50";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV51";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.8376832 -0.43732911 0.95330626
		 -0.43732911 0.8376832 -0.20608306 0.72206008 -0.20608306 0.8376832 -0.20608306 0.72206008
		 -0.20608306 0.95330626 -0.43732911 0.8376832 -0.43732911;
createNode polyTweakUV -n "polyTweakUV52";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV53";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV54";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV55";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV56";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV57";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV58";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV59";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV60";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV61";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV62";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV63";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV64";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV65";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV66";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV67";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.60643709 -0.43732911 0.49081403
		 -0.43732911 0.60643709 -0.20608306 0.72206008 -0.20608306 0.60643709 -0.20608306
		 0.72206008 -0.20608306 0.49081403 -0.43732911 0.60643709 -0.43732911;
createNode polyTweakUV -n "polyTweakUV68";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV69";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV70";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV71";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV72";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV73";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV74";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV75";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV76";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV77";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV78";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV79";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV80";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV81";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV82";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV83";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV84";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV85";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV86";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV87";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV88";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV89";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV90";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV91";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV92";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV93";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV94";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -3.1664968e-08 -0.15613888
		 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613879 7.2643161e-08 -0.15613879 -3.1664968e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -2.4214387e-08 -0.15613888 -3.1664968e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV95";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV96";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV97";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV98";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV99";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyTweakUV -n "polyTweakUV100";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -6.8917871e-08 -0.15613888
		 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613879 7.2643161e-08 -0.15613879 -6.8917871e-08
		 -0.15613879 7.2643161e-08 -0.15613879 -9.8720193e-08 -0.15613888 -6.8917871e-08 -0.15613888;
createNode polyPlanarProj -n "polyPlanarProj101";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 -0.25 ;
	setAttr ".ic" -type "double2" 0.5 0.43049897224672384 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[1]" -type "float3" -1 0 0 ;
	setAttr ".tk[3]" -type "float3" -1 0 0 ;
	setAttr ".tk[5]" -type "float3" -1 0 0 ;
	setAttr ".tk[7]" -type "float3" -1 0 0 ;
createNode polyPlanarProj -n "polyPlanarProj102";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 5 ;
	setAttr ".ic" -type "double2" 0.5 0.48552061921806744 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -1 0 0 ;
	setAttr ".tk[3]" -type "float3" -1 0 0 ;
	setAttr ".tk[5]" -type "float3" -1 0 0 ;
	setAttr ".tk[7]" -type "float3" -1 0 0 ;
createNode polyPlanarProj -n "polyPlanarProj103";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 -0.5 5 ;
	setAttr ".ic" -type "double2" 0.5 0.48552061921806744 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -1 0 0 ;
	setAttr ".tk[3]" -type "float3" -1 0 0 ;
	setAttr ".tk[5]" -type "float3" -1 0 0 ;
	setAttr ".tk[7]" -type "float3" -1 0 0 ;
createNode polyPlanarProj -n "polyPlanarProj104";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 0.5 0 ;
	setAttr ".ic" -type "double2" 0.5 0.5611566844165965 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 98 98 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV101";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0 0.13317963 0 0.13317963
		 0 0.13317963 0 0.13317963 0 0.17132238 0 0.17132238 0 0.17132238 0 0.17132238 -0.0096578365
		 0.17132238 -0.0096578076 0.17132238 -0.0096578076 0.17132238 -0.0096578365 0.17132238
		 -0.0096578365 0.17132238 -0.0096578076 0.17132238 -0.0096578076 0.17132238 -0.0096578365
		 0.17132238 -0.0096578076 0.17132238 -0.0096578076 0.17132238 -0.0096578076 0.17132238
		 -0.0096578076 0.17132238 -0.0096578365 0.17132238 -0.0096578365 0.17132238 -0.0096578365
		 0.17132238 -0.0096578365 0.17132238;
createNode polyTweakUV -n "polyTweakUV102";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0 0.13317963 0 0.13317963
		 0 0.13317963 0 0.13317963 -0.0096578365 0.17132235 -0.0096578076 0.17132235 -0.0096578076
		 0.17132235 -0.0096578365 0.17132235 -0.0096578365 0.17132235 -0.0096578076 0.17132235
		 -0.0096578076 0.17132235 -0.0096578365 0.17132235 -0.0096578365 0.17132235 -0.0096578076
		 0.17132235 -0.0096578076 0.17132235 -0.0096578365 0.17132235 -0.0096578076 0.17132235
		 -0.0096578076 0.17132235 -0.0096578076 0.17132235 -0.0096578076 0.17132235 -0.0096578365
		 0.17132235 -0.0096578365 0.17132235 -0.0096578365 0.17132235 -0.0096578365 0.17132235;
createNode transferAttributes -n "transferAttributes1";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak1";
createNode objectSet -n "set1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId308";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId309";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes2";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak2";
createNode objectSet -n "set2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId310";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId311";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes3";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak3";
createNode objectSet -n "set3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId312";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId313";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes4";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak4";
createNode objectSet -n "set4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId314";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId315";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes5";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak5";
createNode objectSet -n "set5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId316";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId317";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes6";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak6";
createNode objectSet -n "set6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId318";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts116";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId319";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts117";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes7";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak7";
createNode objectSet -n "set7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId320";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId321";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts119";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes8";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak8";
createNode objectSet -n "set8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId322";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts120";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId323";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes9";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak9";
createNode objectSet -n "set9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId324";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts122";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId325";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts123";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes10";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak10";
createNode objectSet -n "set10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId326";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts124";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId327";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts125";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes11";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak11";
createNode objectSet -n "set11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId328";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts126";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId329";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts127";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes12";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak12";
createNode objectSet -n "set12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId330";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts128";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId331";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts129";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes13";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak13";
createNode objectSet -n "set13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId332";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts130";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId333";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts131";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes14";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak14";
createNode objectSet -n "set14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId334";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts132";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId335";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts133";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes15";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak15";
createNode objectSet -n "set15";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId336";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts134";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId337";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts135";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes16";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak16";
createNode objectSet -n "set16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId338";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts136";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId339";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts137";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes17";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak17";
createNode objectSet -n "set17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId340";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts138";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId341";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts139";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes18";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak18";
createNode objectSet -n "set18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId342";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts140";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId343";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts141";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes19";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak19";
createNode objectSet -n "set19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId344";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts142";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId345";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts143";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes20";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak20";
createNode objectSet -n "set20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId346";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts144";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId347";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts145";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes21";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak21";
createNode objectSet -n "set21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId348";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts146";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId349";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts147";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes22";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak22";
createNode objectSet -n "set22";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId350";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts148";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet22";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId351";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts149";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes23";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak23";
createNode objectSet -n "set23";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId352";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts150";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet23";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId353";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts151";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes24";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak24";
createNode objectSet -n "set24";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId354";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts152";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet24";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId355";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts153";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes25";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak25";
createNode objectSet -n "set25";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId356";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts154";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet25";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId357";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts155";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes26";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak26";
createNode objectSet -n "set26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId358";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts156";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId359";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts157";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes27";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak27";
createNode objectSet -n "set27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId360";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId361";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts159";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes28";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak28";
createNode objectSet -n "set28";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId362";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts160";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet28";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId363";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts161";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes29";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak29";
createNode objectSet -n "set29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId364";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts162";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId365";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts163";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes30";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak30";
createNode objectSet -n "set30";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId366";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts164";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet30";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId367";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts165";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes31";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak31";
createNode objectSet -n "set31";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId368";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts166";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet31";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId369";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts167";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes32";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak32";
createNode objectSet -n "set32";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId370";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts168";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet32";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId371";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts169";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes33";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak33";
createNode objectSet -n "set33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId372";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts170";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId373";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts171";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes34";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak34";
createNode objectSet -n "set34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId374";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts172";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId375";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts173";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes35";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak35";
createNode objectSet -n "set35";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId376";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts174";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet35";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId377";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts175";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes36";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak36";
createNode objectSet -n "set36";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId378";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts176";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet36";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId379";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts177";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes37";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak37";
createNode objectSet -n "set37";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId380";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts178";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet37";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId381";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts179";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes38";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak38";
createNode objectSet -n "set38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId382";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts180";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId383";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts181";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes39";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak39";
createNode objectSet -n "set39";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId384";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts182";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet39";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId385";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts183";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes40";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak40";
createNode objectSet -n "set40";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId386";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts184";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet40";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId387";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts185";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes41";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak41";
createNode objectSet -n "set41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId388";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts186";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId389";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts187";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes42";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak42";
createNode objectSet -n "set42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId390";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts188";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId391";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts189";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes43";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak43";
createNode objectSet -n "set43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId392";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts190";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId393";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts191";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes44";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak44";
createNode objectSet -n "set44";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId394";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts192";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet44";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId395";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts193";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes45";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak45";
createNode objectSet -n "set45";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId396";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts194";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet45";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId397";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts195";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes46";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak46";
createNode objectSet -n "set46";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId398";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts196";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet46";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId399";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts197";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes47";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak47";
createNode objectSet -n "set47";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId400";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts198";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet47";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId401";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts199";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes48";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak48";
createNode objectSet -n "set48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId402";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts200";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId403";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts201";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes49";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak49";
createNode objectSet -n "set49";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId404";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts202";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet49";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId405";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts203";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes50";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak50";
createNode objectSet -n "set50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId406";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts204";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId407";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts205";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes51";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak51";
createNode objectSet -n "set51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId408";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts206";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId409";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts207";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes52";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak52";
createNode objectSet -n "set52";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId410";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts208";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet52";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId411";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts209";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes53";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak53";
createNode objectSet -n "set53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId412";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts210";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId413";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts211";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes54";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak54";
createNode objectSet -n "set54";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId414";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts212";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet54";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId415";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts213";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes55";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak55";
createNode objectSet -n "set55";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId416";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts214";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet55";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId417";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts215";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes56";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak56";
createNode objectSet -n "set56";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId418";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts216";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet56";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId419";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts217";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes57";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak57";
createNode objectSet -n "set57";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId420";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts218";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet57";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId421";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts219";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes58";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak58";
createNode objectSet -n "set58";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId422";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts220";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet58";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId423";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts221";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes59";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak59";
createNode objectSet -n "set59";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId424";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts222";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet59";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId425";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts223";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes60";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak60";
createNode objectSet -n "set60";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId426";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts224";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet60";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId427";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts225";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes61";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak61";
createNode objectSet -n "set61";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId428";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts226";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet61";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId429";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts227";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes62";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak62";
createNode objectSet -n "set62";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId430";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts228";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet62";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId431";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts229";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes63";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak63";
createNode objectSet -n "set63";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId432";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts230";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet63";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId433";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts231";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes64";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak64";
createNode objectSet -n "set64";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId434";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts232";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet64";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId435";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts233";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes65";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak65";
createNode objectSet -n "set65";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId436";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts234";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet65";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId437";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts235";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes66";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak66";
createNode objectSet -n "set66";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId438";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts236";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet66";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId439";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts237";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes67";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak67";
createNode objectSet -n "set67";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId440";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts238";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet67";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId441";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts239";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes68";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak68";
createNode objectSet -n "set68";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId442";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts240";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet68";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId443";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts241";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes69";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak69";
createNode objectSet -n "set69";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId444";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts242";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet69";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId445";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts243";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes70";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak70";
createNode objectSet -n "set70";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId446";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts244";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet70";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId447";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts245";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes71";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak71";
createNode objectSet -n "set71";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId448";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts246";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet71";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId449";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts247";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes72";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak72";
createNode objectSet -n "set72";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId450";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts248";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet72";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId451";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts249";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes73";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak73";
createNode objectSet -n "set73";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId452";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts250";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet73";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId453";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts251";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes74";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak74";
createNode objectSet -n "set74";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId454";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts252";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet74";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId455";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts253";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes75";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak75";
createNode objectSet -n "set75";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId456";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts254";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet75";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId457";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts255";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes76";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak76";
createNode objectSet -n "set76";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId458";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts256";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet76";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId459";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts257";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes77";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak77";
createNode objectSet -n "set77";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId460";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts258";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet77";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId461";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts259";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes78";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak78";
createNode objectSet -n "set78";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId462";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts260";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet78";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId463";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts261";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes79";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak79";
createNode objectSet -n "set79";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId464";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts262";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet79";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId465";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts263";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes80";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak80";
createNode objectSet -n "set80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId466";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts264";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId467";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts265";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes81";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak81";
createNode objectSet -n "set81";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId468";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts266";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet81";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId469";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts267";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes82";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak82";
createNode objectSet -n "set82";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId470";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts268";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet82";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId471";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts269";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes83";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak83";
createNode objectSet -n "set83";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId472";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts270";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet83";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId473";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts271";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes84";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak84";
createNode objectSet -n "set84";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId474";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts272";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet84";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId475";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts273";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes85";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak85";
createNode objectSet -n "set85";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId476";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts274";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet85";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId477";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts275";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes86";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak86";
createNode objectSet -n "set86";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId478";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts276";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet86";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId479";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts277";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes87";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak87";
createNode objectSet -n "set87";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId480";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts278";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet87";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId481";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts279";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes88";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak88";
createNode objectSet -n "set88";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId482";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts280";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet88";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId483";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts281";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes89";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak89";
createNode objectSet -n "set89";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId484";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts282";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet89";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId485";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts283";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes90";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak90";
createNode objectSet -n "set90";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId486";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts284";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet90";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId487";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts285";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes91";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak91";
createNode objectSet -n "set91";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId488";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts286";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet91";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId489";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts287";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes92";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak92";
createNode objectSet -n "set92";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId490";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts288";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet92";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId491";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts289";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes93";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak93";
createNode objectSet -n "set93";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId492";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts290";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet93";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId493";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts291";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes94";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak94";
createNode objectSet -n "set94";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId494";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts292";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet94";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId495";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts293";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes95";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak95";
createNode objectSet -n "set95";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId496";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts294";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet95";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId497";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts295";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes96";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak96";
createNode objectSet -n "set96";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId498";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts296";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet96";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId499";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts297";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 204 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 204 ".gn";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr ".pa" 1;
	setAttr -k on ".al";
	setAttr -av ".dar";
	setAttr -k on ".ldar";
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -cb on ".bf";
	setAttr -k on ".fii";
	setAttr -cb on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape3.i";
connectAttr "groupId6.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "|group1|pCube4|transform99|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube4|transform99|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupParts3.og" "|group1|pCube4|transform99|pCubeShape4.i";
connectAttr "groupId8.id" "|group1|pCube4|transform99|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId9.id" "|group1|pCube5|transform98|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube5|transform98|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|group1|pCube5|transform98|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId11.id" "|group1|pCube6|transform97|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube6|transform97|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|group1|pCube6|transform97|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId13.id" "|group1|pCube7|transform96|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube7|transform96|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|group1|pCube7|transform96|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId15.id" "|group1|pCube8|transform95|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube8|transform95|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId16.id" "|group1|pCube8|transform95|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId17.id" "|group1|pCube9|transform94|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube9|transform94|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|group1|pCube9|transform94|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId19.id" "|group1|pCube10|transform93|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube10|transform93|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId20.id" "|group1|pCube10|transform93|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId21.id" "|group1|pCube11|transform92|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube11|transform92|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|group1|pCube11|transform92|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId23.id" "|group1|pCube12|transform91|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube12|transform91|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|group1|pCube12|transform91|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId25.id" "|group1|pCube13|transform90|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube13|transform90|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId26.id" "|group1|pCube13|transform90|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId27.id" "|group1|pCube14|transform89|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube14|transform89|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId28.id" "|group1|pCube14|transform89|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId29.id" "|group1|pCube15|transform88|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube15|transform88|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId30.id" "|group1|pCube15|transform88|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId31.id" "|group1|pCube16|transform87|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube16|transform87|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId32.id" "|group1|pCube16|transform87|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId33.id" "|group1|pCube17|transform86|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube17|transform86|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId34.id" "|group1|pCube17|transform86|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId35.id" "|group1|pCube18|transform85|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube18|transform85|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId36.id" "|group1|pCube18|transform85|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId37.id" "|group1|pCube19|transform84|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pCube19|transform84|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId38.id" "|group1|pCube19|transform84|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId39.id" "|group2|pCube4|transform83|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube4|transform83|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupId40.id" "|group2|pCube4|transform83|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId41.id" "|group2|pCube5|transform82|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube5|transform82|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId42.id" "|group2|pCube5|transform82|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId43.id" "|group2|pCube6|transform81|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube6|transform81|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId44.id" "|group2|pCube6|transform81|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId45.id" "|group2|pCube7|transform80|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube7|transform80|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId46.id" "|group2|pCube7|transform80|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId47.id" "|group2|pCube8|transform79|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube8|transform79|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId48.id" "|group2|pCube8|transform79|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId49.id" "|group2|pCube9|transform78|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube9|transform78|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId50.id" "|group2|pCube9|transform78|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId51.id" "|group2|pCube10|transform77|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube10|transform77|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId52.id" "|group2|pCube10|transform77|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId53.id" "|group2|pCube11|transform76|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube11|transform76|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId54.id" "|group2|pCube11|transform76|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId55.id" "|group2|pCube12|transform75|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube12|transform75|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId56.id" "|group2|pCube12|transform75|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId57.id" "|group2|pCube13|transform74|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube13|transform74|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId58.id" "|group2|pCube13|transform74|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId59.id" "|group2|pCube14|transform73|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube14|transform73|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId60.id" "|group2|pCube14|transform73|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId61.id" "|group2|pCube15|transform72|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube15|transform72|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId62.id" "|group2|pCube15|transform72|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId63.id" "|group2|pCube16|transform71|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube16|transform71|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId64.id" "|group2|pCube16|transform71|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId65.id" "|group2|pCube17|transform70|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube17|transform70|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId66.id" "|group2|pCube17|transform70|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId67.id" "|group2|pCube18|transform69|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube18|transform69|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId68.id" "|group2|pCube18|transform69|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId69.id" "|group2|pCube19|transform68|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pCube19|transform68|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId70.id" "|group2|pCube19|transform68|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId71.id" "|group3|pCube4|transform67|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube4|transform67|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupId72.id" "|group3|pCube4|transform67|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId73.id" "|group3|pCube5|transform66|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube5|transform66|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId74.id" "|group3|pCube5|transform66|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId75.id" "|group3|pCube6|transform65|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube6|transform65|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId76.id" "|group3|pCube6|transform65|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId77.id" "|group3|pCube7|transform64|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube7|transform64|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId78.id" "|group3|pCube7|transform64|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId79.id" "|group3|pCube8|transform63|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube8|transform63|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId80.id" "|group3|pCube8|transform63|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId81.id" "|group3|pCube9|transform62|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube9|transform62|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId82.id" "|group3|pCube9|transform62|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId83.id" "|group3|pCube10|transform61|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube10|transform61|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId84.id" "|group3|pCube10|transform61|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId85.id" "|group3|pCube11|transform60|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube11|transform60|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId86.id" "|group3|pCube11|transform60|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId87.id" "|group3|pCube12|transform59|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube12|transform59|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId88.id" "|group3|pCube12|transform59|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId89.id" "|group3|pCube13|transform58|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube13|transform58|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId90.id" "|group3|pCube13|transform58|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId91.id" "|group3|pCube14|transform57|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube14|transform57|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId92.id" "|group3|pCube14|transform57|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId93.id" "|group3|pCube15|transform56|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube15|transform56|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId94.id" "|group3|pCube15|transform56|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId95.id" "|group3|pCube16|transform55|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube16|transform55|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId96.id" "|group3|pCube16|transform55|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId97.id" "|group3|pCube17|transform54|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube17|transform54|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId98.id" "|group3|pCube17|transform54|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId99.id" "|group3|pCube18|transform53|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube18|transform53|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId100.id" "|group3|pCube18|transform53|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId101.id" "|group3|pCube19|transform52|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pCube19|transform52|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId102.id" "|group3|pCube19|transform52|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId103.id" "|group4|pCube4|transform51|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube4|transform51|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupId104.id" "|group4|pCube4|transform51|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId105.id" "|group4|pCube5|transform50|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube5|transform50|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId106.id" "|group4|pCube5|transform50|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId107.id" "|group4|pCube6|transform49|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube6|transform49|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId108.id" "|group4|pCube6|transform49|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId109.id" "|group4|pCube7|transform48|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube7|transform48|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId110.id" "|group4|pCube7|transform48|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId111.id" "|group4|pCube8|transform47|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube8|transform47|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId112.id" "|group4|pCube8|transform47|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId113.id" "|group4|pCube9|transform46|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube9|transform46|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId114.id" "|group4|pCube9|transform46|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId115.id" "|group4|pCube10|transform45|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube10|transform45|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId116.id" "|group4|pCube10|transform45|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId117.id" "|group4|pCube11|transform44|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube11|transform44|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId118.id" "|group4|pCube11|transform44|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId119.id" "|group4|pCube12|transform43|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube12|transform43|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId120.id" "|group4|pCube12|transform43|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId121.id" "|group4|pCube13|transform42|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube13|transform42|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId122.id" "|group4|pCube13|transform42|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId123.id" "|group4|pCube14|transform41|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube14|transform41|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId124.id" "|group4|pCube14|transform41|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId125.id" "|group4|pCube15|transform40|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube15|transform40|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId126.id" "|group4|pCube15|transform40|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId127.id" "|group4|pCube16|transform39|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube16|transform39|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId128.id" "|group4|pCube16|transform39|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId129.id" "|group4|pCube17|transform38|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube17|transform38|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId130.id" "|group4|pCube17|transform38|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId131.id" "|group4|pCube18|transform37|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube18|transform37|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId132.id" "|group4|pCube18|transform37|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId133.id" "|group4|pCube19|transform36|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pCube19|transform36|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId134.id" "|group4|pCube19|transform36|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId135.id" "pCubeShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape22.iog.og[0].gco";
connectAttr "groupId136.id" "pCubeShape22.ciog.cog[0].cgid";
connectAttr "groupId137.id" "|group5|pCube4|transform34|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube4|transform34|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupId138.id" "|group5|pCube4|transform34|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId139.id" "|group5|pCube5|transform33|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube5|transform33|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId140.id" "|group5|pCube5|transform33|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId141.id" "|group5|pCube6|transform32|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube6|transform32|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId142.id" "|group5|pCube6|transform32|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId143.id" "|group5|pCube7|transform31|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube7|transform31|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId144.id" "|group5|pCube7|transform31|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId145.id" "|group5|pCube8|transform30|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube8|transform30|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId146.id" "|group5|pCube8|transform30|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId147.id" "|group5|pCube9|transform29|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube9|transform29|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId148.id" "|group5|pCube9|transform29|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId149.id" "|group5|pCube10|transform28|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube10|transform28|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId150.id" "|group5|pCube10|transform28|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId151.id" "|group5|pCube11|transform27|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube11|transform27|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId152.id" "|group5|pCube11|transform27|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId153.id" "|group5|pCube12|transform26|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube12|transform26|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId154.id" "|group5|pCube12|transform26|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId155.id" "|group5|pCube13|transform25|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube13|transform25|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId156.id" "|group5|pCube13|transform25|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId157.id" "|group5|pCube14|transform24|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube14|transform24|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId158.id" "|group5|pCube14|transform24|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId159.id" "|group5|pCube15|transform23|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube15|transform23|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId160.id" "|group5|pCube15|transform23|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId161.id" "|group5|pCube16|transform22|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube16|transform22|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId162.id" "|group5|pCube16|transform22|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId163.id" "|group5|pCube17|transform21|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube17|transform21|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId164.id" "|group5|pCube17|transform21|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId165.id" "|group5|pCube18|transform20|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube18|transform20|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId166.id" "|group5|pCube18|transform20|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId167.id" "|group5|pCube19|transform19|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pCube19|transform19|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId168.id" "|group5|pCube19|transform19|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId169.id" "|group6|pCube4|transform18|pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube4|transform18|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupId170.id" "|group6|pCube4|transform18|pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "groupId171.id" "|group6|pCube5|transform17|pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube5|transform17|pCubeShape5.iog.og[0].gco"
		;
connectAttr "groupId172.id" "|group6|pCube5|transform17|pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "groupId173.id" "|group6|pCube6|transform16|pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube6|transform16|pCubeShape6.iog.og[0].gco"
		;
connectAttr "groupId174.id" "|group6|pCube6|transform16|pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "groupId175.id" "|group6|pCube7|transform15|pCubeShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube7|transform15|pCubeShape7.iog.og[0].gco"
		;
connectAttr "groupId176.id" "|group6|pCube7|transform15|pCubeShape7.ciog.cog[0].cgid"
		;
connectAttr "groupId177.id" "|group6|pCube8|transform14|pCubeShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube8|transform14|pCubeShape8.iog.og[0].gco"
		;
connectAttr "groupId178.id" "|group6|pCube8|transform14|pCubeShape8.ciog.cog[0].cgid"
		;
connectAttr "groupId179.id" "|group6|pCube9|transform13|pCubeShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube9|transform13|pCubeShape9.iog.og[0].gco"
		;
connectAttr "groupId180.id" "|group6|pCube9|transform13|pCubeShape9.ciog.cog[0].cgid"
		;
connectAttr "groupId181.id" "|group6|pCube10|transform12|pCubeShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube10|transform12|pCubeShape10.iog.og[0].gco"
		;
connectAttr "groupId182.id" "|group6|pCube10|transform12|pCubeShape10.ciog.cog[0].cgid"
		;
connectAttr "groupId183.id" "|group6|pCube11|transform11|pCubeShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube11|transform11|pCubeShape11.iog.og[0].gco"
		;
connectAttr "groupId184.id" "|group6|pCube11|transform11|pCubeShape11.ciog.cog[0].cgid"
		;
connectAttr "groupId185.id" "|group6|pCube12|transform10|pCubeShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube12|transform10|pCubeShape12.iog.og[0].gco"
		;
connectAttr "groupId186.id" "|group6|pCube12|transform10|pCubeShape12.ciog.cog[0].cgid"
		;
connectAttr "groupId187.id" "|group6|pCube13|transform9|pCubeShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube13|transform9|pCubeShape13.iog.og[0].gco"
		;
connectAttr "groupId188.id" "|group6|pCube13|transform9|pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "groupId189.id" "|group6|pCube14|transform8|pCubeShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube14|transform8|pCubeShape14.iog.og[0].gco"
		;
connectAttr "groupId190.id" "|group6|pCube14|transform8|pCubeShape14.ciog.cog[0].cgid"
		;
connectAttr "groupId191.id" "|group6|pCube15|transform7|pCubeShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube15|transform7|pCubeShape15.iog.og[0].gco"
		;
connectAttr "groupId192.id" "|group6|pCube15|transform7|pCubeShape15.ciog.cog[0].cgid"
		;
connectAttr "groupId193.id" "|group6|pCube16|transform6|pCubeShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube16|transform6|pCubeShape16.iog.og[0].gco"
		;
connectAttr "groupId194.id" "|group6|pCube16|transform6|pCubeShape16.ciog.cog[0].cgid"
		;
connectAttr "groupId195.id" "|group6|pCube17|transform5|pCubeShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube17|transform5|pCubeShape17.iog.og[0].gco"
		;
connectAttr "groupId196.id" "|group6|pCube17|transform5|pCubeShape17.ciog.cog[0].cgid"
		;
connectAttr "groupId197.id" "|group6|pCube18|transform4|pCubeShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube18|transform4|pCubeShape18.iog.og[0].gco"
		;
connectAttr "groupId198.id" "|group6|pCube18|transform4|pCubeShape18.ciog.cog[0].cgid"
		;
connectAttr "groupId199.id" "|group6|pCube19|transform3|pCubeShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pCube19|transform3|pCubeShape19.iog.og[0].gco"
		;
connectAttr "groupId200.id" "|group6|pCube19|transform3|pCubeShape19.ciog.cog[0].cgid"
		;
connectAttr "groupId201.id" "pCubeShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape20.iog.og[0].gco";
connectAttr "groupId202.id" "pCubeShape20.ciog.cog[0].cgid";
connectAttr "groupId203.id" "pCubeShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape21.iog.og[0].gco";
connectAttr "groupId204.id" "pCubeShape21.ciog.cog[0].cgid";
connectAttr "polyTweakUV101.out" "polySurfaceShape2.i";
connectAttr "polyTweakUV101.uvtk[0]" "polySurfaceShape2.uvst[0].uvtw";
connectAttr "polyTweakUV102.out" "polySurfaceShape3.i";
connectAttr "polyTweakUV102.uvtk[0]" "polySurfaceShape3.uvst[0].uvtw";
connectAttr "polyPlanarProj101.out" "polySurfaceShape4.i";
connectAttr "transferAttributes72.og[0]" "polySurfaceShape5.i";
connectAttr "groupId450.id" "polySurfaceShape5.iog.og[1].gid";
connectAttr "set72.mwc" "polySurfaceShape5.iog.og[1].gco";
connectAttr "groupId451.id" "polySurfaceShape5.iog.og[2].gid";
connectAttr "tweakSet72.mwc" "polySurfaceShape5.iog.og[2].gco";
connectAttr "tweak72.vl[0].vt[0]" "polySurfaceShape5.twl";
connectAttr "polyTweakUV3.uvtk[0]" "polySurfaceShape5Orig.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "polySurfaceShape5Orig.i";
connectAttr "transferAttributes73.og[0]" "polySurfaceShape6.i";
connectAttr "groupId452.id" "polySurfaceShape6.iog.og[1].gid";
connectAttr "set73.mwc" "polySurfaceShape6.iog.og[1].gco";
connectAttr "groupId453.id" "polySurfaceShape6.iog.og[2].gid";
connectAttr "tweakSet73.mwc" "polySurfaceShape6.iog.og[2].gco";
connectAttr "tweak73.vl[0].vt[0]" "polySurfaceShape6.twl";
connectAttr "polyTweakUV4.uvtk[0]" "polySurfaceShape6Orig.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "polySurfaceShape6Orig.i";
connectAttr "transferAttributes25.og[0]" "polySurfaceShape7.i";
connectAttr "groupId356.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "set25.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupId357.id" "polySurfaceShape7.iog.og[2].gid";
connectAttr "tweakSet25.mwc" "polySurfaceShape7.iog.og[2].gco";
connectAttr "tweak25.vl[0].vt[0]" "polySurfaceShape7.twl";
connectAttr "polyTweakUV5.uvtk[0]" "polySurfaceShape7Orig.uvst[0].uvtw";
connectAttr "polyTweakUV5.out" "polySurfaceShape7Orig.i";
connectAttr "transferAttributes74.og[0]" "polySurfaceShape8.i";
connectAttr "groupId454.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "set74.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupId455.id" "polySurfaceShape8.iog.og[2].gid";
connectAttr "tweakSet74.mwc" "polySurfaceShape8.iog.og[2].gco";
connectAttr "tweak74.vl[0].vt[0]" "polySurfaceShape8.twl";
connectAttr "polyTweakUV6.uvtk[0]" "polySurfaceShape8Orig.uvst[0].uvtw";
connectAttr "polyTweakUV6.out" "polySurfaceShape8Orig.i";
connectAttr "transferAttributes26.og[0]" "polySurfaceShape9.i";
connectAttr "groupId358.id" "polySurfaceShape9.iog.og[1].gid";
connectAttr "set26.mwc" "polySurfaceShape9.iog.og[1].gco";
connectAttr "groupId359.id" "polySurfaceShape9.iog.og[2].gid";
connectAttr "tweakSet26.mwc" "polySurfaceShape9.iog.og[2].gco";
connectAttr "tweak26.vl[0].vt[0]" "polySurfaceShape9.twl";
connectAttr "polyTweakUV7.uvtk[0]" "polySurfaceShape9Orig.uvst[0].uvtw";
connectAttr "polyTweakUV7.out" "polySurfaceShape9Orig.i";
connectAttr "transferAttributes27.og[0]" "polySurfaceShape10.i";
connectAttr "groupId360.id" "polySurfaceShape10.iog.og[1].gid";
connectAttr "set27.mwc" "polySurfaceShape10.iog.og[1].gco";
connectAttr "groupId361.id" "polySurfaceShape10.iog.og[2].gid";
connectAttr "tweakSet27.mwc" "polySurfaceShape10.iog.og[2].gco";
connectAttr "tweak27.vl[0].vt[0]" "polySurfaceShape10.twl";
connectAttr "polyTweakUV8.uvtk[0]" "polySurfaceShape10Orig.uvst[0].uvtw";
connectAttr "polyTweakUV8.out" "polySurfaceShape10Orig.i";
connectAttr "transferAttributes28.og[0]" "polySurfaceShape11.i";
connectAttr "groupId362.id" "polySurfaceShape11.iog.og[1].gid";
connectAttr "set28.mwc" "polySurfaceShape11.iog.og[1].gco";
connectAttr "groupId363.id" "polySurfaceShape11.iog.og[2].gid";
connectAttr "tweakSet28.mwc" "polySurfaceShape11.iog.og[2].gco";
connectAttr "tweak28.vl[0].vt[0]" "polySurfaceShape11.twl";
connectAttr "polyTweakUV9.uvtk[0]" "polySurfaceShape11Orig.uvst[0].uvtw";
connectAttr "polyTweakUV9.out" "polySurfaceShape11Orig.i";
connectAttr "transferAttributes29.og[0]" "polySurfaceShape12.i";
connectAttr "groupId364.id" "polySurfaceShape12.iog.og[1].gid";
connectAttr "set29.mwc" "polySurfaceShape12.iog.og[1].gco";
connectAttr "groupId365.id" "polySurfaceShape12.iog.og[2].gid";
connectAttr "tweakSet29.mwc" "polySurfaceShape12.iog.og[2].gco";
connectAttr "tweak29.vl[0].vt[0]" "polySurfaceShape12.twl";
connectAttr "polyTweakUV10.uvtk[0]" "polySurfaceShape12Orig.uvst[0].uvtw";
connectAttr "polyTweakUV10.out" "polySurfaceShape12Orig.i";
connectAttr "transferAttributes30.og[0]" "polySurfaceShape13.i";
connectAttr "groupId366.id" "polySurfaceShape13.iog.og[1].gid";
connectAttr "set30.mwc" "polySurfaceShape13.iog.og[1].gco";
connectAttr "groupId367.id" "polySurfaceShape13.iog.og[2].gid";
connectAttr "tweakSet30.mwc" "polySurfaceShape13.iog.og[2].gco";
connectAttr "tweak30.vl[0].vt[0]" "polySurfaceShape13.twl";
connectAttr "polyTweakUV11.uvtk[0]" "polySurfaceShape13Orig.uvst[0].uvtw";
connectAttr "polyTweakUV11.out" "polySurfaceShape13Orig.i";
connectAttr "transferAttributes31.og[0]" "polySurfaceShape14.i";
connectAttr "groupId368.id" "polySurfaceShape14.iog.og[1].gid";
connectAttr "set31.mwc" "polySurfaceShape14.iog.og[1].gco";
connectAttr "groupId369.id" "polySurfaceShape14.iog.og[2].gid";
connectAttr "tweakSet31.mwc" "polySurfaceShape14.iog.og[2].gco";
connectAttr "tweak31.vl[0].vt[0]" "polySurfaceShape14.twl";
connectAttr "polyTweakUV12.uvtk[0]" "polySurfaceShape14Orig.uvst[0].uvtw";
connectAttr "polyTweakUV12.out" "polySurfaceShape14Orig.i";
connectAttr "transferAttributes32.og[0]" "polySurfaceShape15.i";
connectAttr "groupId370.id" "polySurfaceShape15.iog.og[1].gid";
connectAttr "set32.mwc" "polySurfaceShape15.iog.og[1].gco";
connectAttr "groupId371.id" "polySurfaceShape15.iog.og[2].gid";
connectAttr "tweakSet32.mwc" "polySurfaceShape15.iog.og[2].gco";
connectAttr "tweak32.vl[0].vt[0]" "polySurfaceShape15.twl";
connectAttr "polyTweakUV13.uvtk[0]" "polySurfaceShape15Orig.uvst[0].uvtw";
connectAttr "polyTweakUV13.out" "polySurfaceShape15Orig.i";
connectAttr "transferAttributes75.og[0]" "polySurfaceShape16.i";
connectAttr "groupId456.id" "polySurfaceShape16.iog.og[1].gid";
connectAttr "set75.mwc" "polySurfaceShape16.iog.og[1].gco";
connectAttr "groupId457.id" "polySurfaceShape16.iog.og[2].gid";
connectAttr "tweakSet75.mwc" "polySurfaceShape16.iog.og[2].gco";
connectAttr "tweak75.vl[0].vt[0]" "polySurfaceShape16.twl";
connectAttr "polyTweakUV14.uvtk[0]" "polySurfaceShape16Orig.uvst[0].uvtw";
connectAttr "polyTweakUV14.out" "polySurfaceShape16Orig.i";
connectAttr "transferAttributes76.og[0]" "polySurfaceShape17.i";
connectAttr "groupId458.id" "polySurfaceShape17.iog.og[1].gid";
connectAttr "set76.mwc" "polySurfaceShape17.iog.og[1].gco";
connectAttr "groupId459.id" "polySurfaceShape17.iog.og[2].gid";
connectAttr "tweakSet76.mwc" "polySurfaceShape17.iog.og[2].gco";
connectAttr "tweak76.vl[0].vt[0]" "polySurfaceShape17.twl";
connectAttr "polyTweakUV15.uvtk[0]" "polySurfaceShape17Orig.uvst[0].uvtw";
connectAttr "polyTweakUV15.out" "polySurfaceShape17Orig.i";
connectAttr "transferAttributes77.og[0]" "polySurfaceShape18.i";
connectAttr "groupId460.id" "polySurfaceShape18.iog.og[1].gid";
connectAttr "set77.mwc" "polySurfaceShape18.iog.og[1].gco";
connectAttr "groupId461.id" "polySurfaceShape18.iog.og[2].gid";
connectAttr "tweakSet77.mwc" "polySurfaceShape18.iog.og[2].gco";
connectAttr "tweak77.vl[0].vt[0]" "polySurfaceShape18.twl";
connectAttr "polyTweakUV16.uvtk[0]" "polySurfaceShape18Orig.uvst[0].uvtw";
connectAttr "polyTweakUV16.out" "polySurfaceShape18Orig.i";
connectAttr "transferAttributes78.og[0]" "polySurfaceShape19.i";
connectAttr "groupId462.id" "polySurfaceShape19.iog.og[1].gid";
connectAttr "set78.mwc" "polySurfaceShape19.iog.og[1].gco";
connectAttr "groupId463.id" "polySurfaceShape19.iog.og[2].gid";
connectAttr "tweakSet78.mwc" "polySurfaceShape19.iog.og[2].gco";
connectAttr "tweak78.vl[0].vt[0]" "polySurfaceShape19.twl";
connectAttr "polyTweakUV17.uvtk[0]" "polySurfaceShape19Orig.uvst[0].uvtw";
connectAttr "polyTweakUV17.out" "polySurfaceShape19Orig.i";
connectAttr "transferAttributes79.og[0]" "polySurfaceShape20.i";
connectAttr "groupId464.id" "polySurfaceShape20.iog.og[1].gid";
connectAttr "set79.mwc" "polySurfaceShape20.iog.og[1].gco";
connectAttr "groupId465.id" "polySurfaceShape20.iog.og[2].gid";
connectAttr "tweakSet79.mwc" "polySurfaceShape20.iog.og[2].gco";
connectAttr "tweak79.vl[0].vt[0]" "polySurfaceShape20.twl";
connectAttr "polyTweakUV18.uvtk[0]" "polySurfaceShape20Orig.uvst[0].uvtw";
connectAttr "polyTweakUV18.out" "polySurfaceShape20Orig.i";
connectAttr "transferAttributes64.og[0]" "polySurfaceShape21.i";
connectAttr "groupId434.id" "polySurfaceShape21.iog.og[1].gid";
connectAttr "set64.mwc" "polySurfaceShape21.iog.og[1].gco";
connectAttr "groupId435.id" "polySurfaceShape21.iog.og[2].gid";
connectAttr "tweakSet64.mwc" "polySurfaceShape21.iog.og[2].gco";
connectAttr "tweak64.vl[0].vt[0]" "polySurfaceShape21.twl";
connectAttr "polyTweakUV19.uvtk[0]" "polySurfaceShape21Orig.uvst[0].uvtw";
connectAttr "polyTweakUV19.out" "polySurfaceShape21Orig.i";
connectAttr "transferAttributes65.og[0]" "polySurfaceShape22.i";
connectAttr "groupId436.id" "polySurfaceShape22.iog.og[1].gid";
connectAttr "set65.mwc" "polySurfaceShape22.iog.og[1].gco";
connectAttr "groupId437.id" "polySurfaceShape22.iog.og[2].gid";
connectAttr "tweakSet65.mwc" "polySurfaceShape22.iog.og[2].gco";
connectAttr "tweak65.vl[0].vt[0]" "polySurfaceShape22.twl";
connectAttr "polyTweakUV20.uvtk[0]" "polySurfaceShape22Orig.uvst[0].uvtw";
connectAttr "polyTweakUV20.out" "polySurfaceShape22Orig.i";
connectAttr "transferAttributes17.og[0]" "polySurfaceShape23.i";
connectAttr "groupId340.id" "polySurfaceShape23.iog.og[1].gid";
connectAttr "set17.mwc" "polySurfaceShape23.iog.og[1].gco";
connectAttr "groupId341.id" "polySurfaceShape23.iog.og[2].gid";
connectAttr "tweakSet17.mwc" "polySurfaceShape23.iog.og[2].gco";
connectAttr "tweak17.vl[0].vt[0]" "polySurfaceShape23.twl";
connectAttr "polyTweakUV21.uvtk[0]" "polySurfaceShape23Orig.uvst[0].uvtw";
connectAttr "polyTweakUV21.out" "polySurfaceShape23Orig.i";
connectAttr "transferAttributes66.og[0]" "polySurfaceShape24.i";
connectAttr "groupId438.id" "polySurfaceShape24.iog.og[1].gid";
connectAttr "set66.mwc" "polySurfaceShape24.iog.og[1].gco";
connectAttr "groupId439.id" "polySurfaceShape24.iog.og[2].gid";
connectAttr "tweakSet66.mwc" "polySurfaceShape24.iog.og[2].gco";
connectAttr "tweak66.vl[0].vt[0]" "polySurfaceShape24.twl";
connectAttr "polyTweakUV22.uvtk[0]" "polySurfaceShape24Orig.uvst[0].uvtw";
connectAttr "polyTweakUV22.out" "polySurfaceShape24Orig.i";
connectAttr "transferAttributes18.og[0]" "polySurfaceShape25.i";
connectAttr "groupId342.id" "polySurfaceShape25.iog.og[1].gid";
connectAttr "set18.mwc" "polySurfaceShape25.iog.og[1].gco";
connectAttr "groupId343.id" "polySurfaceShape25.iog.og[2].gid";
connectAttr "tweakSet18.mwc" "polySurfaceShape25.iog.og[2].gco";
connectAttr "tweak18.vl[0].vt[0]" "polySurfaceShape25.twl";
connectAttr "polyTweakUV23.uvtk[0]" "polySurfaceShape25Orig.uvst[0].uvtw";
connectAttr "polyTweakUV23.out" "polySurfaceShape25Orig.i";
connectAttr "transferAttributes19.og[0]" "polySurfaceShape26.i";
connectAttr "groupId344.id" "polySurfaceShape26.iog.og[1].gid";
connectAttr "set19.mwc" "polySurfaceShape26.iog.og[1].gco";
connectAttr "groupId345.id" "polySurfaceShape26.iog.og[2].gid";
connectAttr "tweakSet19.mwc" "polySurfaceShape26.iog.og[2].gco";
connectAttr "tweak19.vl[0].vt[0]" "polySurfaceShape26.twl";
connectAttr "polyTweakUV24.uvtk[0]" "polySurfaceShape26Orig.uvst[0].uvtw";
connectAttr "polyTweakUV24.out" "polySurfaceShape26Orig.i";
connectAttr "transferAttributes20.og[0]" "polySurfaceShape27.i";
connectAttr "groupId346.id" "polySurfaceShape27.iog.og[1].gid";
connectAttr "set20.mwc" "polySurfaceShape27.iog.og[1].gco";
connectAttr "groupId347.id" "polySurfaceShape27.iog.og[2].gid";
connectAttr "tweakSet20.mwc" "polySurfaceShape27.iog.og[2].gco";
connectAttr "tweak20.vl[0].vt[0]" "polySurfaceShape27.twl";
connectAttr "polyTweakUV25.uvtk[0]" "polySurfaceShape27Orig.uvst[0].uvtw";
connectAttr "polyTweakUV25.out" "polySurfaceShape27Orig.i";
connectAttr "transferAttributes21.og[0]" "polySurfaceShape28.i";
connectAttr "groupId348.id" "polySurfaceShape28.iog.og[1].gid";
connectAttr "set21.mwc" "polySurfaceShape28.iog.og[1].gco";
connectAttr "groupId349.id" "polySurfaceShape28.iog.og[2].gid";
connectAttr "tweakSet21.mwc" "polySurfaceShape28.iog.og[2].gco";
connectAttr "tweak21.vl[0].vt[0]" "polySurfaceShape28.twl";
connectAttr "polyTweakUV26.uvtk[0]" "polySurfaceShape28Orig.uvst[0].uvtw";
connectAttr "polyTweakUV26.out" "polySurfaceShape28Orig.i";
connectAttr "transferAttributes22.og[0]" "polySurfaceShape29.i";
connectAttr "groupId350.id" "polySurfaceShape29.iog.og[1].gid";
connectAttr "set22.mwc" "polySurfaceShape29.iog.og[1].gco";
connectAttr "groupId351.id" "polySurfaceShape29.iog.og[2].gid";
connectAttr "tweakSet22.mwc" "polySurfaceShape29.iog.og[2].gco";
connectAttr "tweak22.vl[0].vt[0]" "polySurfaceShape29.twl";
connectAttr "polyTweakUV27.uvtk[0]" "polySurfaceShape29Orig.uvst[0].uvtw";
connectAttr "polyTweakUV27.out" "polySurfaceShape29Orig.i";
connectAttr "transferAttributes23.og[0]" "polySurfaceShape30.i";
connectAttr "groupId352.id" "polySurfaceShape30.iog.og[1].gid";
connectAttr "set23.mwc" "polySurfaceShape30.iog.og[1].gco";
connectAttr "groupId353.id" "polySurfaceShape30.iog.og[2].gid";
connectAttr "tweakSet23.mwc" "polySurfaceShape30.iog.og[2].gco";
connectAttr "tweak23.vl[0].vt[0]" "polySurfaceShape30.twl";
connectAttr "polyTweakUV28.uvtk[0]" "polySurfaceShape30Orig.uvst[0].uvtw";
connectAttr "polyTweakUV28.out" "polySurfaceShape30Orig.i";
connectAttr "transferAttributes24.og[0]" "polySurfaceShape31.i";
connectAttr "groupId354.id" "polySurfaceShape31.iog.og[1].gid";
connectAttr "set24.mwc" "polySurfaceShape31.iog.og[1].gco";
connectAttr "groupId355.id" "polySurfaceShape31.iog.og[2].gid";
connectAttr "tweakSet24.mwc" "polySurfaceShape31.iog.og[2].gco";
connectAttr "tweak24.vl[0].vt[0]" "polySurfaceShape31.twl";
connectAttr "polyTweakUV29.uvtk[0]" "polySurfaceShape31Orig.uvst[0].uvtw";
connectAttr "polyTweakUV29.out" "polySurfaceShape31Orig.i";
connectAttr "transferAttributes67.og[0]" "polySurfaceShape32.i";
connectAttr "groupId440.id" "polySurfaceShape32.iog.og[1].gid";
connectAttr "set67.mwc" "polySurfaceShape32.iog.og[1].gco";
connectAttr "groupId441.id" "polySurfaceShape32.iog.og[2].gid";
connectAttr "tweakSet67.mwc" "polySurfaceShape32.iog.og[2].gco";
connectAttr "tweak67.vl[0].vt[0]" "polySurfaceShape32.twl";
connectAttr "polyTweakUV30.uvtk[0]" "polySurfaceShape32Orig.uvst[0].uvtw";
connectAttr "polyTweakUV30.out" "polySurfaceShape32Orig.i";
connectAttr "transferAttributes68.og[0]" "polySurfaceShape33.i";
connectAttr "groupId442.id" "polySurfaceShape33.iog.og[1].gid";
connectAttr "set68.mwc" "polySurfaceShape33.iog.og[1].gco";
connectAttr "groupId443.id" "polySurfaceShape33.iog.og[2].gid";
connectAttr "tweakSet68.mwc" "polySurfaceShape33.iog.og[2].gco";
connectAttr "tweak68.vl[0].vt[0]" "polySurfaceShape33.twl";
connectAttr "polyTweakUV31.uvtk[0]" "polySurfaceShape33Orig.uvst[0].uvtw";
connectAttr "polyTweakUV31.out" "polySurfaceShape33Orig.i";
connectAttr "transferAttributes69.og[0]" "polySurfaceShape34.i";
connectAttr "groupId444.id" "polySurfaceShape34.iog.og[1].gid";
connectAttr "set69.mwc" "polySurfaceShape34.iog.og[1].gco";
connectAttr "groupId445.id" "polySurfaceShape34.iog.og[2].gid";
connectAttr "tweakSet69.mwc" "polySurfaceShape34.iog.og[2].gco";
connectAttr "tweak69.vl[0].vt[0]" "polySurfaceShape34.twl";
connectAttr "polyTweakUV32.uvtk[0]" "polySurfaceShape34Orig.uvst[0].uvtw";
connectAttr "polyTweakUV32.out" "polySurfaceShape34Orig.i";
connectAttr "transferAttributes70.og[0]" "polySurfaceShape35.i";
connectAttr "groupId446.id" "polySurfaceShape35.iog.og[1].gid";
connectAttr "set70.mwc" "polySurfaceShape35.iog.og[1].gco";
connectAttr "groupId447.id" "polySurfaceShape35.iog.og[2].gid";
connectAttr "tweakSet70.mwc" "polySurfaceShape35.iog.og[2].gco";
connectAttr "tweak70.vl[0].vt[0]" "polySurfaceShape35.twl";
connectAttr "polyTweakUV33.uvtk[0]" "polySurfaceShape35Orig.uvst[0].uvtw";
connectAttr "polyTweakUV33.out" "polySurfaceShape35Orig.i";
connectAttr "transferAttributes71.og[0]" "polySurfaceShape36.i";
connectAttr "groupId448.id" "polySurfaceShape36.iog.og[1].gid";
connectAttr "set71.mwc" "polySurfaceShape36.iog.og[1].gco";
connectAttr "groupId449.id" "polySurfaceShape36.iog.og[2].gid";
connectAttr "tweakSet71.mwc" "polySurfaceShape36.iog.og[2].gco";
connectAttr "tweak71.vl[0].vt[0]" "polySurfaceShape36.twl";
connectAttr "polyTweakUV34.uvtk[0]" "polySurfaceShape36Orig.uvst[0].uvtw";
connectAttr "polyTweakUV34.out" "polySurfaceShape36Orig.i";
connectAttr "transferAttributes56.og[0]" "polySurfaceShape37.i";
connectAttr "groupId418.id" "polySurfaceShape37.iog.og[1].gid";
connectAttr "set56.mwc" "polySurfaceShape37.iog.og[1].gco";
connectAttr "groupId419.id" "polySurfaceShape37.iog.og[2].gid";
connectAttr "tweakSet56.mwc" "polySurfaceShape37.iog.og[2].gco";
connectAttr "tweak56.vl[0].vt[0]" "polySurfaceShape37.twl";
connectAttr "polyTweakUV35.uvtk[0]" "polySurfaceShape37Orig.uvst[0].uvtw";
connectAttr "polyTweakUV35.out" "polySurfaceShape37Orig.i";
connectAttr "transferAttributes57.og[0]" "polySurfaceShape38.i";
connectAttr "groupId420.id" "polySurfaceShape38.iog.og[1].gid";
connectAttr "set57.mwc" "polySurfaceShape38.iog.og[1].gco";
connectAttr "groupId421.id" "polySurfaceShape38.iog.og[2].gid";
connectAttr "tweakSet57.mwc" "polySurfaceShape38.iog.og[2].gco";
connectAttr "tweak57.vl[0].vt[0]" "polySurfaceShape38.twl";
connectAttr "polyTweakUV36.uvtk[0]" "polySurfaceShape38Orig.uvst[0].uvtw";
connectAttr "polyTweakUV36.out" "polySurfaceShape38Orig.i";
connectAttr "transferAttributes9.og[0]" "polySurfaceShape39.i";
connectAttr "groupId324.id" "polySurfaceShape39.iog.og[1].gid";
connectAttr "set9.mwc" "polySurfaceShape39.iog.og[1].gco";
connectAttr "groupId325.id" "polySurfaceShape39.iog.og[2].gid";
connectAttr "tweakSet9.mwc" "polySurfaceShape39.iog.og[2].gco";
connectAttr "tweak9.vl[0].vt[0]" "polySurfaceShape39.twl";
connectAttr "polyTweakUV37.uvtk[0]" "polySurfaceShape39Orig.uvst[0].uvtw";
connectAttr "polyTweakUV37.out" "polySurfaceShape39Orig.i";
connectAttr "transferAttributes58.og[0]" "polySurfaceShape40.i";
connectAttr "groupId422.id" "polySurfaceShape40.iog.og[1].gid";
connectAttr "set58.mwc" "polySurfaceShape40.iog.og[1].gco";
connectAttr "groupId423.id" "polySurfaceShape40.iog.og[2].gid";
connectAttr "tweakSet58.mwc" "polySurfaceShape40.iog.og[2].gco";
connectAttr "tweak58.vl[0].vt[0]" "polySurfaceShape40.twl";
connectAttr "polyTweakUV38.uvtk[0]" "polySurfaceShape40Orig.uvst[0].uvtw";
connectAttr "polyTweakUV38.out" "polySurfaceShape40Orig.i";
connectAttr "transferAttributes10.og[0]" "polySurfaceShape41.i";
connectAttr "groupId326.id" "polySurfaceShape41.iog.og[1].gid";
connectAttr "set10.mwc" "polySurfaceShape41.iog.og[1].gco";
connectAttr "groupId327.id" "polySurfaceShape41.iog.og[2].gid";
connectAttr "tweakSet10.mwc" "polySurfaceShape41.iog.og[2].gco";
connectAttr "tweak10.vl[0].vt[0]" "polySurfaceShape41.twl";
connectAttr "polyTweakUV39.uvtk[0]" "polySurfaceShape41Orig.uvst[0].uvtw";
connectAttr "polyTweakUV39.out" "polySurfaceShape41Orig.i";
connectAttr "transferAttributes11.og[0]" "polySurfaceShape42.i";
connectAttr "groupId328.id" "polySurfaceShape42.iog.og[1].gid";
connectAttr "set11.mwc" "polySurfaceShape42.iog.og[1].gco";
connectAttr "groupId329.id" "polySurfaceShape42.iog.og[2].gid";
connectAttr "tweakSet11.mwc" "polySurfaceShape42.iog.og[2].gco";
connectAttr "tweak11.vl[0].vt[0]" "polySurfaceShape42.twl";
connectAttr "polyTweakUV40.uvtk[0]" "polySurfaceShape42Orig.uvst[0].uvtw";
connectAttr "polyTweakUV40.out" "polySurfaceShape42Orig.i";
connectAttr "transferAttributes12.og[0]" "polySurfaceShape43.i";
connectAttr "groupId330.id" "polySurfaceShape43.iog.og[1].gid";
connectAttr "set12.mwc" "polySurfaceShape43.iog.og[1].gco";
connectAttr "groupId331.id" "polySurfaceShape43.iog.og[2].gid";
connectAttr "tweakSet12.mwc" "polySurfaceShape43.iog.og[2].gco";
connectAttr "tweak12.vl[0].vt[0]" "polySurfaceShape43.twl";
connectAttr "polyTweakUV41.uvtk[0]" "polySurfaceShape43Orig.uvst[0].uvtw";
connectAttr "polyTweakUV41.out" "polySurfaceShape43Orig.i";
connectAttr "transferAttributes13.og[0]" "polySurfaceShape44.i";
connectAttr "groupId332.id" "polySurfaceShape44.iog.og[1].gid";
connectAttr "set13.mwc" "polySurfaceShape44.iog.og[1].gco";
connectAttr "groupId333.id" "polySurfaceShape44.iog.og[2].gid";
connectAttr "tweakSet13.mwc" "polySurfaceShape44.iog.og[2].gco";
connectAttr "tweak13.vl[0].vt[0]" "polySurfaceShape44.twl";
connectAttr "polyTweakUV42.uvtk[0]" "polySurfaceShape44Orig.uvst[0].uvtw";
connectAttr "polyTweakUV42.out" "polySurfaceShape44Orig.i";
connectAttr "transferAttributes14.og[0]" "polySurfaceShape45.i";
connectAttr "groupId334.id" "polySurfaceShape45.iog.og[1].gid";
connectAttr "set14.mwc" "polySurfaceShape45.iog.og[1].gco";
connectAttr "groupId335.id" "polySurfaceShape45.iog.og[2].gid";
connectAttr "tweakSet14.mwc" "polySurfaceShape45.iog.og[2].gco";
connectAttr "tweak14.vl[0].vt[0]" "polySurfaceShape45.twl";
connectAttr "polyTweakUV43.uvtk[0]" "polySurfaceShape45Orig.uvst[0].uvtw";
connectAttr "polyTweakUV43.out" "polySurfaceShape45Orig.i";
connectAttr "transferAttributes15.og[0]" "polySurfaceShape46.i";
connectAttr "groupId336.id" "polySurfaceShape46.iog.og[1].gid";
connectAttr "set15.mwc" "polySurfaceShape46.iog.og[1].gco";
connectAttr "groupId337.id" "polySurfaceShape46.iog.og[2].gid";
connectAttr "tweakSet15.mwc" "polySurfaceShape46.iog.og[2].gco";
connectAttr "tweak15.vl[0].vt[0]" "polySurfaceShape46.twl";
connectAttr "polyTweakUV44.uvtk[0]" "polySurfaceShape46Orig.uvst[0].uvtw";
connectAttr "polyTweakUV44.out" "polySurfaceShape46Orig.i";
connectAttr "transferAttributes16.og[0]" "polySurfaceShape47.i";
connectAttr "groupId338.id" "polySurfaceShape47.iog.og[1].gid";
connectAttr "set16.mwc" "polySurfaceShape47.iog.og[1].gco";
connectAttr "groupId339.id" "polySurfaceShape47.iog.og[2].gid";
connectAttr "tweakSet16.mwc" "polySurfaceShape47.iog.og[2].gco";
connectAttr "tweak16.vl[0].vt[0]" "polySurfaceShape47.twl";
connectAttr "polyTweakUV45.uvtk[0]" "polySurfaceShape47Orig.uvst[0].uvtw";
connectAttr "polyTweakUV45.out" "polySurfaceShape47Orig.i";
connectAttr "transferAttributes59.og[0]" "polySurfaceShape48.i";
connectAttr "groupId424.id" "polySurfaceShape48.iog.og[1].gid";
connectAttr "set59.mwc" "polySurfaceShape48.iog.og[1].gco";
connectAttr "groupId425.id" "polySurfaceShape48.iog.og[2].gid";
connectAttr "tweakSet59.mwc" "polySurfaceShape48.iog.og[2].gco";
connectAttr "tweak59.vl[0].vt[0]" "polySurfaceShape48.twl";
connectAttr "polyTweakUV46.uvtk[0]" "polySurfaceShape48Orig.uvst[0].uvtw";
connectAttr "polyTweakUV46.out" "polySurfaceShape48Orig.i";
connectAttr "transferAttributes60.og[0]" "polySurfaceShape49.i";
connectAttr "groupId426.id" "polySurfaceShape49.iog.og[1].gid";
connectAttr "set60.mwc" "polySurfaceShape49.iog.og[1].gco";
connectAttr "groupId427.id" "polySurfaceShape49.iog.og[2].gid";
connectAttr "tweakSet60.mwc" "polySurfaceShape49.iog.og[2].gco";
connectAttr "tweak60.vl[0].vt[0]" "polySurfaceShape49.twl";
connectAttr "polyTweakUV47.uvtk[0]" "polySurfaceShape49Orig.uvst[0].uvtw";
connectAttr "polyTweakUV47.out" "polySurfaceShape49Orig.i";
connectAttr "transferAttributes61.og[0]" "polySurfaceShape50.i";
connectAttr "groupId428.id" "polySurfaceShape50.iog.og[1].gid";
connectAttr "set61.mwc" "polySurfaceShape50.iog.og[1].gco";
connectAttr "groupId429.id" "polySurfaceShape50.iog.og[2].gid";
connectAttr "tweakSet61.mwc" "polySurfaceShape50.iog.og[2].gco";
connectAttr "tweak61.vl[0].vt[0]" "polySurfaceShape50.twl";
connectAttr "polyTweakUV48.uvtk[0]" "polySurfaceShape50Orig.uvst[0].uvtw";
connectAttr "polyTweakUV48.out" "polySurfaceShape50Orig.i";
connectAttr "transferAttributes62.og[0]" "polySurfaceShape51.i";
connectAttr "groupId430.id" "polySurfaceShape51.iog.og[1].gid";
connectAttr "set62.mwc" "polySurfaceShape51.iog.og[1].gco";
connectAttr "groupId431.id" "polySurfaceShape51.iog.og[2].gid";
connectAttr "tweakSet62.mwc" "polySurfaceShape51.iog.og[2].gco";
connectAttr "tweak62.vl[0].vt[0]" "polySurfaceShape51.twl";
connectAttr "polyTweakUV49.uvtk[0]" "polySurfaceShape51Orig.uvst[0].uvtw";
connectAttr "polyTweakUV49.out" "polySurfaceShape51Orig.i";
connectAttr "transferAttributes63.og[0]" "polySurfaceShape52.i";
connectAttr "groupId432.id" "polySurfaceShape52.iog.og[1].gid";
connectAttr "set63.mwc" "polySurfaceShape52.iog.og[1].gco";
connectAttr "groupId433.id" "polySurfaceShape52.iog.og[2].gid";
connectAttr "tweakSet63.mwc" "polySurfaceShape52.iog.og[2].gco";
connectAttr "tweak63.vl[0].vt[0]" "polySurfaceShape52.twl";
connectAttr "polyTweakUV50.uvtk[0]" "polySurfaceShape52Orig.uvst[0].uvtw";
connectAttr "polyTweakUV50.out" "polySurfaceShape52Orig.i";
connectAttr "polyTweakUV51.out" "polySurfaceShape53.i";
connectAttr "polyTweakUV51.uvtk[0]" "polySurfaceShape53.uvst[0].uvtw";
connectAttr "transferAttributes49.og[0]" "polySurfaceShape54.i";
connectAttr "groupId404.id" "polySurfaceShape54.iog.og[1].gid";
connectAttr "set49.mwc" "polySurfaceShape54.iog.og[1].gco";
connectAttr "groupId405.id" "polySurfaceShape54.iog.og[2].gid";
connectAttr "tweakSet49.mwc" "polySurfaceShape54.iog.og[2].gco";
connectAttr "tweak49.vl[0].vt[0]" "polySurfaceShape54.twl";
connectAttr "polyTweakUV52.uvtk[0]" "polySurfaceShape54Orig.uvst[0].uvtw";
connectAttr "polyTweakUV52.out" "polySurfaceShape54Orig.i";
connectAttr "transferAttributes1.og[0]" "polySurfaceShape55.i";
connectAttr "groupId308.id" "polySurfaceShape55.iog.og[1].gid";
connectAttr "set1.mwc" "polySurfaceShape55.iog.og[1].gco";
connectAttr "groupId309.id" "polySurfaceShape55.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape55.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape55.twl";
connectAttr "polyTweakUV53.uvtk[0]" "polySurfaceShape55Orig.uvst[0].uvtw";
connectAttr "polyTweakUV53.out" "polySurfaceShape55Orig.i";
connectAttr "transferAttributes50.og[0]" "polySurfaceShape56.i";
connectAttr "groupId406.id" "polySurfaceShape56.iog.og[1].gid";
connectAttr "set50.mwc" "polySurfaceShape56.iog.og[1].gco";
connectAttr "groupId407.id" "polySurfaceShape56.iog.og[2].gid";
connectAttr "tweakSet50.mwc" "polySurfaceShape56.iog.og[2].gco";
connectAttr "tweak50.vl[0].vt[0]" "polySurfaceShape56.twl";
connectAttr "polyTweakUV54.uvtk[0]" "polySurfaceShape56Orig.uvst[0].uvtw";
connectAttr "polyTweakUV54.out" "polySurfaceShape56Orig.i";
connectAttr "transferAttributes2.og[0]" "polySurfaceShape57.i";
connectAttr "groupId310.id" "polySurfaceShape57.iog.og[1].gid";
connectAttr "set2.mwc" "polySurfaceShape57.iog.og[1].gco";
connectAttr "groupId311.id" "polySurfaceShape57.iog.og[2].gid";
connectAttr "tweakSet2.mwc" "polySurfaceShape57.iog.og[2].gco";
connectAttr "tweak2.vl[0].vt[0]" "polySurfaceShape57.twl";
connectAttr "polyTweakUV55.uvtk[0]" "polySurfaceShape57Orig.uvst[0].uvtw";
connectAttr "polyTweakUV55.out" "polySurfaceShape57Orig.i";
connectAttr "transferAttributes3.og[0]" "polySurfaceShape58.i";
connectAttr "groupId312.id" "polySurfaceShape58.iog.og[1].gid";
connectAttr "set3.mwc" "polySurfaceShape58.iog.og[1].gco";
connectAttr "groupId313.id" "polySurfaceShape58.iog.og[2].gid";
connectAttr "tweakSet3.mwc" "polySurfaceShape58.iog.og[2].gco";
connectAttr "tweak3.vl[0].vt[0]" "polySurfaceShape58.twl";
connectAttr "polyTweakUV56.uvtk[0]" "polySurfaceShape58Orig.uvst[0].uvtw";
connectAttr "polyTweakUV56.out" "polySurfaceShape58Orig.i";
connectAttr "transferAttributes4.og[0]" "polySurfaceShape59.i";
connectAttr "groupId314.id" "polySurfaceShape59.iog.og[1].gid";
connectAttr "set4.mwc" "polySurfaceShape59.iog.og[1].gco";
connectAttr "groupId315.id" "polySurfaceShape59.iog.og[2].gid";
connectAttr "tweakSet4.mwc" "polySurfaceShape59.iog.og[2].gco";
connectAttr "tweak4.vl[0].vt[0]" "polySurfaceShape59.twl";
connectAttr "polyTweakUV57.uvtk[0]" "polySurfaceShape59Orig.uvst[0].uvtw";
connectAttr "polyTweakUV57.out" "polySurfaceShape59Orig.i";
connectAttr "transferAttributes5.og[0]" "polySurfaceShape60.i";
connectAttr "groupId316.id" "polySurfaceShape60.iog.og[1].gid";
connectAttr "set5.mwc" "polySurfaceShape60.iog.og[1].gco";
connectAttr "groupId317.id" "polySurfaceShape60.iog.og[2].gid";
connectAttr "tweakSet5.mwc" "polySurfaceShape60.iog.og[2].gco";
connectAttr "tweak5.vl[0].vt[0]" "polySurfaceShape60.twl";
connectAttr "polyTweakUV58.uvtk[0]" "polySurfaceShape60Orig.uvst[0].uvtw";
connectAttr "polyTweakUV58.out" "polySurfaceShape60Orig.i";
connectAttr "transferAttributes6.og[0]" "polySurfaceShape61.i";
connectAttr "groupId318.id" "polySurfaceShape61.iog.og[1].gid";
connectAttr "set6.mwc" "polySurfaceShape61.iog.og[1].gco";
connectAttr "groupId319.id" "polySurfaceShape61.iog.og[2].gid";
connectAttr "tweakSet6.mwc" "polySurfaceShape61.iog.og[2].gco";
connectAttr "tweak6.vl[0].vt[0]" "polySurfaceShape61.twl";
connectAttr "polyTweakUV59.uvtk[0]" "polySurfaceShape61Orig.uvst[0].uvtw";
connectAttr "polyTweakUV59.out" "polySurfaceShape61Orig.i";
connectAttr "transferAttributes7.og[0]" "polySurfaceShape62.i";
connectAttr "groupId320.id" "polySurfaceShape62.iog.og[1].gid";
connectAttr "set7.mwc" "polySurfaceShape62.iog.og[1].gco";
connectAttr "groupId321.id" "polySurfaceShape62.iog.og[2].gid";
connectAttr "tweakSet7.mwc" "polySurfaceShape62.iog.og[2].gco";
connectAttr "tweak7.vl[0].vt[0]" "polySurfaceShape62.twl";
connectAttr "polyTweakUV60.uvtk[0]" "polySurfaceShape62Orig.uvst[0].uvtw";
connectAttr "polyTweakUV60.out" "polySurfaceShape62Orig.i";
connectAttr "transferAttributes8.og[0]" "polySurfaceShape63.i";
connectAttr "groupId322.id" "polySurfaceShape63.iog.og[1].gid";
connectAttr "set8.mwc" "polySurfaceShape63.iog.og[1].gco";
connectAttr "groupId323.id" "polySurfaceShape63.iog.og[2].gid";
connectAttr "tweakSet8.mwc" "polySurfaceShape63.iog.og[2].gco";
connectAttr "tweak8.vl[0].vt[0]" "polySurfaceShape63.twl";
connectAttr "polyTweakUV61.uvtk[0]" "polySurfaceShape63Orig.uvst[0].uvtw";
connectAttr "polyTweakUV61.out" "polySurfaceShape63Orig.i";
connectAttr "transferAttributes51.og[0]" "polySurfaceShape64.i";
connectAttr "groupId408.id" "polySurfaceShape64.iog.og[1].gid";
connectAttr "set51.mwc" "polySurfaceShape64.iog.og[1].gco";
connectAttr "groupId409.id" "polySurfaceShape64.iog.og[2].gid";
connectAttr "tweakSet51.mwc" "polySurfaceShape64.iog.og[2].gco";
connectAttr "tweak51.vl[0].vt[0]" "polySurfaceShape64.twl";
connectAttr "polyTweakUV62.uvtk[0]" "polySurfaceShape64Orig.uvst[0].uvtw";
connectAttr "polyTweakUV62.out" "polySurfaceShape64Orig.i";
connectAttr "transferAttributes52.og[0]" "polySurfaceShape65.i";
connectAttr "groupId410.id" "polySurfaceShape65.iog.og[1].gid";
connectAttr "set52.mwc" "polySurfaceShape65.iog.og[1].gco";
connectAttr "groupId411.id" "polySurfaceShape65.iog.og[2].gid";
connectAttr "tweakSet52.mwc" "polySurfaceShape65.iog.og[2].gco";
connectAttr "tweak52.vl[0].vt[0]" "polySurfaceShape65.twl";
connectAttr "polyTweakUV63.uvtk[0]" "polySurfaceShape65Orig.uvst[0].uvtw";
connectAttr "polyTweakUV63.out" "polySurfaceShape65Orig.i";
connectAttr "transferAttributes53.og[0]" "polySurfaceShape66.i";
connectAttr "groupId412.id" "polySurfaceShape66.iog.og[1].gid";
connectAttr "set53.mwc" "polySurfaceShape66.iog.og[1].gco";
connectAttr "groupId413.id" "polySurfaceShape66.iog.og[2].gid";
connectAttr "tweakSet53.mwc" "polySurfaceShape66.iog.og[2].gco";
connectAttr "tweak53.vl[0].vt[0]" "polySurfaceShape66.twl";
connectAttr "polyTweakUV64.uvtk[0]" "polySurfaceShape66Orig.uvst[0].uvtw";
connectAttr "polyTweakUV64.out" "polySurfaceShape66Orig.i";
connectAttr "transferAttributes54.og[0]" "polySurfaceShape67.i";
connectAttr "groupId414.id" "polySurfaceShape67.iog.og[1].gid";
connectAttr "set54.mwc" "polySurfaceShape67.iog.og[1].gco";
connectAttr "groupId415.id" "polySurfaceShape67.iog.og[2].gid";
connectAttr "tweakSet54.mwc" "polySurfaceShape67.iog.og[2].gco";
connectAttr "tweak54.vl[0].vt[0]" "polySurfaceShape67.twl";
connectAttr "polyTweakUV65.uvtk[0]" "polySurfaceShape67Orig.uvst[0].uvtw";
connectAttr "polyTweakUV65.out" "polySurfaceShape67Orig.i";
connectAttr "transferAttributes55.og[0]" "polySurfaceShape68.i";
connectAttr "groupId416.id" "polySurfaceShape68.iog.og[1].gid";
connectAttr "set55.mwc" "polySurfaceShape68.iog.og[1].gco";
connectAttr "groupId417.id" "polySurfaceShape68.iog.og[2].gid";
connectAttr "tweakSet55.mwc" "polySurfaceShape68.iog.og[2].gco";
connectAttr "tweak55.vl[0].vt[0]" "polySurfaceShape68.twl";
connectAttr "polyTweakUV66.uvtk[0]" "polySurfaceShape68Orig.uvst[0].uvtw";
connectAttr "polyTweakUV66.out" "polySurfaceShape68Orig.i";
connectAttr "polyTweakUV67.out" "polySurfaceShape69.i";
connectAttr "polyTweakUV67.uvtk[0]" "polySurfaceShape69.uvst[0].uvtw";
connectAttr "transferAttributes80.og[0]" "polySurfaceShape70.i";
connectAttr "groupId466.id" "polySurfaceShape70.iog.og[1].gid";
connectAttr "set80.mwc" "polySurfaceShape70.iog.og[1].gco";
connectAttr "groupId467.id" "polySurfaceShape70.iog.og[2].gid";
connectAttr "tweakSet80.mwc" "polySurfaceShape70.iog.og[2].gco";
connectAttr "tweak80.vl[0].vt[0]" "polySurfaceShape70.twl";
connectAttr "polyTweakUV68.uvtk[0]" "polySurfaceShape70Orig.uvst[0].uvtw";
connectAttr "polyTweakUV68.out" "polySurfaceShape70Orig.i";
connectAttr "transferAttributes81.og[0]" "polySurfaceShape71.i";
connectAttr "groupId468.id" "polySurfaceShape71.iog.og[1].gid";
connectAttr "set81.mwc" "polySurfaceShape71.iog.og[1].gco";
connectAttr "groupId469.id" "polySurfaceShape71.iog.og[2].gid";
connectAttr "tweakSet81.mwc" "polySurfaceShape71.iog.og[2].gco";
connectAttr "tweak81.vl[0].vt[0]" "polySurfaceShape71.twl";
connectAttr "polyTweakUV69.uvtk[0]" "polySurfaceShape71Orig.uvst[0].uvtw";
connectAttr "polyTweakUV69.out" "polySurfaceShape71Orig.i";
connectAttr "transferAttributes33.og[0]" "polySurfaceShape72.i";
connectAttr "groupId372.id" "polySurfaceShape72.iog.og[1].gid";
connectAttr "set33.mwc" "polySurfaceShape72.iog.og[1].gco";
connectAttr "groupId373.id" "polySurfaceShape72.iog.og[2].gid";
connectAttr "tweakSet33.mwc" "polySurfaceShape72.iog.og[2].gco";
connectAttr "tweak33.vl[0].vt[0]" "polySurfaceShape72.twl";
connectAttr "polyTweakUV70.uvtk[0]" "polySurfaceShape72Orig.uvst[0].uvtw";
connectAttr "polyTweakUV70.out" "polySurfaceShape72Orig.i";
connectAttr "transferAttributes82.og[0]" "polySurfaceShape73.i";
connectAttr "groupId470.id" "polySurfaceShape73.iog.og[1].gid";
connectAttr "set82.mwc" "polySurfaceShape73.iog.og[1].gco";
connectAttr "groupId471.id" "polySurfaceShape73.iog.og[2].gid";
connectAttr "tweakSet82.mwc" "polySurfaceShape73.iog.og[2].gco";
connectAttr "tweak82.vl[0].vt[0]" "polySurfaceShape73.twl";
connectAttr "polyTweakUV71.uvtk[0]" "polySurfaceShape73Orig.uvst[0].uvtw";
connectAttr "polyTweakUV71.out" "polySurfaceShape73Orig.i";
connectAttr "transferAttributes34.og[0]" "polySurfaceShape74.i";
connectAttr "groupId374.id" "polySurfaceShape74.iog.og[1].gid";
connectAttr "set34.mwc" "polySurfaceShape74.iog.og[1].gco";
connectAttr "groupId375.id" "polySurfaceShape74.iog.og[2].gid";
connectAttr "tweakSet34.mwc" "polySurfaceShape74.iog.og[2].gco";
connectAttr "tweak34.vl[0].vt[0]" "polySurfaceShape74.twl";
connectAttr "polyTweakUV72.uvtk[0]" "polySurfaceShape74Orig.uvst[0].uvtw";
connectAttr "polyTweakUV72.out" "polySurfaceShape74Orig.i";
connectAttr "transferAttributes35.og[0]" "polySurfaceShape75.i";
connectAttr "groupId376.id" "polySurfaceShape75.iog.og[1].gid";
connectAttr "set35.mwc" "polySurfaceShape75.iog.og[1].gco";
connectAttr "groupId377.id" "polySurfaceShape75.iog.og[2].gid";
connectAttr "tweakSet35.mwc" "polySurfaceShape75.iog.og[2].gco";
connectAttr "tweak35.vl[0].vt[0]" "polySurfaceShape75.twl";
connectAttr "polyTweakUV73.uvtk[0]" "polySurfaceShape75Orig.uvst[0].uvtw";
connectAttr "polyTweakUV73.out" "polySurfaceShape75Orig.i";
connectAttr "transferAttributes36.og[0]" "polySurfaceShape76.i";
connectAttr "groupId378.id" "polySurfaceShape76.iog.og[1].gid";
connectAttr "set36.mwc" "polySurfaceShape76.iog.og[1].gco";
connectAttr "groupId379.id" "polySurfaceShape76.iog.og[2].gid";
connectAttr "tweakSet36.mwc" "polySurfaceShape76.iog.og[2].gco";
connectAttr "tweak36.vl[0].vt[0]" "polySurfaceShape76.twl";
connectAttr "polyTweakUV74.uvtk[0]" "polySurfaceShape76Orig.uvst[0].uvtw";
connectAttr "polyTweakUV74.out" "polySurfaceShape76Orig.i";
connectAttr "transferAttributes37.og[0]" "polySurfaceShape77.i";
connectAttr "groupId380.id" "polySurfaceShape77.iog.og[1].gid";
connectAttr "set37.mwc" "polySurfaceShape77.iog.og[1].gco";
connectAttr "groupId381.id" "polySurfaceShape77.iog.og[2].gid";
connectAttr "tweakSet37.mwc" "polySurfaceShape77.iog.og[2].gco";
connectAttr "tweak37.vl[0].vt[0]" "polySurfaceShape77.twl";
connectAttr "polyTweakUV75.uvtk[0]" "polySurfaceShape77Orig.uvst[0].uvtw";
connectAttr "polyTweakUV75.out" "polySurfaceShape77Orig.i";
connectAttr "transferAttributes38.og[0]" "polySurfaceShape78.i";
connectAttr "groupId382.id" "polySurfaceShape78.iog.og[1].gid";
connectAttr "set38.mwc" "polySurfaceShape78.iog.og[1].gco";
connectAttr "groupId383.id" "polySurfaceShape78.iog.og[2].gid";
connectAttr "tweakSet38.mwc" "polySurfaceShape78.iog.og[2].gco";
connectAttr "tweak38.vl[0].vt[0]" "polySurfaceShape78.twl";
connectAttr "polyTweakUV76.uvtk[0]" "polySurfaceShape78Orig.uvst[0].uvtw";
connectAttr "polyTweakUV76.out" "polySurfaceShape78Orig.i";
connectAttr "transferAttributes39.og[0]" "polySurfaceShape79.i";
connectAttr "groupId384.id" "polySurfaceShape79.iog.og[1].gid";
connectAttr "set39.mwc" "polySurfaceShape79.iog.og[1].gco";
connectAttr "groupId385.id" "polySurfaceShape79.iog.og[2].gid";
connectAttr "tweakSet39.mwc" "polySurfaceShape79.iog.og[2].gco";
connectAttr "tweak39.vl[0].vt[0]" "polySurfaceShape79.twl";
connectAttr "polyTweakUV77.uvtk[0]" "polySurfaceShape79Orig.uvst[0].uvtw";
connectAttr "polyTweakUV77.out" "polySurfaceShape79Orig.i";
connectAttr "transferAttributes40.og[0]" "polySurfaceShape80.i";
connectAttr "groupId386.id" "polySurfaceShape80.iog.og[1].gid";
connectAttr "set40.mwc" "polySurfaceShape80.iog.og[1].gco";
connectAttr "groupId387.id" "polySurfaceShape80.iog.og[2].gid";
connectAttr "tweakSet40.mwc" "polySurfaceShape80.iog.og[2].gco";
connectAttr "tweak40.vl[0].vt[0]" "polySurfaceShape80.twl";
connectAttr "polyTweakUV78.uvtk[0]" "polySurfaceShape80Orig.uvst[0].uvtw";
connectAttr "polyTweakUV78.out" "polySurfaceShape80Orig.i";
connectAttr "transferAttributes83.og[0]" "polySurfaceShape81.i";
connectAttr "groupId472.id" "polySurfaceShape81.iog.og[1].gid";
connectAttr "set83.mwc" "polySurfaceShape81.iog.og[1].gco";
connectAttr "groupId473.id" "polySurfaceShape81.iog.og[2].gid";
connectAttr "tweakSet83.mwc" "polySurfaceShape81.iog.og[2].gco";
connectAttr "tweak83.vl[0].vt[0]" "polySurfaceShape81.twl";
connectAttr "polyTweakUV79.uvtk[0]" "polySurfaceShape81Orig.uvst[0].uvtw";
connectAttr "polyTweakUV79.out" "polySurfaceShape81Orig.i";
connectAttr "transferAttributes84.og[0]" "polySurfaceShape82.i";
connectAttr "groupId474.id" "polySurfaceShape82.iog.og[1].gid";
connectAttr "set84.mwc" "polySurfaceShape82.iog.og[1].gco";
connectAttr "groupId475.id" "polySurfaceShape82.iog.og[2].gid";
connectAttr "tweakSet84.mwc" "polySurfaceShape82.iog.og[2].gco";
connectAttr "tweak84.vl[0].vt[0]" "polySurfaceShape82.twl";
connectAttr "polyTweakUV80.uvtk[0]" "polySurfaceShape82Orig.uvst[0].uvtw";
connectAttr "polyTweakUV80.out" "polySurfaceShape82Orig.i";
connectAttr "transferAttributes85.og[0]" "polySurfaceShape83.i";
connectAttr "groupId476.id" "polySurfaceShape83.iog.og[1].gid";
connectAttr "set85.mwc" "polySurfaceShape83.iog.og[1].gco";
connectAttr "groupId477.id" "polySurfaceShape83.iog.og[2].gid";
connectAttr "tweakSet85.mwc" "polySurfaceShape83.iog.og[2].gco";
connectAttr "tweak85.vl[0].vt[0]" "polySurfaceShape83.twl";
connectAttr "polyTweakUV81.uvtk[0]" "polySurfaceShape83Orig.uvst[0].uvtw";
connectAttr "polyTweakUV81.out" "polySurfaceShape83Orig.i";
connectAttr "transferAttributes86.og[0]" "polySurfaceShape84.i";
connectAttr "groupId478.id" "polySurfaceShape84.iog.og[1].gid";
connectAttr "set86.mwc" "polySurfaceShape84.iog.og[1].gco";
connectAttr "groupId479.id" "polySurfaceShape84.iog.og[2].gid";
connectAttr "tweakSet86.mwc" "polySurfaceShape84.iog.og[2].gco";
connectAttr "tweak86.vl[0].vt[0]" "polySurfaceShape84.twl";
connectAttr "polyTweakUV82.uvtk[0]" "polySurfaceShape84Orig.uvst[0].uvtw";
connectAttr "polyTweakUV82.out" "polySurfaceShape84Orig.i";
connectAttr "transferAttributes87.og[0]" "polySurfaceShape85.i";
connectAttr "groupId480.id" "polySurfaceShape85.iog.og[1].gid";
connectAttr "set87.mwc" "polySurfaceShape85.iog.og[1].gco";
connectAttr "groupId481.id" "polySurfaceShape85.iog.og[2].gid";
connectAttr "tweakSet87.mwc" "polySurfaceShape85.iog.og[2].gco";
connectAttr "tweak87.vl[0].vt[0]" "polySurfaceShape85.twl";
connectAttr "polyTweakUV83.uvtk[0]" "polySurfaceShape85Orig.uvst[0].uvtw";
connectAttr "polyTweakUV83.out" "polySurfaceShape85Orig.i";
connectAttr "transferAttributes88.og[0]" "polySurfaceShape86.i";
connectAttr "groupId482.id" "polySurfaceShape86.iog.og[1].gid";
connectAttr "set88.mwc" "polySurfaceShape86.iog.og[1].gco";
connectAttr "groupId483.id" "polySurfaceShape86.iog.og[2].gid";
connectAttr "tweakSet88.mwc" "polySurfaceShape86.iog.og[2].gco";
connectAttr "tweak88.vl[0].vt[0]" "polySurfaceShape86.twl";
connectAttr "polyTweakUV84.uvtk[0]" "polySurfaceShape86Orig.uvst[0].uvtw";
connectAttr "polyTweakUV84.out" "polySurfaceShape86Orig.i";
connectAttr "transferAttributes89.og[0]" "polySurfaceShape87.i";
connectAttr "groupId484.id" "polySurfaceShape87.iog.og[1].gid";
connectAttr "set89.mwc" "polySurfaceShape87.iog.og[1].gco";
connectAttr "groupId485.id" "polySurfaceShape87.iog.og[2].gid";
connectAttr "tweakSet89.mwc" "polySurfaceShape87.iog.og[2].gco";
connectAttr "tweak89.vl[0].vt[0]" "polySurfaceShape87.twl";
connectAttr "polyTweakUV85.uvtk[0]" "polySurfaceShape87Orig.uvst[0].uvtw";
connectAttr "polyTweakUV85.out" "polySurfaceShape87Orig.i";
connectAttr "transferAttributes41.og[0]" "polySurfaceShape88.i";
connectAttr "groupId388.id" "polySurfaceShape88.iog.og[1].gid";
connectAttr "set41.mwc" "polySurfaceShape88.iog.og[1].gco";
connectAttr "groupId389.id" "polySurfaceShape88.iog.og[2].gid";
connectAttr "tweakSet41.mwc" "polySurfaceShape88.iog.og[2].gco";
connectAttr "tweak41.vl[0].vt[0]" "polySurfaceShape88.twl";
connectAttr "polyTweakUV86.uvtk[0]" "polySurfaceShape88Orig.uvst[0].uvtw";
connectAttr "polyTweakUV86.out" "polySurfaceShape88Orig.i";
connectAttr "transferAttributes90.og[0]" "polySurfaceShape89.i";
connectAttr "groupId486.id" "polySurfaceShape89.iog.og[1].gid";
connectAttr "set90.mwc" "polySurfaceShape89.iog.og[1].gco";
connectAttr "groupId487.id" "polySurfaceShape89.iog.og[2].gid";
connectAttr "tweakSet90.mwc" "polySurfaceShape89.iog.og[2].gco";
connectAttr "tweak90.vl[0].vt[0]" "polySurfaceShape89.twl";
connectAttr "polyTweakUV87.uvtk[0]" "polySurfaceShape89Orig.uvst[0].uvtw";
connectAttr "polyTweakUV87.out" "polySurfaceShape89Orig.i";
connectAttr "transferAttributes42.og[0]" "polySurfaceShape90.i";
connectAttr "groupId390.id" "polySurfaceShape90.iog.og[1].gid";
connectAttr "set42.mwc" "polySurfaceShape90.iog.og[1].gco";
connectAttr "groupId391.id" "polySurfaceShape90.iog.og[2].gid";
connectAttr "tweakSet42.mwc" "polySurfaceShape90.iog.og[2].gco";
connectAttr "tweak42.vl[0].vt[0]" "polySurfaceShape90.twl";
connectAttr "polyTweakUV88.uvtk[0]" "polySurfaceShape90Orig.uvst[0].uvtw";
connectAttr "polyTweakUV88.out" "polySurfaceShape90Orig.i";
connectAttr "transferAttributes43.og[0]" "polySurfaceShape91.i";
connectAttr "groupId392.id" "polySurfaceShape91.iog.og[1].gid";
connectAttr "set43.mwc" "polySurfaceShape91.iog.og[1].gco";
connectAttr "groupId393.id" "polySurfaceShape91.iog.og[2].gid";
connectAttr "tweakSet43.mwc" "polySurfaceShape91.iog.og[2].gco";
connectAttr "tweak43.vl[0].vt[0]" "polySurfaceShape91.twl";
connectAttr "polyTweakUV89.uvtk[0]" "polySurfaceShape91Orig.uvst[0].uvtw";
connectAttr "polyTweakUV89.out" "polySurfaceShape91Orig.i";
connectAttr "transferAttributes44.og[0]" "polySurfaceShape92.i";
connectAttr "groupId394.id" "polySurfaceShape92.iog.og[1].gid";
connectAttr "set44.mwc" "polySurfaceShape92.iog.og[1].gco";
connectAttr "groupId395.id" "polySurfaceShape92.iog.og[2].gid";
connectAttr "tweakSet44.mwc" "polySurfaceShape92.iog.og[2].gco";
connectAttr "tweak44.vl[0].vt[0]" "polySurfaceShape92.twl";
connectAttr "polyTweakUV90.uvtk[0]" "polySurfaceShape92Orig.uvst[0].uvtw";
connectAttr "polyTweakUV90.out" "polySurfaceShape92Orig.i";
connectAttr "transferAttributes45.og[0]" "polySurfaceShape93.i";
connectAttr "groupId396.id" "polySurfaceShape93.iog.og[1].gid";
connectAttr "set45.mwc" "polySurfaceShape93.iog.og[1].gco";
connectAttr "groupId397.id" "polySurfaceShape93.iog.og[2].gid";
connectAttr "tweakSet45.mwc" "polySurfaceShape93.iog.og[2].gco";
connectAttr "tweak45.vl[0].vt[0]" "polySurfaceShape93.twl";
connectAttr "polyTweakUV91.uvtk[0]" "polySurfaceShape93Orig.uvst[0].uvtw";
connectAttr "polyTweakUV91.out" "polySurfaceShape93Orig.i";
connectAttr "transferAttributes46.og[0]" "polySurfaceShape94.i";
connectAttr "groupId398.id" "polySurfaceShape94.iog.og[1].gid";
connectAttr "set46.mwc" "polySurfaceShape94.iog.og[1].gco";
connectAttr "groupId399.id" "polySurfaceShape94.iog.og[2].gid";
connectAttr "tweakSet46.mwc" "polySurfaceShape94.iog.og[2].gco";
connectAttr "tweak46.vl[0].vt[0]" "polySurfaceShape94.twl";
connectAttr "polyTweakUV92.uvtk[0]" "polySurfaceShape94Orig.uvst[0].uvtw";
connectAttr "polyTweakUV92.out" "polySurfaceShape94Orig.i";
connectAttr "transferAttributes47.og[0]" "polySurfaceShape95.i";
connectAttr "groupId400.id" "polySurfaceShape95.iog.og[1].gid";
connectAttr "set47.mwc" "polySurfaceShape95.iog.og[1].gco";
connectAttr "groupId401.id" "polySurfaceShape95.iog.og[2].gid";
connectAttr "tweakSet47.mwc" "polySurfaceShape95.iog.og[2].gco";
connectAttr "tweak47.vl[0].vt[0]" "polySurfaceShape95.twl";
connectAttr "polyTweakUV93.uvtk[0]" "polySurfaceShape95Orig.uvst[0].uvtw";
connectAttr "polyTweakUV93.out" "polySurfaceShape95Orig.i";
connectAttr "transferAttributes48.og[0]" "polySurfaceShape96.i";
connectAttr "groupId402.id" "polySurfaceShape96.iog.og[1].gid";
connectAttr "set48.mwc" "polySurfaceShape96.iog.og[1].gco";
connectAttr "groupId403.id" "polySurfaceShape96.iog.og[2].gid";
connectAttr "tweakSet48.mwc" "polySurfaceShape96.iog.og[2].gco";
connectAttr "tweak48.vl[0].vt[0]" "polySurfaceShape96.twl";
connectAttr "polyTweakUV94.uvtk[0]" "polySurfaceShape96Orig.uvst[0].uvtw";
connectAttr "polyTweakUV94.out" "polySurfaceShape96Orig.i";
connectAttr "transferAttributes91.og[0]" "polySurfaceShape97.i";
connectAttr "groupId488.id" "polySurfaceShape97.iog.og[1].gid";
connectAttr "set91.mwc" "polySurfaceShape97.iog.og[1].gco";
connectAttr "groupId489.id" "polySurfaceShape97.iog.og[2].gid";
connectAttr "tweakSet91.mwc" "polySurfaceShape97.iog.og[2].gco";
connectAttr "tweak91.vl[0].vt[0]" "polySurfaceShape97.twl";
connectAttr "polyTweakUV95.uvtk[0]" "polySurfaceShape97Orig.uvst[0].uvtw";
connectAttr "polyTweakUV95.out" "polySurfaceShape97Orig.i";
connectAttr "transferAttributes92.og[0]" "polySurfaceShape98.i";
connectAttr "groupId490.id" "polySurfaceShape98.iog.og[1].gid";
connectAttr "set92.mwc" "polySurfaceShape98.iog.og[1].gco";
connectAttr "groupId491.id" "polySurfaceShape98.iog.og[2].gid";
connectAttr "tweakSet92.mwc" "polySurfaceShape98.iog.og[2].gco";
connectAttr "tweak92.vl[0].vt[0]" "polySurfaceShape98.twl";
connectAttr "polyTweakUV96.uvtk[0]" "polySurfaceShape98Orig.uvst[0].uvtw";
connectAttr "polyTweakUV96.out" "polySurfaceShape98Orig.i";
connectAttr "transferAttributes93.og[0]" "polySurfaceShape99.i";
connectAttr "groupId492.id" "polySurfaceShape99.iog.og[1].gid";
connectAttr "set93.mwc" "polySurfaceShape99.iog.og[1].gco";
connectAttr "groupId493.id" "polySurfaceShape99.iog.og[2].gid";
connectAttr "tweakSet93.mwc" "polySurfaceShape99.iog.og[2].gco";
connectAttr "tweak93.vl[0].vt[0]" "polySurfaceShape99.twl";
connectAttr "polyTweakUV97.uvtk[0]" "polySurfaceShape99Orig.uvst[0].uvtw";
connectAttr "polyTweakUV97.out" "polySurfaceShape99Orig.i";
connectAttr "transferAttributes94.og[0]" "polySurfaceShape100.i";
connectAttr "groupId494.id" "polySurfaceShape100.iog.og[1].gid";
connectAttr "set94.mwc" "polySurfaceShape100.iog.og[1].gco";
connectAttr "groupId495.id" "polySurfaceShape100.iog.og[2].gid";
connectAttr "tweakSet94.mwc" "polySurfaceShape100.iog.og[2].gco";
connectAttr "tweak94.vl[0].vt[0]" "polySurfaceShape100.twl";
connectAttr "polyTweakUV98.uvtk[0]" "polySurfaceShape100Orig.uvst[0].uvtw";
connectAttr "polyTweakUV98.out" "polySurfaceShape100Orig.i";
connectAttr "transferAttributes95.og[0]" "polySurfaceShape101.i";
connectAttr "groupId496.id" "polySurfaceShape101.iog.og[1].gid";
connectAttr "set95.mwc" "polySurfaceShape101.iog.og[1].gco";
connectAttr "groupId497.id" "polySurfaceShape101.iog.og[2].gid";
connectAttr "tweakSet95.mwc" "polySurfaceShape101.iog.og[2].gco";
connectAttr "tweak95.vl[0].vt[0]" "polySurfaceShape101.twl";
connectAttr "polyTweakUV99.uvtk[0]" "polySurfaceShape101Orig.uvst[0].uvtw";
connectAttr "polyTweakUV99.out" "polySurfaceShape101Orig.i";
connectAttr "transferAttributes96.og[0]" "polySurfaceShape102.i";
connectAttr "groupId498.id" "polySurfaceShape102.iog.og[1].gid";
connectAttr "set96.mwc" "polySurfaceShape102.iog.og[1].gco";
connectAttr "groupId499.id" "polySurfaceShape102.iog.og[2].gid";
connectAttr "tweakSet96.mwc" "polySurfaceShape102.iog.og[2].gco";
connectAttr "tweak96.vl[0].vt[0]" "polySurfaceShape102.twl";
connectAttr "polyTweakUV100.uvtk[0]" "polySurfaceShape102Orig.uvst[0].uvtw";
connectAttr "polyTweakUV100.out" "polySurfaceShape102Orig.i";
connectAttr "groupParts4.og" "polySurfaceShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "polySurfaceShape1.uvst[0].uvtw";
connectAttr "groupId205.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId206.id" "polySurfaceShape1.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "|group1|pCube4|transform99|pCubeShape4.o" "polyUnite1.ip[3]";
connectAttr "|group1|pCube5|transform98|pCubeShape5.o" "polyUnite1.ip[4]";
connectAttr "|group1|pCube6|transform97|pCubeShape6.o" "polyUnite1.ip[5]";
connectAttr "|group1|pCube7|transform96|pCubeShape7.o" "polyUnite1.ip[6]";
connectAttr "|group1|pCube8|transform95|pCubeShape8.o" "polyUnite1.ip[7]";
connectAttr "|group1|pCube9|transform94|pCubeShape9.o" "polyUnite1.ip[8]";
connectAttr "|group1|pCube10|transform93|pCubeShape10.o" "polyUnite1.ip[9]";
connectAttr "|group1|pCube11|transform92|pCubeShape11.o" "polyUnite1.ip[10]";
connectAttr "|group1|pCube12|transform91|pCubeShape12.o" "polyUnite1.ip[11]";
connectAttr "|group1|pCube13|transform90|pCubeShape13.o" "polyUnite1.ip[12]";
connectAttr "|group1|pCube14|transform89|pCubeShape14.o" "polyUnite1.ip[13]";
connectAttr "|group1|pCube15|transform88|pCubeShape15.o" "polyUnite1.ip[14]";
connectAttr "|group1|pCube16|transform87|pCubeShape16.o" "polyUnite1.ip[15]";
connectAttr "|group1|pCube17|transform86|pCubeShape17.o" "polyUnite1.ip[16]";
connectAttr "|group1|pCube18|transform85|pCubeShape18.o" "polyUnite1.ip[17]";
connectAttr "|group1|pCube19|transform84|pCubeShape19.o" "polyUnite1.ip[18]";
connectAttr "|group2|pCube4|transform83|pCubeShape4.o" "polyUnite1.ip[19]";
connectAttr "|group2|pCube5|transform82|pCubeShape5.o" "polyUnite1.ip[20]";
connectAttr "|group2|pCube6|transform81|pCubeShape6.o" "polyUnite1.ip[21]";
connectAttr "|group2|pCube7|transform80|pCubeShape7.o" "polyUnite1.ip[22]";
connectAttr "|group2|pCube8|transform79|pCubeShape8.o" "polyUnite1.ip[23]";
connectAttr "|group2|pCube9|transform78|pCubeShape9.o" "polyUnite1.ip[24]";
connectAttr "|group2|pCube10|transform77|pCubeShape10.o" "polyUnite1.ip[25]";
connectAttr "|group2|pCube11|transform76|pCubeShape11.o" "polyUnite1.ip[26]";
connectAttr "|group2|pCube12|transform75|pCubeShape12.o" "polyUnite1.ip[27]";
connectAttr "|group2|pCube13|transform74|pCubeShape13.o" "polyUnite1.ip[28]";
connectAttr "|group2|pCube14|transform73|pCubeShape14.o" "polyUnite1.ip[29]";
connectAttr "|group2|pCube15|transform72|pCubeShape15.o" "polyUnite1.ip[30]";
connectAttr "|group2|pCube16|transform71|pCubeShape16.o" "polyUnite1.ip[31]";
connectAttr "|group2|pCube17|transform70|pCubeShape17.o" "polyUnite1.ip[32]";
connectAttr "|group2|pCube18|transform69|pCubeShape18.o" "polyUnite1.ip[33]";
connectAttr "|group2|pCube19|transform68|pCubeShape19.o" "polyUnite1.ip[34]";
connectAttr "|group3|pCube4|transform67|pCubeShape4.o" "polyUnite1.ip[35]";
connectAttr "|group3|pCube5|transform66|pCubeShape5.o" "polyUnite1.ip[36]";
connectAttr "|group3|pCube6|transform65|pCubeShape6.o" "polyUnite1.ip[37]";
connectAttr "|group3|pCube7|transform64|pCubeShape7.o" "polyUnite1.ip[38]";
connectAttr "|group3|pCube8|transform63|pCubeShape8.o" "polyUnite1.ip[39]";
connectAttr "|group3|pCube9|transform62|pCubeShape9.o" "polyUnite1.ip[40]";
connectAttr "|group3|pCube10|transform61|pCubeShape10.o" "polyUnite1.ip[41]";
connectAttr "|group3|pCube11|transform60|pCubeShape11.o" "polyUnite1.ip[42]";
connectAttr "|group3|pCube12|transform59|pCubeShape12.o" "polyUnite1.ip[43]";
connectAttr "|group3|pCube13|transform58|pCubeShape13.o" "polyUnite1.ip[44]";
connectAttr "|group3|pCube14|transform57|pCubeShape14.o" "polyUnite1.ip[45]";
connectAttr "|group3|pCube15|transform56|pCubeShape15.o" "polyUnite1.ip[46]";
connectAttr "|group3|pCube16|transform55|pCubeShape16.o" "polyUnite1.ip[47]";
connectAttr "|group3|pCube17|transform54|pCubeShape17.o" "polyUnite1.ip[48]";
connectAttr "|group3|pCube18|transform53|pCubeShape18.o" "polyUnite1.ip[49]";
connectAttr "|group3|pCube19|transform52|pCubeShape19.o" "polyUnite1.ip[50]";
connectAttr "|group4|pCube4|transform51|pCubeShape4.o" "polyUnite1.ip[51]";
connectAttr "|group4|pCube5|transform50|pCubeShape5.o" "polyUnite1.ip[52]";
connectAttr "|group4|pCube6|transform49|pCubeShape6.o" "polyUnite1.ip[53]";
connectAttr "|group4|pCube7|transform48|pCubeShape7.o" "polyUnite1.ip[54]";
connectAttr "|group4|pCube8|transform47|pCubeShape8.o" "polyUnite1.ip[55]";
connectAttr "|group4|pCube9|transform46|pCubeShape9.o" "polyUnite1.ip[56]";
connectAttr "|group4|pCube10|transform45|pCubeShape10.o" "polyUnite1.ip[57]";
connectAttr "|group4|pCube11|transform44|pCubeShape11.o" "polyUnite1.ip[58]";
connectAttr "|group4|pCube12|transform43|pCubeShape12.o" "polyUnite1.ip[59]";
connectAttr "|group4|pCube13|transform42|pCubeShape13.o" "polyUnite1.ip[60]";
connectAttr "|group4|pCube14|transform41|pCubeShape14.o" "polyUnite1.ip[61]";
connectAttr "|group4|pCube15|transform40|pCubeShape15.o" "polyUnite1.ip[62]";
connectAttr "|group4|pCube16|transform39|pCubeShape16.o" "polyUnite1.ip[63]";
connectAttr "|group4|pCube17|transform38|pCubeShape17.o" "polyUnite1.ip[64]";
connectAttr "|group4|pCube18|transform37|pCubeShape18.o" "polyUnite1.ip[65]";
connectAttr "|group4|pCube19|transform36|pCubeShape19.o" "polyUnite1.ip[66]";
connectAttr "pCubeShape22.o" "polyUnite1.ip[67]";
connectAttr "|group5|pCube4|transform34|pCubeShape4.o" "polyUnite1.ip[68]";
connectAttr "|group5|pCube5|transform33|pCubeShape5.o" "polyUnite1.ip[69]";
connectAttr "|group5|pCube6|transform32|pCubeShape6.o" "polyUnite1.ip[70]";
connectAttr "|group5|pCube7|transform31|pCubeShape7.o" "polyUnite1.ip[71]";
connectAttr "|group5|pCube8|transform30|pCubeShape8.o" "polyUnite1.ip[72]";
connectAttr "|group5|pCube9|transform29|pCubeShape9.o" "polyUnite1.ip[73]";
connectAttr "|group5|pCube10|transform28|pCubeShape10.o" "polyUnite1.ip[74]";
connectAttr "|group5|pCube11|transform27|pCubeShape11.o" "polyUnite1.ip[75]";
connectAttr "|group5|pCube12|transform26|pCubeShape12.o" "polyUnite1.ip[76]";
connectAttr "|group5|pCube13|transform25|pCubeShape13.o" "polyUnite1.ip[77]";
connectAttr "|group5|pCube14|transform24|pCubeShape14.o" "polyUnite1.ip[78]";
connectAttr "|group5|pCube15|transform23|pCubeShape15.o" "polyUnite1.ip[79]";
connectAttr "|group5|pCube16|transform22|pCubeShape16.o" "polyUnite1.ip[80]";
connectAttr "|group5|pCube17|transform21|pCubeShape17.o" "polyUnite1.ip[81]";
connectAttr "|group5|pCube18|transform20|pCubeShape18.o" "polyUnite1.ip[82]";
connectAttr "|group5|pCube19|transform19|pCubeShape19.o" "polyUnite1.ip[83]";
connectAttr "|group6|pCube4|transform18|pCubeShape4.o" "polyUnite1.ip[84]";
connectAttr "|group6|pCube5|transform17|pCubeShape5.o" "polyUnite1.ip[85]";
connectAttr "|group6|pCube6|transform16|pCubeShape6.o" "polyUnite1.ip[86]";
connectAttr "|group6|pCube7|transform15|pCubeShape7.o" "polyUnite1.ip[87]";
connectAttr "|group6|pCube8|transform14|pCubeShape8.o" "polyUnite1.ip[88]";
connectAttr "|group6|pCube9|transform13|pCubeShape9.o" "polyUnite1.ip[89]";
connectAttr "|group6|pCube10|transform12|pCubeShape10.o" "polyUnite1.ip[90]";
connectAttr "|group6|pCube11|transform11|pCubeShape11.o" "polyUnite1.ip[91]";
connectAttr "|group6|pCube12|transform10|pCubeShape12.o" "polyUnite1.ip[92]";
connectAttr "|group6|pCube13|transform9|pCubeShape13.o" "polyUnite1.ip[93]";
connectAttr "|group6|pCube14|transform8|pCubeShape14.o" "polyUnite1.ip[94]";
connectAttr "|group6|pCube15|transform7|pCubeShape15.o" "polyUnite1.ip[95]";
connectAttr "|group6|pCube16|transform6|pCubeShape16.o" "polyUnite1.ip[96]";
connectAttr "|group6|pCube17|transform5|pCubeShape17.o" "polyUnite1.ip[97]";
connectAttr "|group6|pCube18|transform4|pCubeShape18.o" "polyUnite1.ip[98]";
connectAttr "|group6|pCube19|transform3|pCubeShape19.o" "polyUnite1.ip[99]";
connectAttr "pCubeShape20.o" "polyUnite1.ip[100]";
connectAttr "pCubeShape21.o" "polyUnite1.ip[101]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "|group1|pCube4|transform99|pCubeShape4.wm" "polyUnite1.im[3]";
connectAttr "|group1|pCube5|transform98|pCubeShape5.wm" "polyUnite1.im[4]";
connectAttr "|group1|pCube6|transform97|pCubeShape6.wm" "polyUnite1.im[5]";
connectAttr "|group1|pCube7|transform96|pCubeShape7.wm" "polyUnite1.im[6]";
connectAttr "|group1|pCube8|transform95|pCubeShape8.wm" "polyUnite1.im[7]";
connectAttr "|group1|pCube9|transform94|pCubeShape9.wm" "polyUnite1.im[8]";
connectAttr "|group1|pCube10|transform93|pCubeShape10.wm" "polyUnite1.im[9]";
connectAttr "|group1|pCube11|transform92|pCubeShape11.wm" "polyUnite1.im[10]";
connectAttr "|group1|pCube12|transform91|pCubeShape12.wm" "polyUnite1.im[11]";
connectAttr "|group1|pCube13|transform90|pCubeShape13.wm" "polyUnite1.im[12]";
connectAttr "|group1|pCube14|transform89|pCubeShape14.wm" "polyUnite1.im[13]";
connectAttr "|group1|pCube15|transform88|pCubeShape15.wm" "polyUnite1.im[14]";
connectAttr "|group1|pCube16|transform87|pCubeShape16.wm" "polyUnite1.im[15]";
connectAttr "|group1|pCube17|transform86|pCubeShape17.wm" "polyUnite1.im[16]";
connectAttr "|group1|pCube18|transform85|pCubeShape18.wm" "polyUnite1.im[17]";
connectAttr "|group1|pCube19|transform84|pCubeShape19.wm" "polyUnite1.im[18]";
connectAttr "|group2|pCube4|transform83|pCubeShape4.wm" "polyUnite1.im[19]";
connectAttr "|group2|pCube5|transform82|pCubeShape5.wm" "polyUnite1.im[20]";
connectAttr "|group2|pCube6|transform81|pCubeShape6.wm" "polyUnite1.im[21]";
connectAttr "|group2|pCube7|transform80|pCubeShape7.wm" "polyUnite1.im[22]";
connectAttr "|group2|pCube8|transform79|pCubeShape8.wm" "polyUnite1.im[23]";
connectAttr "|group2|pCube9|transform78|pCubeShape9.wm" "polyUnite1.im[24]";
connectAttr "|group2|pCube10|transform77|pCubeShape10.wm" "polyUnite1.im[25]";
connectAttr "|group2|pCube11|transform76|pCubeShape11.wm" "polyUnite1.im[26]";
connectAttr "|group2|pCube12|transform75|pCubeShape12.wm" "polyUnite1.im[27]";
connectAttr "|group2|pCube13|transform74|pCubeShape13.wm" "polyUnite1.im[28]";
connectAttr "|group2|pCube14|transform73|pCubeShape14.wm" "polyUnite1.im[29]";
connectAttr "|group2|pCube15|transform72|pCubeShape15.wm" "polyUnite1.im[30]";
connectAttr "|group2|pCube16|transform71|pCubeShape16.wm" "polyUnite1.im[31]";
connectAttr "|group2|pCube17|transform70|pCubeShape17.wm" "polyUnite1.im[32]";
connectAttr "|group2|pCube18|transform69|pCubeShape18.wm" "polyUnite1.im[33]";
connectAttr "|group2|pCube19|transform68|pCubeShape19.wm" "polyUnite1.im[34]";
connectAttr "|group3|pCube4|transform67|pCubeShape4.wm" "polyUnite1.im[35]";
connectAttr "|group3|pCube5|transform66|pCubeShape5.wm" "polyUnite1.im[36]";
connectAttr "|group3|pCube6|transform65|pCubeShape6.wm" "polyUnite1.im[37]";
connectAttr "|group3|pCube7|transform64|pCubeShape7.wm" "polyUnite1.im[38]";
connectAttr "|group3|pCube8|transform63|pCubeShape8.wm" "polyUnite1.im[39]";
connectAttr "|group3|pCube9|transform62|pCubeShape9.wm" "polyUnite1.im[40]";
connectAttr "|group3|pCube10|transform61|pCubeShape10.wm" "polyUnite1.im[41]";
connectAttr "|group3|pCube11|transform60|pCubeShape11.wm" "polyUnite1.im[42]";
connectAttr "|group3|pCube12|transform59|pCubeShape12.wm" "polyUnite1.im[43]";
connectAttr "|group3|pCube13|transform58|pCubeShape13.wm" "polyUnite1.im[44]";
connectAttr "|group3|pCube14|transform57|pCubeShape14.wm" "polyUnite1.im[45]";
connectAttr "|group3|pCube15|transform56|pCubeShape15.wm" "polyUnite1.im[46]";
connectAttr "|group3|pCube16|transform55|pCubeShape16.wm" "polyUnite1.im[47]";
connectAttr "|group3|pCube17|transform54|pCubeShape17.wm" "polyUnite1.im[48]";
connectAttr "|group3|pCube18|transform53|pCubeShape18.wm" "polyUnite1.im[49]";
connectAttr "|group3|pCube19|transform52|pCubeShape19.wm" "polyUnite1.im[50]";
connectAttr "|group4|pCube4|transform51|pCubeShape4.wm" "polyUnite1.im[51]";
connectAttr "|group4|pCube5|transform50|pCubeShape5.wm" "polyUnite1.im[52]";
connectAttr "|group4|pCube6|transform49|pCubeShape6.wm" "polyUnite1.im[53]";
connectAttr "|group4|pCube7|transform48|pCubeShape7.wm" "polyUnite1.im[54]";
connectAttr "|group4|pCube8|transform47|pCubeShape8.wm" "polyUnite1.im[55]";
connectAttr "|group4|pCube9|transform46|pCubeShape9.wm" "polyUnite1.im[56]";
connectAttr "|group4|pCube10|transform45|pCubeShape10.wm" "polyUnite1.im[57]";
connectAttr "|group4|pCube11|transform44|pCubeShape11.wm" "polyUnite1.im[58]";
connectAttr "|group4|pCube12|transform43|pCubeShape12.wm" "polyUnite1.im[59]";
connectAttr "|group4|pCube13|transform42|pCubeShape13.wm" "polyUnite1.im[60]";
connectAttr "|group4|pCube14|transform41|pCubeShape14.wm" "polyUnite1.im[61]";
connectAttr "|group4|pCube15|transform40|pCubeShape15.wm" "polyUnite1.im[62]";
connectAttr "|group4|pCube16|transform39|pCubeShape16.wm" "polyUnite1.im[63]";
connectAttr "|group4|pCube17|transform38|pCubeShape17.wm" "polyUnite1.im[64]";
connectAttr "|group4|pCube18|transform37|pCubeShape18.wm" "polyUnite1.im[65]";
connectAttr "|group4|pCube19|transform36|pCubeShape19.wm" "polyUnite1.im[66]";
connectAttr "pCubeShape22.wm" "polyUnite1.im[67]";
connectAttr "|group5|pCube4|transform34|pCubeShape4.wm" "polyUnite1.im[68]";
connectAttr "|group5|pCube5|transform33|pCubeShape5.wm" "polyUnite1.im[69]";
connectAttr "|group5|pCube6|transform32|pCubeShape6.wm" "polyUnite1.im[70]";
connectAttr "|group5|pCube7|transform31|pCubeShape7.wm" "polyUnite1.im[71]";
connectAttr "|group5|pCube8|transform30|pCubeShape8.wm" "polyUnite1.im[72]";
connectAttr "|group5|pCube9|transform29|pCubeShape9.wm" "polyUnite1.im[73]";
connectAttr "|group5|pCube10|transform28|pCubeShape10.wm" "polyUnite1.im[74]";
connectAttr "|group5|pCube11|transform27|pCubeShape11.wm" "polyUnite1.im[75]";
connectAttr "|group5|pCube12|transform26|pCubeShape12.wm" "polyUnite1.im[76]";
connectAttr "|group5|pCube13|transform25|pCubeShape13.wm" "polyUnite1.im[77]";
connectAttr "|group5|pCube14|transform24|pCubeShape14.wm" "polyUnite1.im[78]";
connectAttr "|group5|pCube15|transform23|pCubeShape15.wm" "polyUnite1.im[79]";
connectAttr "|group5|pCube16|transform22|pCubeShape16.wm" "polyUnite1.im[80]";
connectAttr "|group5|pCube17|transform21|pCubeShape17.wm" "polyUnite1.im[81]";
connectAttr "|group5|pCube18|transform20|pCubeShape18.wm" "polyUnite1.im[82]";
connectAttr "|group5|pCube19|transform19|pCubeShape19.wm" "polyUnite1.im[83]";
connectAttr "|group6|pCube4|transform18|pCubeShape4.wm" "polyUnite1.im[84]";
connectAttr "|group6|pCube5|transform17|pCubeShape5.wm" "polyUnite1.im[85]";
connectAttr "|group6|pCube6|transform16|pCubeShape6.wm" "polyUnite1.im[86]";
connectAttr "|group6|pCube7|transform15|pCubeShape7.wm" "polyUnite1.im[87]";
connectAttr "|group6|pCube8|transform14|pCubeShape8.wm" "polyUnite1.im[88]";
connectAttr "|group6|pCube9|transform13|pCubeShape9.wm" "polyUnite1.im[89]";
connectAttr "|group6|pCube10|transform12|pCubeShape10.wm" "polyUnite1.im[90]";
connectAttr "|group6|pCube11|transform11|pCubeShape11.wm" "polyUnite1.im[91]";
connectAttr "|group6|pCube12|transform10|pCubeShape12.wm" "polyUnite1.im[92]";
connectAttr "|group6|pCube13|transform9|pCubeShape13.wm" "polyUnite1.im[93]";
connectAttr "|group6|pCube14|transform8|pCubeShape14.wm" "polyUnite1.im[94]";
connectAttr "|group6|pCube15|transform7|pCubeShape15.wm" "polyUnite1.im[95]";
connectAttr "|group6|pCube16|transform6|pCubeShape16.wm" "polyUnite1.im[96]";
connectAttr "|group6|pCube17|transform5|pCubeShape17.wm" "polyUnite1.im[97]";
connectAttr "|group6|pCube18|transform4|pCubeShape18.wm" "polyUnite1.im[98]";
connectAttr "|group6|pCube19|transform3|pCubeShape19.wm" "polyUnite1.im[99]";
connectAttr "pCubeShape20.wm" "polyUnite1.im[100]";
connectAttr "pCubeShape21.wm" "polyUnite1.im[101]";
connectAttr "polyCube1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyCube3.out" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "polyUnite1.out" "polyPlanarProj1.ip";
connectAttr "polySurfaceShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "polySurfaceShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV1.ip";
connectAttr "file1.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "polySurfaceShape102.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape101.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape100.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape99.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape98.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape97.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape96.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape95.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape94.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape93.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape92.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape91.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape90.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape89.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape88.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape87.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape86.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape85.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape84.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape83.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape82.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape81.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape80.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape79.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape78.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape77.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape76.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape75.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape74.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape73.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape72.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape71.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape70.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape69.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape68.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape67.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape66.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape65.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape64.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape63.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape62.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape61.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape60.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape59.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape58.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape57.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape56.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape55.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape54.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape53.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape52.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape51.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape50.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape49.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape48.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape47.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape46.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape45.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape44.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape43.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape42.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape41.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape40.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape39.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape38.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape37.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape36.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape35.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape34.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape33.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape32.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape31.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape30.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape29.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape28.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape27.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape26.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape25.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape24.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape23.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape22.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape21.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape20.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape19.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape18.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape17.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape16.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape15.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape14.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape13.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape12.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape11.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape10.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape9.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape8.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape7.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape6.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape5.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape4.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape3.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape2.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "psdFileTex1.oc" "blinn2.c";
connectAttr "psdFileTex1.ot" "blinn2.it";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "polySurfaceShape1.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "polySurfaceShape1.ciog.cog[0]" "blinn2SG.dsm" -na;
connectAttr "groupId205.msg" "blinn2SG.gn" -na;
connectAttr "groupId206.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "psdFileTex1.msg" "materialInfo2.t" -na;
connectAttr "polyTweakUV1.out" "polyTweakUV2.ip";
connectAttr "place2dTexture2.c" "psdFileTex1.c";
connectAttr "place2dTexture2.tf" "psdFileTex1.tf";
connectAttr "place2dTexture2.rf" "psdFileTex1.rf";
connectAttr "place2dTexture2.mu" "psdFileTex1.mu";
connectAttr "place2dTexture2.mv" "psdFileTex1.mv";
connectAttr "place2dTexture2.s" "psdFileTex1.s";
connectAttr "place2dTexture2.wu" "psdFileTex1.wu";
connectAttr "place2dTexture2.wv" "psdFileTex1.wv";
connectAttr "place2dTexture2.re" "psdFileTex1.re";
connectAttr "place2dTexture2.of" "psdFileTex1.of";
connectAttr "place2dTexture2.r" "psdFileTex1.ro";
connectAttr "place2dTexture2.n" "psdFileTex1.n";
connectAttr "place2dTexture2.vt1" "psdFileTex1.vt1";
connectAttr "place2dTexture2.vt2" "psdFileTex1.vt2";
connectAttr "place2dTexture2.vt3" "psdFileTex1.vt3";
connectAttr "place2dTexture2.vc1" "psdFileTex1.vc1";
connectAttr "place2dTexture2.o" "psdFileTex1.uv";
connectAttr "place2dTexture2.ofs" "psdFileTex1.fs";
connectAttr "polySurfaceShape1.o" "polySeparate1.ip";
connectAttr "polyTweakUV2.out" "groupParts4.ig";
connectAttr "groupId205.id" "groupParts4.gi";
connectAttr "polySeparate1.out[3]" "polyPlanarProj3.ip";
connectAttr "polySurfaceShape5.wm" "polyPlanarProj3.mp";
connectAttr "polySeparate1.out[4]" "polyPlanarProj4.ip";
connectAttr "polySurfaceShape6.wm" "polyPlanarProj4.mp";
connectAttr "polySeparate1.out[5]" "polyPlanarProj5.ip";
connectAttr "polySurfaceShape7.wm" "polyPlanarProj5.mp";
connectAttr "polySeparate1.out[6]" "polyPlanarProj6.ip";
connectAttr "polySurfaceShape8.wm" "polyPlanarProj6.mp";
connectAttr "polySeparate1.out[7]" "polyPlanarProj7.ip";
connectAttr "polySurfaceShape9.wm" "polyPlanarProj7.mp";
connectAttr "polySeparate1.out[8]" "polyPlanarProj8.ip";
connectAttr "polySurfaceShape10.wm" "polyPlanarProj8.mp";
connectAttr "polySeparate1.out[9]" "polyPlanarProj9.ip";
connectAttr "polySurfaceShape11.wm" "polyPlanarProj9.mp";
connectAttr "polySeparate1.out[10]" "polyPlanarProj10.ip";
connectAttr "polySurfaceShape12.wm" "polyPlanarProj10.mp";
connectAttr "polySeparate1.out[11]" "polyPlanarProj11.ip";
connectAttr "polySurfaceShape13.wm" "polyPlanarProj11.mp";
connectAttr "polySeparate1.out[12]" "polyPlanarProj12.ip";
connectAttr "polySurfaceShape14.wm" "polyPlanarProj12.mp";
connectAttr "polySeparate1.out[13]" "polyPlanarProj13.ip";
connectAttr "polySurfaceShape15.wm" "polyPlanarProj13.mp";
connectAttr "polySeparate1.out[14]" "polyPlanarProj14.ip";
connectAttr "polySurfaceShape16.wm" "polyPlanarProj14.mp";
connectAttr "polySeparate1.out[15]" "polyPlanarProj15.ip";
connectAttr "polySurfaceShape17.wm" "polyPlanarProj15.mp";
connectAttr "polySeparate1.out[16]" "polyPlanarProj16.ip";
connectAttr "polySurfaceShape18.wm" "polyPlanarProj16.mp";
connectAttr "polySeparate1.out[17]" "polyPlanarProj17.ip";
connectAttr "polySurfaceShape19.wm" "polyPlanarProj17.mp";
connectAttr "polySeparate1.out[18]" "polyPlanarProj18.ip";
connectAttr "polySurfaceShape20.wm" "polyPlanarProj18.mp";
connectAttr "polySeparate1.out[19]" "polyPlanarProj19.ip";
connectAttr "polySurfaceShape21.wm" "polyPlanarProj19.mp";
connectAttr "polySeparate1.out[20]" "polyPlanarProj20.ip";
connectAttr "polySurfaceShape22.wm" "polyPlanarProj20.mp";
connectAttr "polySeparate1.out[21]" "polyPlanarProj21.ip";
connectAttr "polySurfaceShape23.wm" "polyPlanarProj21.mp";
connectAttr "polySeparate1.out[22]" "polyPlanarProj22.ip";
connectAttr "polySurfaceShape24.wm" "polyPlanarProj22.mp";
connectAttr "polySeparate1.out[23]" "polyPlanarProj23.ip";
connectAttr "polySurfaceShape25.wm" "polyPlanarProj23.mp";
connectAttr "polySeparate1.out[24]" "polyPlanarProj24.ip";
connectAttr "polySurfaceShape26.wm" "polyPlanarProj24.mp";
connectAttr "polySeparate1.out[25]" "polyPlanarProj25.ip";
connectAttr "polySurfaceShape27.wm" "polyPlanarProj25.mp";
connectAttr "polySeparate1.out[26]" "polyPlanarProj26.ip";
connectAttr "polySurfaceShape28.wm" "polyPlanarProj26.mp";
connectAttr "polySeparate1.out[27]" "polyPlanarProj27.ip";
connectAttr "polySurfaceShape29.wm" "polyPlanarProj27.mp";
connectAttr "polySeparate1.out[28]" "polyPlanarProj28.ip";
connectAttr "polySurfaceShape30.wm" "polyPlanarProj28.mp";
connectAttr "polySeparate1.out[29]" "polyPlanarProj29.ip";
connectAttr "polySurfaceShape31.wm" "polyPlanarProj29.mp";
connectAttr "polySeparate1.out[30]" "polyPlanarProj30.ip";
connectAttr "polySurfaceShape32.wm" "polyPlanarProj30.mp";
connectAttr "polySeparate1.out[31]" "polyPlanarProj31.ip";
connectAttr "polySurfaceShape33.wm" "polyPlanarProj31.mp";
connectAttr "polySeparate1.out[32]" "polyPlanarProj32.ip";
connectAttr "polySurfaceShape34.wm" "polyPlanarProj32.mp";
connectAttr "polySeparate1.out[33]" "polyPlanarProj33.ip";
connectAttr "polySurfaceShape35.wm" "polyPlanarProj33.mp";
connectAttr "polySeparate1.out[34]" "polyPlanarProj34.ip";
connectAttr "polySurfaceShape36.wm" "polyPlanarProj34.mp";
connectAttr "polySeparate1.out[35]" "polyPlanarProj35.ip";
connectAttr "polySurfaceShape37.wm" "polyPlanarProj35.mp";
connectAttr "polySeparate1.out[36]" "polyPlanarProj36.ip";
connectAttr "polySurfaceShape38.wm" "polyPlanarProj36.mp";
connectAttr "polySeparate1.out[37]" "polyPlanarProj37.ip";
connectAttr "polySurfaceShape39.wm" "polyPlanarProj37.mp";
connectAttr "polySeparate1.out[38]" "polyPlanarProj38.ip";
connectAttr "polySurfaceShape40.wm" "polyPlanarProj38.mp";
connectAttr "polySeparate1.out[39]" "polyPlanarProj39.ip";
connectAttr "polySurfaceShape41.wm" "polyPlanarProj39.mp";
connectAttr "polySeparate1.out[40]" "polyPlanarProj40.ip";
connectAttr "polySurfaceShape42.wm" "polyPlanarProj40.mp";
connectAttr "polySeparate1.out[41]" "polyPlanarProj41.ip";
connectAttr "polySurfaceShape43.wm" "polyPlanarProj41.mp";
connectAttr "polySeparate1.out[42]" "polyPlanarProj42.ip";
connectAttr "polySurfaceShape44.wm" "polyPlanarProj42.mp";
connectAttr "polySeparate1.out[43]" "polyPlanarProj43.ip";
connectAttr "polySurfaceShape45.wm" "polyPlanarProj43.mp";
connectAttr "polySeparate1.out[44]" "polyPlanarProj44.ip";
connectAttr "polySurfaceShape46.wm" "polyPlanarProj44.mp";
connectAttr "polySeparate1.out[45]" "polyPlanarProj45.ip";
connectAttr "polySurfaceShape47.wm" "polyPlanarProj45.mp";
connectAttr "polySeparate1.out[46]" "polyPlanarProj46.ip";
connectAttr "polySurfaceShape48.wm" "polyPlanarProj46.mp";
connectAttr "polySeparate1.out[47]" "polyPlanarProj47.ip";
connectAttr "polySurfaceShape49.wm" "polyPlanarProj47.mp";
connectAttr "polySeparate1.out[48]" "polyPlanarProj48.ip";
connectAttr "polySurfaceShape50.wm" "polyPlanarProj48.mp";
connectAttr "polySeparate1.out[49]" "polyPlanarProj49.ip";
connectAttr "polySurfaceShape51.wm" "polyPlanarProj49.mp";
connectAttr "polySeparate1.out[50]" "polyPlanarProj50.ip";
connectAttr "polySurfaceShape52.wm" "polyPlanarProj50.mp";
connectAttr "polySeparate1.out[51]" "polyPlanarProj51.ip";
connectAttr "polySurfaceShape53.wm" "polyPlanarProj51.mp";
connectAttr "polySeparate1.out[52]" "polyPlanarProj52.ip";
connectAttr "polySurfaceShape54.wm" "polyPlanarProj52.mp";
connectAttr "polySeparate1.out[53]" "polyPlanarProj53.ip";
connectAttr "polySurfaceShape55.wm" "polyPlanarProj53.mp";
connectAttr "polySeparate1.out[54]" "polyPlanarProj54.ip";
connectAttr "polySurfaceShape56.wm" "polyPlanarProj54.mp";
connectAttr "polySeparate1.out[55]" "polyPlanarProj55.ip";
connectAttr "polySurfaceShape57.wm" "polyPlanarProj55.mp";
connectAttr "polySeparate1.out[56]" "polyPlanarProj56.ip";
connectAttr "polySurfaceShape58.wm" "polyPlanarProj56.mp";
connectAttr "polySeparate1.out[57]" "polyPlanarProj57.ip";
connectAttr "polySurfaceShape59.wm" "polyPlanarProj57.mp";
connectAttr "polySeparate1.out[58]" "polyPlanarProj58.ip";
connectAttr "polySurfaceShape60.wm" "polyPlanarProj58.mp";
connectAttr "polySeparate1.out[59]" "polyPlanarProj59.ip";
connectAttr "polySurfaceShape61.wm" "polyPlanarProj59.mp";
connectAttr "polySeparate1.out[60]" "polyPlanarProj60.ip";
connectAttr "polySurfaceShape62.wm" "polyPlanarProj60.mp";
connectAttr "polySeparate1.out[61]" "polyPlanarProj61.ip";
connectAttr "polySurfaceShape63.wm" "polyPlanarProj61.mp";
connectAttr "polySeparate1.out[62]" "polyPlanarProj62.ip";
connectAttr "polySurfaceShape64.wm" "polyPlanarProj62.mp";
connectAttr "polySeparate1.out[63]" "polyPlanarProj63.ip";
connectAttr "polySurfaceShape65.wm" "polyPlanarProj63.mp";
connectAttr "polySeparate1.out[64]" "polyPlanarProj64.ip";
connectAttr "polySurfaceShape66.wm" "polyPlanarProj64.mp";
connectAttr "polySeparate1.out[65]" "polyPlanarProj65.ip";
connectAttr "polySurfaceShape67.wm" "polyPlanarProj65.mp";
connectAttr "polySeparate1.out[66]" "polyPlanarProj66.ip";
connectAttr "polySurfaceShape68.wm" "polyPlanarProj66.mp";
connectAttr "polySeparate1.out[67]" "polyPlanarProj67.ip";
connectAttr "polySurfaceShape69.wm" "polyPlanarProj67.mp";
connectAttr "polySeparate1.out[68]" "polyPlanarProj68.ip";
connectAttr "polySurfaceShape70.wm" "polyPlanarProj68.mp";
connectAttr "polySeparate1.out[69]" "polyPlanarProj69.ip";
connectAttr "polySurfaceShape71.wm" "polyPlanarProj69.mp";
connectAttr "polySeparate1.out[70]" "polyPlanarProj70.ip";
connectAttr "polySurfaceShape72.wm" "polyPlanarProj70.mp";
connectAttr "polySeparate1.out[71]" "polyPlanarProj71.ip";
connectAttr "polySurfaceShape73.wm" "polyPlanarProj71.mp";
connectAttr "polySeparate1.out[72]" "polyPlanarProj72.ip";
connectAttr "polySurfaceShape74.wm" "polyPlanarProj72.mp";
connectAttr "polySeparate1.out[73]" "polyPlanarProj73.ip";
connectAttr "polySurfaceShape75.wm" "polyPlanarProj73.mp";
connectAttr "polySeparate1.out[74]" "polyPlanarProj74.ip";
connectAttr "polySurfaceShape76.wm" "polyPlanarProj74.mp";
connectAttr "polySeparate1.out[75]" "polyPlanarProj75.ip";
connectAttr "polySurfaceShape77.wm" "polyPlanarProj75.mp";
connectAttr "polySeparate1.out[76]" "polyPlanarProj76.ip";
connectAttr "polySurfaceShape78.wm" "polyPlanarProj76.mp";
connectAttr "polySeparate1.out[77]" "polyPlanarProj77.ip";
connectAttr "polySurfaceShape79.wm" "polyPlanarProj77.mp";
connectAttr "polySeparate1.out[78]" "polyPlanarProj78.ip";
connectAttr "polySurfaceShape80.wm" "polyPlanarProj78.mp";
connectAttr "polySeparate1.out[79]" "polyPlanarProj79.ip";
connectAttr "polySurfaceShape81.wm" "polyPlanarProj79.mp";
connectAttr "polySeparate1.out[80]" "polyPlanarProj80.ip";
connectAttr "polySurfaceShape82.wm" "polyPlanarProj80.mp";
connectAttr "polySeparate1.out[81]" "polyPlanarProj81.ip";
connectAttr "polySurfaceShape83.wm" "polyPlanarProj81.mp";
connectAttr "polySeparate1.out[82]" "polyPlanarProj82.ip";
connectAttr "polySurfaceShape84.wm" "polyPlanarProj82.mp";
connectAttr "polySeparate1.out[83]" "polyPlanarProj83.ip";
connectAttr "polySurfaceShape85.wm" "polyPlanarProj83.mp";
connectAttr "polySeparate1.out[84]" "polyPlanarProj84.ip";
connectAttr "polySurfaceShape86.wm" "polyPlanarProj84.mp";
connectAttr "polySeparate1.out[85]" "polyPlanarProj85.ip";
connectAttr "polySurfaceShape87.wm" "polyPlanarProj85.mp";
connectAttr "polySeparate1.out[86]" "polyPlanarProj86.ip";
connectAttr "polySurfaceShape88.wm" "polyPlanarProj86.mp";
connectAttr "polySeparate1.out[87]" "polyPlanarProj87.ip";
connectAttr "polySurfaceShape89.wm" "polyPlanarProj87.mp";
connectAttr "polySeparate1.out[88]" "polyPlanarProj88.ip";
connectAttr "polySurfaceShape90.wm" "polyPlanarProj88.mp";
connectAttr "polySeparate1.out[89]" "polyPlanarProj89.ip";
connectAttr "polySurfaceShape91.wm" "polyPlanarProj89.mp";
connectAttr "polySeparate1.out[90]" "polyPlanarProj90.ip";
connectAttr "polySurfaceShape92.wm" "polyPlanarProj90.mp";
connectAttr "polySeparate1.out[91]" "polyPlanarProj91.ip";
connectAttr "polySurfaceShape93.wm" "polyPlanarProj91.mp";
connectAttr "polySeparate1.out[92]" "polyPlanarProj92.ip";
connectAttr "polySurfaceShape94.wm" "polyPlanarProj92.mp";
connectAttr "polySeparate1.out[93]" "polyPlanarProj93.ip";
connectAttr "polySurfaceShape95.wm" "polyPlanarProj93.mp";
connectAttr "polySeparate1.out[94]" "polyPlanarProj94.ip";
connectAttr "polySurfaceShape96.wm" "polyPlanarProj94.mp";
connectAttr "polySeparate1.out[95]" "polyPlanarProj95.ip";
connectAttr "polySurfaceShape97.wm" "polyPlanarProj95.mp";
connectAttr "polySeparate1.out[96]" "polyPlanarProj96.ip";
connectAttr "polySurfaceShape98.wm" "polyPlanarProj96.mp";
connectAttr "polySeparate1.out[97]" "polyPlanarProj97.ip";
connectAttr "polySurfaceShape99.wm" "polyPlanarProj97.mp";
connectAttr "polySeparate1.out[98]" "polyPlanarProj98.ip";
connectAttr "polySurfaceShape100.wm" "polyPlanarProj98.mp";
connectAttr "polySeparate1.out[99]" "polyPlanarProj99.ip";
connectAttr "polySurfaceShape101.wm" "polyPlanarProj99.mp";
connectAttr "polySeparate1.out[100]" "polyPlanarProj100.ip";
connectAttr "polySurfaceShape102.wm" "polyPlanarProj100.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "polyPlanarProj4.out" "polyTweakUV4.ip";
connectAttr "polyPlanarProj5.out" "polyTweakUV5.ip";
connectAttr "polyPlanarProj6.out" "polyTweakUV6.ip";
connectAttr "polyPlanarProj7.out" "polyTweakUV7.ip";
connectAttr "polyPlanarProj8.out" "polyTweakUV8.ip";
connectAttr "polyPlanarProj9.out" "polyTweakUV9.ip";
connectAttr "polyPlanarProj10.out" "polyTweakUV10.ip";
connectAttr "polyPlanarProj11.out" "polyTweakUV11.ip";
connectAttr "polyPlanarProj12.out" "polyTweakUV12.ip";
connectAttr "polyPlanarProj13.out" "polyTweakUV13.ip";
connectAttr "polyPlanarProj14.out" "polyTweakUV14.ip";
connectAttr "polyPlanarProj15.out" "polyTweakUV15.ip";
connectAttr "polyPlanarProj16.out" "polyTweakUV16.ip";
connectAttr "polyPlanarProj17.out" "polyTweakUV17.ip";
connectAttr "polyPlanarProj18.out" "polyTweakUV18.ip";
connectAttr "polyPlanarProj19.out" "polyTweakUV19.ip";
connectAttr "polyPlanarProj20.out" "polyTweakUV20.ip";
connectAttr "polyPlanarProj21.out" "polyTweakUV21.ip";
connectAttr "polyPlanarProj22.out" "polyTweakUV22.ip";
connectAttr "polyPlanarProj23.out" "polyTweakUV23.ip";
connectAttr "polyPlanarProj24.out" "polyTweakUV24.ip";
connectAttr "polyPlanarProj25.out" "polyTweakUV25.ip";
connectAttr "polyPlanarProj26.out" "polyTweakUV26.ip";
connectAttr "polyPlanarProj27.out" "polyTweakUV27.ip";
connectAttr "polyPlanarProj28.out" "polyTweakUV28.ip";
connectAttr "polyPlanarProj29.out" "polyTweakUV29.ip";
connectAttr "polyPlanarProj30.out" "polyTweakUV30.ip";
connectAttr "polyPlanarProj31.out" "polyTweakUV31.ip";
connectAttr "polyPlanarProj32.out" "polyTweakUV32.ip";
connectAttr "polyPlanarProj33.out" "polyTweakUV33.ip";
connectAttr "polyPlanarProj34.out" "polyTweakUV34.ip";
connectAttr "polyPlanarProj35.out" "polyTweakUV35.ip";
connectAttr "polyPlanarProj36.out" "polyTweakUV36.ip";
connectAttr "polyPlanarProj37.out" "polyTweakUV37.ip";
connectAttr "polyPlanarProj38.out" "polyTweakUV38.ip";
connectAttr "polyPlanarProj39.out" "polyTweakUV39.ip";
connectAttr "polyPlanarProj40.out" "polyTweakUV40.ip";
connectAttr "polyPlanarProj41.out" "polyTweakUV41.ip";
connectAttr "polyPlanarProj42.out" "polyTweakUV42.ip";
connectAttr "polyPlanarProj43.out" "polyTweakUV43.ip";
connectAttr "polyPlanarProj44.out" "polyTweakUV44.ip";
connectAttr "polyPlanarProj45.out" "polyTweakUV45.ip";
connectAttr "polyPlanarProj46.out" "polyTweakUV46.ip";
connectAttr "polyPlanarProj47.out" "polyTweakUV47.ip";
connectAttr "polyPlanarProj48.out" "polyTweakUV48.ip";
connectAttr "polyPlanarProj49.out" "polyTweakUV49.ip";
connectAttr "polyPlanarProj50.out" "polyTweakUV50.ip";
connectAttr "polyPlanarProj51.out" "polyTweakUV51.ip";
connectAttr "polyPlanarProj52.out" "polyTweakUV52.ip";
connectAttr "polyPlanarProj53.out" "polyTweakUV53.ip";
connectAttr "polyPlanarProj54.out" "polyTweakUV54.ip";
connectAttr "polyPlanarProj55.out" "polyTweakUV55.ip";
connectAttr "polyPlanarProj56.out" "polyTweakUV56.ip";
connectAttr "polyPlanarProj57.out" "polyTweakUV57.ip";
connectAttr "polyPlanarProj58.out" "polyTweakUV58.ip";
connectAttr "polyPlanarProj59.out" "polyTweakUV59.ip";
connectAttr "polyPlanarProj60.out" "polyTweakUV60.ip";
connectAttr "polyPlanarProj61.out" "polyTweakUV61.ip";
connectAttr "polyPlanarProj62.out" "polyTweakUV62.ip";
connectAttr "polyPlanarProj63.out" "polyTweakUV63.ip";
connectAttr "polyPlanarProj64.out" "polyTweakUV64.ip";
connectAttr "polyPlanarProj65.out" "polyTweakUV65.ip";
connectAttr "polyPlanarProj66.out" "polyTweakUV66.ip";
connectAttr "polyPlanarProj67.out" "polyTweakUV67.ip";
connectAttr "polyPlanarProj68.out" "polyTweakUV68.ip";
connectAttr "polyPlanarProj69.out" "polyTweakUV69.ip";
connectAttr "polyPlanarProj70.out" "polyTweakUV70.ip";
connectAttr "polyPlanarProj71.out" "polyTweakUV71.ip";
connectAttr "polyPlanarProj72.out" "polyTweakUV72.ip";
connectAttr "polyPlanarProj73.out" "polyTweakUV73.ip";
connectAttr "polyPlanarProj74.out" "polyTweakUV74.ip";
connectAttr "polyPlanarProj75.out" "polyTweakUV75.ip";
connectAttr "polyPlanarProj76.out" "polyTweakUV76.ip";
connectAttr "polyPlanarProj77.out" "polyTweakUV77.ip";
connectAttr "polyPlanarProj78.out" "polyTweakUV78.ip";
connectAttr "polyPlanarProj79.out" "polyTweakUV79.ip";
connectAttr "polyPlanarProj80.out" "polyTweakUV80.ip";
connectAttr "polyPlanarProj81.out" "polyTweakUV81.ip";
connectAttr "polyPlanarProj82.out" "polyTweakUV82.ip";
connectAttr "polyPlanarProj83.out" "polyTweakUV83.ip";
connectAttr "polyPlanarProj84.out" "polyTweakUV84.ip";
connectAttr "polyPlanarProj85.out" "polyTweakUV85.ip";
connectAttr "polyPlanarProj86.out" "polyTweakUV86.ip";
connectAttr "polyPlanarProj87.out" "polyTweakUV87.ip";
connectAttr "polyPlanarProj88.out" "polyTweakUV88.ip";
connectAttr "polyPlanarProj89.out" "polyTweakUV89.ip";
connectAttr "polyPlanarProj90.out" "polyTweakUV90.ip";
connectAttr "polyPlanarProj91.out" "polyTweakUV91.ip";
connectAttr "polyPlanarProj92.out" "polyTweakUV92.ip";
connectAttr "polyPlanarProj93.out" "polyTweakUV93.ip";
connectAttr "polyPlanarProj94.out" "polyTweakUV94.ip";
connectAttr "polyPlanarProj95.out" "polyTweakUV95.ip";
connectAttr "polyPlanarProj96.out" "polyTweakUV96.ip";
connectAttr "polyPlanarProj97.out" "polyTweakUV97.ip";
connectAttr "polyPlanarProj98.out" "polyTweakUV98.ip";
connectAttr "polyPlanarProj99.out" "polyTweakUV99.ip";
connectAttr "polyPlanarProj100.out" "polyTweakUV100.ip";
connectAttr "polyTweak1.out" "polyPlanarProj101.ip";
connectAttr "polySurfaceShape4.wm" "polyPlanarProj101.mp";
connectAttr "polySeparate1.out[2]" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyPlanarProj102.ip";
connectAttr "polySurfaceShape2.wm" "polyPlanarProj102.mp";
connectAttr "polySeparate1.out[0]" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyPlanarProj103.ip";
connectAttr "polySurfaceShape3.wm" "polyPlanarProj103.mp";
connectAttr "polySeparate1.out[1]" "polyTweak3.ip";
connectAttr "polyPlanarProj102.out" "polyPlanarProj104.ip";
connectAttr "polySurfaceShape2.wm" "polyPlanarProj104.mp";
connectAttr "polyPlanarProj104.out" "polyTweakUV101.ip";
connectAttr "polyPlanarProj103.out" "polyTweakUV102.ip";
connectAttr "groupParts106.og" "transferAttributes1.ip[0].ig";
connectAttr "groupId308.id" "transferAttributes1.ip[0].gi";
connectAttr "polySurfaceShape69.w" "transferAttributes1.src[0]";
connectAttr "groupParts107.og" "tweak1.ip[0].ig";
connectAttr "groupId309.id" "tweak1.ip[0].gi";
connectAttr "groupId308.msg" "set1.gn" -na;
connectAttr "polySurfaceShape55.iog.og[1]" "set1.dsm" -na;
connectAttr "transferAttributes1.msg" "set1.ub[0]";
connectAttr "tweak1.og[0]" "groupParts106.ig";
connectAttr "groupId308.id" "groupParts106.gi";
connectAttr "groupId309.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape55.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurfaceShape55Orig.w" "groupParts107.ig";
connectAttr "groupId309.id" "groupParts107.gi";
connectAttr "groupParts108.og" "transferAttributes2.ip[0].ig";
connectAttr "groupId310.id" "transferAttributes2.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes2.src[0]";
connectAttr "groupParts109.og" "tweak2.ip[0].ig";
connectAttr "groupId311.id" "tweak2.ip[0].gi";
connectAttr "groupId310.msg" "set2.gn" -na;
connectAttr "polySurfaceShape57.iog.og[1]" "set2.dsm" -na;
connectAttr "transferAttributes2.msg" "set2.ub[0]";
connectAttr "tweak2.og[0]" "groupParts108.ig";
connectAttr "groupId310.id" "groupParts108.gi";
connectAttr "groupId311.msg" "tweakSet2.gn" -na;
connectAttr "polySurfaceShape57.iog.og[2]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "polySurfaceShape57Orig.w" "groupParts109.ig";
connectAttr "groupId311.id" "groupParts109.gi";
connectAttr "groupParts110.og" "transferAttributes3.ip[0].ig";
connectAttr "groupId312.id" "transferAttributes3.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes3.src[0]";
connectAttr "groupParts111.og" "tweak3.ip[0].ig";
connectAttr "groupId313.id" "tweak3.ip[0].gi";
connectAttr "groupId312.msg" "set3.gn" -na;
connectAttr "polySurfaceShape58.iog.og[1]" "set3.dsm" -na;
connectAttr "transferAttributes3.msg" "set3.ub[0]";
connectAttr "tweak3.og[0]" "groupParts110.ig";
connectAttr "groupId312.id" "groupParts110.gi";
connectAttr "groupId313.msg" "tweakSet3.gn" -na;
connectAttr "polySurfaceShape58.iog.og[2]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "polySurfaceShape58Orig.w" "groupParts111.ig";
connectAttr "groupId313.id" "groupParts111.gi";
connectAttr "groupParts112.og" "transferAttributes4.ip[0].ig";
connectAttr "groupId314.id" "transferAttributes4.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes4.src[0]";
connectAttr "groupParts113.og" "tweak4.ip[0].ig";
connectAttr "groupId315.id" "tweak4.ip[0].gi";
connectAttr "groupId314.msg" "set4.gn" -na;
connectAttr "polySurfaceShape59.iog.og[1]" "set4.dsm" -na;
connectAttr "transferAttributes4.msg" "set4.ub[0]";
connectAttr "tweak4.og[0]" "groupParts112.ig";
connectAttr "groupId314.id" "groupParts112.gi";
connectAttr "groupId315.msg" "tweakSet4.gn" -na;
connectAttr "polySurfaceShape59.iog.og[2]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "polySurfaceShape59Orig.w" "groupParts113.ig";
connectAttr "groupId315.id" "groupParts113.gi";
connectAttr "groupParts114.og" "transferAttributes5.ip[0].ig";
connectAttr "groupId316.id" "transferAttributes5.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes5.src[0]";
connectAttr "groupParts115.og" "tweak5.ip[0].ig";
connectAttr "groupId317.id" "tweak5.ip[0].gi";
connectAttr "groupId316.msg" "set5.gn" -na;
connectAttr "polySurfaceShape60.iog.og[1]" "set5.dsm" -na;
connectAttr "transferAttributes5.msg" "set5.ub[0]";
connectAttr "tweak5.og[0]" "groupParts114.ig";
connectAttr "groupId316.id" "groupParts114.gi";
connectAttr "groupId317.msg" "tweakSet5.gn" -na;
connectAttr "polySurfaceShape60.iog.og[2]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "polySurfaceShape60Orig.w" "groupParts115.ig";
connectAttr "groupId317.id" "groupParts115.gi";
connectAttr "groupParts116.og" "transferAttributes6.ip[0].ig";
connectAttr "groupId318.id" "transferAttributes6.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes6.src[0]";
connectAttr "groupParts117.og" "tweak6.ip[0].ig";
connectAttr "groupId319.id" "tweak6.ip[0].gi";
connectAttr "groupId318.msg" "set6.gn" -na;
connectAttr "polySurfaceShape61.iog.og[1]" "set6.dsm" -na;
connectAttr "transferAttributes6.msg" "set6.ub[0]";
connectAttr "tweak6.og[0]" "groupParts116.ig";
connectAttr "groupId318.id" "groupParts116.gi";
connectAttr "groupId319.msg" "tweakSet6.gn" -na;
connectAttr "polySurfaceShape61.iog.og[2]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "polySurfaceShape61Orig.w" "groupParts117.ig";
connectAttr "groupId319.id" "groupParts117.gi";
connectAttr "groupParts118.og" "transferAttributes7.ip[0].ig";
connectAttr "groupId320.id" "transferAttributes7.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes7.src[0]";
connectAttr "groupParts119.og" "tweak7.ip[0].ig";
connectAttr "groupId321.id" "tweak7.ip[0].gi";
connectAttr "groupId320.msg" "set7.gn" -na;
connectAttr "polySurfaceShape62.iog.og[1]" "set7.dsm" -na;
connectAttr "transferAttributes7.msg" "set7.ub[0]";
connectAttr "tweak7.og[0]" "groupParts118.ig";
connectAttr "groupId320.id" "groupParts118.gi";
connectAttr "groupId321.msg" "tweakSet7.gn" -na;
connectAttr "polySurfaceShape62.iog.og[2]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "polySurfaceShape62Orig.w" "groupParts119.ig";
connectAttr "groupId321.id" "groupParts119.gi";
connectAttr "groupParts120.og" "transferAttributes8.ip[0].ig";
connectAttr "groupId322.id" "transferAttributes8.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes8.src[0]";
connectAttr "groupParts121.og" "tweak8.ip[0].ig";
connectAttr "groupId323.id" "tweak8.ip[0].gi";
connectAttr "groupId322.msg" "set8.gn" -na;
connectAttr "polySurfaceShape63.iog.og[1]" "set8.dsm" -na;
connectAttr "transferAttributes8.msg" "set8.ub[0]";
connectAttr "tweak8.og[0]" "groupParts120.ig";
connectAttr "groupId322.id" "groupParts120.gi";
connectAttr "groupId323.msg" "tweakSet8.gn" -na;
connectAttr "polySurfaceShape63.iog.og[2]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "polySurfaceShape63Orig.w" "groupParts121.ig";
connectAttr "groupId323.id" "groupParts121.gi";
connectAttr "groupParts122.og" "transferAttributes9.ip[0].ig";
connectAttr "groupId324.id" "transferAttributes9.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes9.src[0]";
connectAttr "groupParts123.og" "tweak9.ip[0].ig";
connectAttr "groupId325.id" "tweak9.ip[0].gi";
connectAttr "groupId324.msg" "set9.gn" -na;
connectAttr "polySurfaceShape39.iog.og[1]" "set9.dsm" -na;
connectAttr "transferAttributes9.msg" "set9.ub[0]";
connectAttr "tweak9.og[0]" "groupParts122.ig";
connectAttr "groupId324.id" "groupParts122.gi";
connectAttr "groupId325.msg" "tweakSet9.gn" -na;
connectAttr "polySurfaceShape39.iog.og[2]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "polySurfaceShape39Orig.w" "groupParts123.ig";
connectAttr "groupId325.id" "groupParts123.gi";
connectAttr "groupParts124.og" "transferAttributes10.ip[0].ig";
connectAttr "groupId326.id" "transferAttributes10.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes10.src[0]";
connectAttr "groupParts125.og" "tweak10.ip[0].ig";
connectAttr "groupId327.id" "tweak10.ip[0].gi";
connectAttr "groupId326.msg" "set10.gn" -na;
connectAttr "polySurfaceShape41.iog.og[1]" "set10.dsm" -na;
connectAttr "transferAttributes10.msg" "set10.ub[0]";
connectAttr "tweak10.og[0]" "groupParts124.ig";
connectAttr "groupId326.id" "groupParts124.gi";
connectAttr "groupId327.msg" "tweakSet10.gn" -na;
connectAttr "polySurfaceShape41.iog.og[2]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "polySurfaceShape41Orig.w" "groupParts125.ig";
connectAttr "groupId327.id" "groupParts125.gi";
connectAttr "groupParts126.og" "transferAttributes11.ip[0].ig";
connectAttr "groupId328.id" "transferAttributes11.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes11.src[0]";
connectAttr "groupParts127.og" "tweak11.ip[0].ig";
connectAttr "groupId329.id" "tweak11.ip[0].gi";
connectAttr "groupId328.msg" "set11.gn" -na;
connectAttr "polySurfaceShape42.iog.og[1]" "set11.dsm" -na;
connectAttr "transferAttributes11.msg" "set11.ub[0]";
connectAttr "tweak11.og[0]" "groupParts126.ig";
connectAttr "groupId328.id" "groupParts126.gi";
connectAttr "groupId329.msg" "tweakSet11.gn" -na;
connectAttr "polySurfaceShape42.iog.og[2]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "polySurfaceShape42Orig.w" "groupParts127.ig";
connectAttr "groupId329.id" "groupParts127.gi";
connectAttr "groupParts128.og" "transferAttributes12.ip[0].ig";
connectAttr "groupId330.id" "transferAttributes12.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes12.src[0]";
connectAttr "groupParts129.og" "tweak12.ip[0].ig";
connectAttr "groupId331.id" "tweak12.ip[0].gi";
connectAttr "groupId330.msg" "set12.gn" -na;
connectAttr "polySurfaceShape43.iog.og[1]" "set12.dsm" -na;
connectAttr "transferAttributes12.msg" "set12.ub[0]";
connectAttr "tweak12.og[0]" "groupParts128.ig";
connectAttr "groupId330.id" "groupParts128.gi";
connectAttr "groupId331.msg" "tweakSet12.gn" -na;
connectAttr "polySurfaceShape43.iog.og[2]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "polySurfaceShape43Orig.w" "groupParts129.ig";
connectAttr "groupId331.id" "groupParts129.gi";
connectAttr "groupParts130.og" "transferAttributes13.ip[0].ig";
connectAttr "groupId332.id" "transferAttributes13.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes13.src[0]";
connectAttr "groupParts131.og" "tweak13.ip[0].ig";
connectAttr "groupId333.id" "tweak13.ip[0].gi";
connectAttr "groupId332.msg" "set13.gn" -na;
connectAttr "polySurfaceShape44.iog.og[1]" "set13.dsm" -na;
connectAttr "transferAttributes13.msg" "set13.ub[0]";
connectAttr "tweak13.og[0]" "groupParts130.ig";
connectAttr "groupId332.id" "groupParts130.gi";
connectAttr "groupId333.msg" "tweakSet13.gn" -na;
connectAttr "polySurfaceShape44.iog.og[2]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "polySurfaceShape44Orig.w" "groupParts131.ig";
connectAttr "groupId333.id" "groupParts131.gi";
connectAttr "groupParts132.og" "transferAttributes14.ip[0].ig";
connectAttr "groupId334.id" "transferAttributes14.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes14.src[0]";
connectAttr "groupParts133.og" "tweak14.ip[0].ig";
connectAttr "groupId335.id" "tweak14.ip[0].gi";
connectAttr "groupId334.msg" "set14.gn" -na;
connectAttr "polySurfaceShape45.iog.og[1]" "set14.dsm" -na;
connectAttr "transferAttributes14.msg" "set14.ub[0]";
connectAttr "tweak14.og[0]" "groupParts132.ig";
connectAttr "groupId334.id" "groupParts132.gi";
connectAttr "groupId335.msg" "tweakSet14.gn" -na;
connectAttr "polySurfaceShape45.iog.og[2]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "polySurfaceShape45Orig.w" "groupParts133.ig";
connectAttr "groupId335.id" "groupParts133.gi";
connectAttr "groupParts134.og" "transferAttributes15.ip[0].ig";
connectAttr "groupId336.id" "transferAttributes15.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes15.src[0]";
connectAttr "groupParts135.og" "tweak15.ip[0].ig";
connectAttr "groupId337.id" "tweak15.ip[0].gi";
connectAttr "groupId336.msg" "set15.gn" -na;
connectAttr "polySurfaceShape46.iog.og[1]" "set15.dsm" -na;
connectAttr "transferAttributes15.msg" "set15.ub[0]";
connectAttr "tweak15.og[0]" "groupParts134.ig";
connectAttr "groupId336.id" "groupParts134.gi";
connectAttr "groupId337.msg" "tweakSet15.gn" -na;
connectAttr "polySurfaceShape46.iog.og[2]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "polySurfaceShape46Orig.w" "groupParts135.ig";
connectAttr "groupId337.id" "groupParts135.gi";
connectAttr "groupParts136.og" "transferAttributes16.ip[0].ig";
connectAttr "groupId338.id" "transferAttributes16.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes16.src[0]";
connectAttr "groupParts137.og" "tweak16.ip[0].ig";
connectAttr "groupId339.id" "tweak16.ip[0].gi";
connectAttr "groupId338.msg" "set16.gn" -na;
connectAttr "polySurfaceShape47.iog.og[1]" "set16.dsm" -na;
connectAttr "transferAttributes16.msg" "set16.ub[0]";
connectAttr "tweak16.og[0]" "groupParts136.ig";
connectAttr "groupId338.id" "groupParts136.gi";
connectAttr "groupId339.msg" "tweakSet16.gn" -na;
connectAttr "polySurfaceShape47.iog.og[2]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "polySurfaceShape47Orig.w" "groupParts137.ig";
connectAttr "groupId339.id" "groupParts137.gi";
connectAttr "groupParts138.og" "transferAttributes17.ip[0].ig";
connectAttr "groupId340.id" "transferAttributes17.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes17.src[0]";
connectAttr "groupParts139.og" "tweak17.ip[0].ig";
connectAttr "groupId341.id" "tweak17.ip[0].gi";
connectAttr "groupId340.msg" "set17.gn" -na;
connectAttr "polySurfaceShape23.iog.og[1]" "set17.dsm" -na;
connectAttr "transferAttributes17.msg" "set17.ub[0]";
connectAttr "tweak17.og[0]" "groupParts138.ig";
connectAttr "groupId340.id" "groupParts138.gi";
connectAttr "groupId341.msg" "tweakSet17.gn" -na;
connectAttr "polySurfaceShape23.iog.og[2]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "polySurfaceShape23Orig.w" "groupParts139.ig";
connectAttr "groupId341.id" "groupParts139.gi";
connectAttr "groupParts140.og" "transferAttributes18.ip[0].ig";
connectAttr "groupId342.id" "transferAttributes18.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes18.src[0]";
connectAttr "groupParts141.og" "tweak18.ip[0].ig";
connectAttr "groupId343.id" "tweak18.ip[0].gi";
connectAttr "groupId342.msg" "set18.gn" -na;
connectAttr "polySurfaceShape25.iog.og[1]" "set18.dsm" -na;
connectAttr "transferAttributes18.msg" "set18.ub[0]";
connectAttr "tweak18.og[0]" "groupParts140.ig";
connectAttr "groupId342.id" "groupParts140.gi";
connectAttr "groupId343.msg" "tweakSet18.gn" -na;
connectAttr "polySurfaceShape25.iog.og[2]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "polySurfaceShape25Orig.w" "groupParts141.ig";
connectAttr "groupId343.id" "groupParts141.gi";
connectAttr "groupParts142.og" "transferAttributes19.ip[0].ig";
connectAttr "groupId344.id" "transferAttributes19.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes19.src[0]";
connectAttr "groupParts143.og" "tweak19.ip[0].ig";
connectAttr "groupId345.id" "tweak19.ip[0].gi";
connectAttr "groupId344.msg" "set19.gn" -na;
connectAttr "polySurfaceShape26.iog.og[1]" "set19.dsm" -na;
connectAttr "transferAttributes19.msg" "set19.ub[0]";
connectAttr "tweak19.og[0]" "groupParts142.ig";
connectAttr "groupId344.id" "groupParts142.gi";
connectAttr "groupId345.msg" "tweakSet19.gn" -na;
connectAttr "polySurfaceShape26.iog.og[2]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "polySurfaceShape26Orig.w" "groupParts143.ig";
connectAttr "groupId345.id" "groupParts143.gi";
connectAttr "groupParts144.og" "transferAttributes20.ip[0].ig";
connectAttr "groupId346.id" "transferAttributes20.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes20.src[0]";
connectAttr "groupParts145.og" "tweak20.ip[0].ig";
connectAttr "groupId347.id" "tweak20.ip[0].gi";
connectAttr "groupId346.msg" "set20.gn" -na;
connectAttr "polySurfaceShape27.iog.og[1]" "set20.dsm" -na;
connectAttr "transferAttributes20.msg" "set20.ub[0]";
connectAttr "tweak20.og[0]" "groupParts144.ig";
connectAttr "groupId346.id" "groupParts144.gi";
connectAttr "groupId347.msg" "tweakSet20.gn" -na;
connectAttr "polySurfaceShape27.iog.og[2]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "polySurfaceShape27Orig.w" "groupParts145.ig";
connectAttr "groupId347.id" "groupParts145.gi";
connectAttr "groupParts146.og" "transferAttributes21.ip[0].ig";
connectAttr "groupId348.id" "transferAttributes21.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes21.src[0]";
connectAttr "groupParts147.og" "tweak21.ip[0].ig";
connectAttr "groupId349.id" "tweak21.ip[0].gi";
connectAttr "groupId348.msg" "set21.gn" -na;
connectAttr "polySurfaceShape28.iog.og[1]" "set21.dsm" -na;
connectAttr "transferAttributes21.msg" "set21.ub[0]";
connectAttr "tweak21.og[0]" "groupParts146.ig";
connectAttr "groupId348.id" "groupParts146.gi";
connectAttr "groupId349.msg" "tweakSet21.gn" -na;
connectAttr "polySurfaceShape28.iog.og[2]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "polySurfaceShape28Orig.w" "groupParts147.ig";
connectAttr "groupId349.id" "groupParts147.gi";
connectAttr "groupParts148.og" "transferAttributes22.ip[0].ig";
connectAttr "groupId350.id" "transferAttributes22.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes22.src[0]";
connectAttr "groupParts149.og" "tweak22.ip[0].ig";
connectAttr "groupId351.id" "tweak22.ip[0].gi";
connectAttr "groupId350.msg" "set22.gn" -na;
connectAttr "polySurfaceShape29.iog.og[1]" "set22.dsm" -na;
connectAttr "transferAttributes22.msg" "set22.ub[0]";
connectAttr "tweak22.og[0]" "groupParts148.ig";
connectAttr "groupId350.id" "groupParts148.gi";
connectAttr "groupId351.msg" "tweakSet22.gn" -na;
connectAttr "polySurfaceShape29.iog.og[2]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "polySurfaceShape29Orig.w" "groupParts149.ig";
connectAttr "groupId351.id" "groupParts149.gi";
connectAttr "groupParts150.og" "transferAttributes23.ip[0].ig";
connectAttr "groupId352.id" "transferAttributes23.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes23.src[0]";
connectAttr "groupParts151.og" "tweak23.ip[0].ig";
connectAttr "groupId353.id" "tweak23.ip[0].gi";
connectAttr "groupId352.msg" "set23.gn" -na;
connectAttr "polySurfaceShape30.iog.og[1]" "set23.dsm" -na;
connectAttr "transferAttributes23.msg" "set23.ub[0]";
connectAttr "tweak23.og[0]" "groupParts150.ig";
connectAttr "groupId352.id" "groupParts150.gi";
connectAttr "groupId353.msg" "tweakSet23.gn" -na;
connectAttr "polySurfaceShape30.iog.og[2]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "polySurfaceShape30Orig.w" "groupParts151.ig";
connectAttr "groupId353.id" "groupParts151.gi";
connectAttr "groupParts152.og" "transferAttributes24.ip[0].ig";
connectAttr "groupId354.id" "transferAttributes24.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes24.src[0]";
connectAttr "groupParts153.og" "tweak24.ip[0].ig";
connectAttr "groupId355.id" "tweak24.ip[0].gi";
connectAttr "groupId354.msg" "set24.gn" -na;
connectAttr "polySurfaceShape31.iog.og[1]" "set24.dsm" -na;
connectAttr "transferAttributes24.msg" "set24.ub[0]";
connectAttr "tweak24.og[0]" "groupParts152.ig";
connectAttr "groupId354.id" "groupParts152.gi";
connectAttr "groupId355.msg" "tweakSet24.gn" -na;
connectAttr "polySurfaceShape31.iog.og[2]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "polySurfaceShape31Orig.w" "groupParts153.ig";
connectAttr "groupId355.id" "groupParts153.gi";
connectAttr "groupParts154.og" "transferAttributes25.ip[0].ig";
connectAttr "groupId356.id" "transferAttributes25.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes25.src[0]";
connectAttr "groupParts155.og" "tweak25.ip[0].ig";
connectAttr "groupId357.id" "tweak25.ip[0].gi";
connectAttr "groupId356.msg" "set25.gn" -na;
connectAttr "polySurfaceShape7.iog.og[1]" "set25.dsm" -na;
connectAttr "transferAttributes25.msg" "set25.ub[0]";
connectAttr "tweak25.og[0]" "groupParts154.ig";
connectAttr "groupId356.id" "groupParts154.gi";
connectAttr "groupId357.msg" "tweakSet25.gn" -na;
connectAttr "polySurfaceShape7.iog.og[2]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "polySurfaceShape7Orig.w" "groupParts155.ig";
connectAttr "groupId357.id" "groupParts155.gi";
connectAttr "groupParts156.og" "transferAttributes26.ip[0].ig";
connectAttr "groupId358.id" "transferAttributes26.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes26.src[0]";
connectAttr "groupParts157.og" "tweak26.ip[0].ig";
connectAttr "groupId359.id" "tweak26.ip[0].gi";
connectAttr "groupId358.msg" "set26.gn" -na;
connectAttr "polySurfaceShape9.iog.og[1]" "set26.dsm" -na;
connectAttr "transferAttributes26.msg" "set26.ub[0]";
connectAttr "tweak26.og[0]" "groupParts156.ig";
connectAttr "groupId358.id" "groupParts156.gi";
connectAttr "groupId359.msg" "tweakSet26.gn" -na;
connectAttr "polySurfaceShape9.iog.og[2]" "tweakSet26.dsm" -na;
connectAttr "tweak26.msg" "tweakSet26.ub[0]";
connectAttr "polySurfaceShape9Orig.w" "groupParts157.ig";
connectAttr "groupId359.id" "groupParts157.gi";
connectAttr "groupParts158.og" "transferAttributes27.ip[0].ig";
connectAttr "groupId360.id" "transferAttributes27.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes27.src[0]";
connectAttr "groupParts159.og" "tweak27.ip[0].ig";
connectAttr "groupId361.id" "tweak27.ip[0].gi";
connectAttr "groupId360.msg" "set27.gn" -na;
connectAttr "polySurfaceShape10.iog.og[1]" "set27.dsm" -na;
connectAttr "transferAttributes27.msg" "set27.ub[0]";
connectAttr "tweak27.og[0]" "groupParts158.ig";
connectAttr "groupId360.id" "groupParts158.gi";
connectAttr "groupId361.msg" "tweakSet27.gn" -na;
connectAttr "polySurfaceShape10.iog.og[2]" "tweakSet27.dsm" -na;
connectAttr "tweak27.msg" "tweakSet27.ub[0]";
connectAttr "polySurfaceShape10Orig.w" "groupParts159.ig";
connectAttr "groupId361.id" "groupParts159.gi";
connectAttr "groupParts160.og" "transferAttributes28.ip[0].ig";
connectAttr "groupId362.id" "transferAttributes28.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes28.src[0]";
connectAttr "groupParts161.og" "tweak28.ip[0].ig";
connectAttr "groupId363.id" "tweak28.ip[0].gi";
connectAttr "groupId362.msg" "set28.gn" -na;
connectAttr "polySurfaceShape11.iog.og[1]" "set28.dsm" -na;
connectAttr "transferAttributes28.msg" "set28.ub[0]";
connectAttr "tweak28.og[0]" "groupParts160.ig";
connectAttr "groupId362.id" "groupParts160.gi";
connectAttr "groupId363.msg" "tweakSet28.gn" -na;
connectAttr "polySurfaceShape11.iog.og[2]" "tweakSet28.dsm" -na;
connectAttr "tweak28.msg" "tweakSet28.ub[0]";
connectAttr "polySurfaceShape11Orig.w" "groupParts161.ig";
connectAttr "groupId363.id" "groupParts161.gi";
connectAttr "groupParts162.og" "transferAttributes29.ip[0].ig";
connectAttr "groupId364.id" "transferAttributes29.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes29.src[0]";
connectAttr "groupParts163.og" "tweak29.ip[0].ig";
connectAttr "groupId365.id" "tweak29.ip[0].gi";
connectAttr "groupId364.msg" "set29.gn" -na;
connectAttr "polySurfaceShape12.iog.og[1]" "set29.dsm" -na;
connectAttr "transferAttributes29.msg" "set29.ub[0]";
connectAttr "tweak29.og[0]" "groupParts162.ig";
connectAttr "groupId364.id" "groupParts162.gi";
connectAttr "groupId365.msg" "tweakSet29.gn" -na;
connectAttr "polySurfaceShape12.iog.og[2]" "tweakSet29.dsm" -na;
connectAttr "tweak29.msg" "tweakSet29.ub[0]";
connectAttr "polySurfaceShape12Orig.w" "groupParts163.ig";
connectAttr "groupId365.id" "groupParts163.gi";
connectAttr "groupParts164.og" "transferAttributes30.ip[0].ig";
connectAttr "groupId366.id" "transferAttributes30.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes30.src[0]";
connectAttr "groupParts165.og" "tweak30.ip[0].ig";
connectAttr "groupId367.id" "tweak30.ip[0].gi";
connectAttr "groupId366.msg" "set30.gn" -na;
connectAttr "polySurfaceShape13.iog.og[1]" "set30.dsm" -na;
connectAttr "transferAttributes30.msg" "set30.ub[0]";
connectAttr "tweak30.og[0]" "groupParts164.ig";
connectAttr "groupId366.id" "groupParts164.gi";
connectAttr "groupId367.msg" "tweakSet30.gn" -na;
connectAttr "polySurfaceShape13.iog.og[2]" "tweakSet30.dsm" -na;
connectAttr "tweak30.msg" "tweakSet30.ub[0]";
connectAttr "polySurfaceShape13Orig.w" "groupParts165.ig";
connectAttr "groupId367.id" "groupParts165.gi";
connectAttr "groupParts166.og" "transferAttributes31.ip[0].ig";
connectAttr "groupId368.id" "transferAttributes31.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes31.src[0]";
connectAttr "groupParts167.og" "tweak31.ip[0].ig";
connectAttr "groupId369.id" "tweak31.ip[0].gi";
connectAttr "groupId368.msg" "set31.gn" -na;
connectAttr "polySurfaceShape14.iog.og[1]" "set31.dsm" -na;
connectAttr "transferAttributes31.msg" "set31.ub[0]";
connectAttr "tweak31.og[0]" "groupParts166.ig";
connectAttr "groupId368.id" "groupParts166.gi";
connectAttr "groupId369.msg" "tweakSet31.gn" -na;
connectAttr "polySurfaceShape14.iog.og[2]" "tweakSet31.dsm" -na;
connectAttr "tweak31.msg" "tweakSet31.ub[0]";
connectAttr "polySurfaceShape14Orig.w" "groupParts167.ig";
connectAttr "groupId369.id" "groupParts167.gi";
connectAttr "groupParts168.og" "transferAttributes32.ip[0].ig";
connectAttr "groupId370.id" "transferAttributes32.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes32.src[0]";
connectAttr "groupParts169.og" "tweak32.ip[0].ig";
connectAttr "groupId371.id" "tweak32.ip[0].gi";
connectAttr "groupId370.msg" "set32.gn" -na;
connectAttr "polySurfaceShape15.iog.og[1]" "set32.dsm" -na;
connectAttr "transferAttributes32.msg" "set32.ub[0]";
connectAttr "tweak32.og[0]" "groupParts168.ig";
connectAttr "groupId370.id" "groupParts168.gi";
connectAttr "groupId371.msg" "tweakSet32.gn" -na;
connectAttr "polySurfaceShape15.iog.og[2]" "tweakSet32.dsm" -na;
connectAttr "tweak32.msg" "tweakSet32.ub[0]";
connectAttr "polySurfaceShape15Orig.w" "groupParts169.ig";
connectAttr "groupId371.id" "groupParts169.gi";
connectAttr "groupParts170.og" "transferAttributes33.ip[0].ig";
connectAttr "groupId372.id" "transferAttributes33.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes33.src[0]";
connectAttr "groupParts171.og" "tweak33.ip[0].ig";
connectAttr "groupId373.id" "tweak33.ip[0].gi";
connectAttr "groupId372.msg" "set33.gn" -na;
connectAttr "polySurfaceShape72.iog.og[1]" "set33.dsm" -na;
connectAttr "transferAttributes33.msg" "set33.ub[0]";
connectAttr "tweak33.og[0]" "groupParts170.ig";
connectAttr "groupId372.id" "groupParts170.gi";
connectAttr "groupId373.msg" "tweakSet33.gn" -na;
connectAttr "polySurfaceShape72.iog.og[2]" "tweakSet33.dsm" -na;
connectAttr "tweak33.msg" "tweakSet33.ub[0]";
connectAttr "polySurfaceShape72Orig.w" "groupParts171.ig";
connectAttr "groupId373.id" "groupParts171.gi";
connectAttr "groupParts172.og" "transferAttributes34.ip[0].ig";
connectAttr "groupId374.id" "transferAttributes34.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes34.src[0]";
connectAttr "groupParts173.og" "tweak34.ip[0].ig";
connectAttr "groupId375.id" "tweak34.ip[0].gi";
connectAttr "groupId374.msg" "set34.gn" -na;
connectAttr "polySurfaceShape74.iog.og[1]" "set34.dsm" -na;
connectAttr "transferAttributes34.msg" "set34.ub[0]";
connectAttr "tweak34.og[0]" "groupParts172.ig";
connectAttr "groupId374.id" "groupParts172.gi";
connectAttr "groupId375.msg" "tweakSet34.gn" -na;
connectAttr "polySurfaceShape74.iog.og[2]" "tweakSet34.dsm" -na;
connectAttr "tweak34.msg" "tweakSet34.ub[0]";
connectAttr "polySurfaceShape74Orig.w" "groupParts173.ig";
connectAttr "groupId375.id" "groupParts173.gi";
connectAttr "groupParts174.og" "transferAttributes35.ip[0].ig";
connectAttr "groupId376.id" "transferAttributes35.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes35.src[0]";
connectAttr "groupParts175.og" "tweak35.ip[0].ig";
connectAttr "groupId377.id" "tweak35.ip[0].gi";
connectAttr "groupId376.msg" "set35.gn" -na;
connectAttr "polySurfaceShape75.iog.og[1]" "set35.dsm" -na;
connectAttr "transferAttributes35.msg" "set35.ub[0]";
connectAttr "tweak35.og[0]" "groupParts174.ig";
connectAttr "groupId376.id" "groupParts174.gi";
connectAttr "groupId377.msg" "tweakSet35.gn" -na;
connectAttr "polySurfaceShape75.iog.og[2]" "tweakSet35.dsm" -na;
connectAttr "tweak35.msg" "tweakSet35.ub[0]";
connectAttr "polySurfaceShape75Orig.w" "groupParts175.ig";
connectAttr "groupId377.id" "groupParts175.gi";
connectAttr "groupParts176.og" "transferAttributes36.ip[0].ig";
connectAttr "groupId378.id" "transferAttributes36.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes36.src[0]";
connectAttr "groupParts177.og" "tweak36.ip[0].ig";
connectAttr "groupId379.id" "tweak36.ip[0].gi";
connectAttr "groupId378.msg" "set36.gn" -na;
connectAttr "polySurfaceShape76.iog.og[1]" "set36.dsm" -na;
connectAttr "transferAttributes36.msg" "set36.ub[0]";
connectAttr "tweak36.og[0]" "groupParts176.ig";
connectAttr "groupId378.id" "groupParts176.gi";
connectAttr "groupId379.msg" "tweakSet36.gn" -na;
connectAttr "polySurfaceShape76.iog.og[2]" "tweakSet36.dsm" -na;
connectAttr "tweak36.msg" "tweakSet36.ub[0]";
connectAttr "polySurfaceShape76Orig.w" "groupParts177.ig";
connectAttr "groupId379.id" "groupParts177.gi";
connectAttr "groupParts178.og" "transferAttributes37.ip[0].ig";
connectAttr "groupId380.id" "transferAttributes37.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes37.src[0]";
connectAttr "groupParts179.og" "tweak37.ip[0].ig";
connectAttr "groupId381.id" "tweak37.ip[0].gi";
connectAttr "groupId380.msg" "set37.gn" -na;
connectAttr "polySurfaceShape77.iog.og[1]" "set37.dsm" -na;
connectAttr "transferAttributes37.msg" "set37.ub[0]";
connectAttr "tweak37.og[0]" "groupParts178.ig";
connectAttr "groupId380.id" "groupParts178.gi";
connectAttr "groupId381.msg" "tweakSet37.gn" -na;
connectAttr "polySurfaceShape77.iog.og[2]" "tweakSet37.dsm" -na;
connectAttr "tweak37.msg" "tweakSet37.ub[0]";
connectAttr "polySurfaceShape77Orig.w" "groupParts179.ig";
connectAttr "groupId381.id" "groupParts179.gi";
connectAttr "groupParts180.og" "transferAttributes38.ip[0].ig";
connectAttr "groupId382.id" "transferAttributes38.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes38.src[0]";
connectAttr "groupParts181.og" "tweak38.ip[0].ig";
connectAttr "groupId383.id" "tweak38.ip[0].gi";
connectAttr "groupId382.msg" "set38.gn" -na;
connectAttr "polySurfaceShape78.iog.og[1]" "set38.dsm" -na;
connectAttr "transferAttributes38.msg" "set38.ub[0]";
connectAttr "tweak38.og[0]" "groupParts180.ig";
connectAttr "groupId382.id" "groupParts180.gi";
connectAttr "groupId383.msg" "tweakSet38.gn" -na;
connectAttr "polySurfaceShape78.iog.og[2]" "tweakSet38.dsm" -na;
connectAttr "tweak38.msg" "tweakSet38.ub[0]";
connectAttr "polySurfaceShape78Orig.w" "groupParts181.ig";
connectAttr "groupId383.id" "groupParts181.gi";
connectAttr "groupParts182.og" "transferAttributes39.ip[0].ig";
connectAttr "groupId384.id" "transferAttributes39.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes39.src[0]";
connectAttr "groupParts183.og" "tweak39.ip[0].ig";
connectAttr "groupId385.id" "tweak39.ip[0].gi";
connectAttr "groupId384.msg" "set39.gn" -na;
connectAttr "polySurfaceShape79.iog.og[1]" "set39.dsm" -na;
connectAttr "transferAttributes39.msg" "set39.ub[0]";
connectAttr "tweak39.og[0]" "groupParts182.ig";
connectAttr "groupId384.id" "groupParts182.gi";
connectAttr "groupId385.msg" "tweakSet39.gn" -na;
connectAttr "polySurfaceShape79.iog.og[2]" "tweakSet39.dsm" -na;
connectAttr "tweak39.msg" "tweakSet39.ub[0]";
connectAttr "polySurfaceShape79Orig.w" "groupParts183.ig";
connectAttr "groupId385.id" "groupParts183.gi";
connectAttr "groupParts184.og" "transferAttributes40.ip[0].ig";
connectAttr "groupId386.id" "transferAttributes40.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes40.src[0]";
connectAttr "groupParts185.og" "tweak40.ip[0].ig";
connectAttr "groupId387.id" "tweak40.ip[0].gi";
connectAttr "groupId386.msg" "set40.gn" -na;
connectAttr "polySurfaceShape80.iog.og[1]" "set40.dsm" -na;
connectAttr "transferAttributes40.msg" "set40.ub[0]";
connectAttr "tweak40.og[0]" "groupParts184.ig";
connectAttr "groupId386.id" "groupParts184.gi";
connectAttr "groupId387.msg" "tweakSet40.gn" -na;
connectAttr "polySurfaceShape80.iog.og[2]" "tweakSet40.dsm" -na;
connectAttr "tweak40.msg" "tweakSet40.ub[0]";
connectAttr "polySurfaceShape80Orig.w" "groupParts185.ig";
connectAttr "groupId387.id" "groupParts185.gi";
connectAttr "groupParts186.og" "transferAttributes41.ip[0].ig";
connectAttr "groupId388.id" "transferAttributes41.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes41.src[0]";
connectAttr "groupParts187.og" "tweak41.ip[0].ig";
connectAttr "groupId389.id" "tweak41.ip[0].gi";
connectAttr "groupId388.msg" "set41.gn" -na;
connectAttr "polySurfaceShape88.iog.og[1]" "set41.dsm" -na;
connectAttr "transferAttributes41.msg" "set41.ub[0]";
connectAttr "tweak41.og[0]" "groupParts186.ig";
connectAttr "groupId388.id" "groupParts186.gi";
connectAttr "groupId389.msg" "tweakSet41.gn" -na;
connectAttr "polySurfaceShape88.iog.og[2]" "tweakSet41.dsm" -na;
connectAttr "tweak41.msg" "tweakSet41.ub[0]";
connectAttr "polySurfaceShape88Orig.w" "groupParts187.ig";
connectAttr "groupId389.id" "groupParts187.gi";
connectAttr "groupParts188.og" "transferAttributes42.ip[0].ig";
connectAttr "groupId390.id" "transferAttributes42.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes42.src[0]";
connectAttr "groupParts189.og" "tweak42.ip[0].ig";
connectAttr "groupId391.id" "tweak42.ip[0].gi";
connectAttr "groupId390.msg" "set42.gn" -na;
connectAttr "polySurfaceShape90.iog.og[1]" "set42.dsm" -na;
connectAttr "transferAttributes42.msg" "set42.ub[0]";
connectAttr "tweak42.og[0]" "groupParts188.ig";
connectAttr "groupId390.id" "groupParts188.gi";
connectAttr "groupId391.msg" "tweakSet42.gn" -na;
connectAttr "polySurfaceShape90.iog.og[2]" "tweakSet42.dsm" -na;
connectAttr "tweak42.msg" "tweakSet42.ub[0]";
connectAttr "polySurfaceShape90Orig.w" "groupParts189.ig";
connectAttr "groupId391.id" "groupParts189.gi";
connectAttr "groupParts190.og" "transferAttributes43.ip[0].ig";
connectAttr "groupId392.id" "transferAttributes43.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes43.src[0]";
connectAttr "groupParts191.og" "tweak43.ip[0].ig";
connectAttr "groupId393.id" "tweak43.ip[0].gi";
connectAttr "groupId392.msg" "set43.gn" -na;
connectAttr "polySurfaceShape91.iog.og[1]" "set43.dsm" -na;
connectAttr "transferAttributes43.msg" "set43.ub[0]";
connectAttr "tweak43.og[0]" "groupParts190.ig";
connectAttr "groupId392.id" "groupParts190.gi";
connectAttr "groupId393.msg" "tweakSet43.gn" -na;
connectAttr "polySurfaceShape91.iog.og[2]" "tweakSet43.dsm" -na;
connectAttr "tweak43.msg" "tweakSet43.ub[0]";
connectAttr "polySurfaceShape91Orig.w" "groupParts191.ig";
connectAttr "groupId393.id" "groupParts191.gi";
connectAttr "groupParts192.og" "transferAttributes44.ip[0].ig";
connectAttr "groupId394.id" "transferAttributes44.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes44.src[0]";
connectAttr "groupParts193.og" "tweak44.ip[0].ig";
connectAttr "groupId395.id" "tweak44.ip[0].gi";
connectAttr "groupId394.msg" "set44.gn" -na;
connectAttr "polySurfaceShape92.iog.og[1]" "set44.dsm" -na;
connectAttr "transferAttributes44.msg" "set44.ub[0]";
connectAttr "tweak44.og[0]" "groupParts192.ig";
connectAttr "groupId394.id" "groupParts192.gi";
connectAttr "groupId395.msg" "tweakSet44.gn" -na;
connectAttr "polySurfaceShape92.iog.og[2]" "tweakSet44.dsm" -na;
connectAttr "tweak44.msg" "tweakSet44.ub[0]";
connectAttr "polySurfaceShape92Orig.w" "groupParts193.ig";
connectAttr "groupId395.id" "groupParts193.gi";
connectAttr "groupParts194.og" "transferAttributes45.ip[0].ig";
connectAttr "groupId396.id" "transferAttributes45.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes45.src[0]";
connectAttr "groupParts195.og" "tweak45.ip[0].ig";
connectAttr "groupId397.id" "tweak45.ip[0].gi";
connectAttr "groupId396.msg" "set45.gn" -na;
connectAttr "polySurfaceShape93.iog.og[1]" "set45.dsm" -na;
connectAttr "transferAttributes45.msg" "set45.ub[0]";
connectAttr "tweak45.og[0]" "groupParts194.ig";
connectAttr "groupId396.id" "groupParts194.gi";
connectAttr "groupId397.msg" "tweakSet45.gn" -na;
connectAttr "polySurfaceShape93.iog.og[2]" "tweakSet45.dsm" -na;
connectAttr "tweak45.msg" "tweakSet45.ub[0]";
connectAttr "polySurfaceShape93Orig.w" "groupParts195.ig";
connectAttr "groupId397.id" "groupParts195.gi";
connectAttr "groupParts196.og" "transferAttributes46.ip[0].ig";
connectAttr "groupId398.id" "transferAttributes46.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes46.src[0]";
connectAttr "groupParts197.og" "tweak46.ip[0].ig";
connectAttr "groupId399.id" "tweak46.ip[0].gi";
connectAttr "groupId398.msg" "set46.gn" -na;
connectAttr "polySurfaceShape94.iog.og[1]" "set46.dsm" -na;
connectAttr "transferAttributes46.msg" "set46.ub[0]";
connectAttr "tweak46.og[0]" "groupParts196.ig";
connectAttr "groupId398.id" "groupParts196.gi";
connectAttr "groupId399.msg" "tweakSet46.gn" -na;
connectAttr "polySurfaceShape94.iog.og[2]" "tweakSet46.dsm" -na;
connectAttr "tweak46.msg" "tweakSet46.ub[0]";
connectAttr "polySurfaceShape94Orig.w" "groupParts197.ig";
connectAttr "groupId399.id" "groupParts197.gi";
connectAttr "groupParts198.og" "transferAttributes47.ip[0].ig";
connectAttr "groupId400.id" "transferAttributes47.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes47.src[0]";
connectAttr "groupParts199.og" "tweak47.ip[0].ig";
connectAttr "groupId401.id" "tweak47.ip[0].gi";
connectAttr "groupId400.msg" "set47.gn" -na;
connectAttr "polySurfaceShape95.iog.og[1]" "set47.dsm" -na;
connectAttr "transferAttributes47.msg" "set47.ub[0]";
connectAttr "tweak47.og[0]" "groupParts198.ig";
connectAttr "groupId400.id" "groupParts198.gi";
connectAttr "groupId401.msg" "tweakSet47.gn" -na;
connectAttr "polySurfaceShape95.iog.og[2]" "tweakSet47.dsm" -na;
connectAttr "tweak47.msg" "tweakSet47.ub[0]";
connectAttr "polySurfaceShape95Orig.w" "groupParts199.ig";
connectAttr "groupId401.id" "groupParts199.gi";
connectAttr "groupParts200.og" "transferAttributes48.ip[0].ig";
connectAttr "groupId402.id" "transferAttributes48.ip[0].gi";
connectAttr "polySurfaceShape55.w" "transferAttributes48.src[0]";
connectAttr "groupParts201.og" "tweak48.ip[0].ig";
connectAttr "groupId403.id" "tweak48.ip[0].gi";
connectAttr "groupId402.msg" "set48.gn" -na;
connectAttr "polySurfaceShape96.iog.og[1]" "set48.dsm" -na;
connectAttr "transferAttributes48.msg" "set48.ub[0]";
connectAttr "tweak48.og[0]" "groupParts200.ig";
connectAttr "groupId402.id" "groupParts200.gi";
connectAttr "groupId403.msg" "tweakSet48.gn" -na;
connectAttr "polySurfaceShape96.iog.og[2]" "tweakSet48.dsm" -na;
connectAttr "tweak48.msg" "tweakSet48.ub[0]";
connectAttr "polySurfaceShape96Orig.w" "groupParts201.ig";
connectAttr "groupId403.id" "groupParts201.gi";
connectAttr "groupParts202.og" "transferAttributes49.ip[0].ig";
connectAttr "groupId404.id" "transferAttributes49.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes49.src[0]";
connectAttr "groupParts203.og" "tweak49.ip[0].ig";
connectAttr "groupId405.id" "tweak49.ip[0].gi";
connectAttr "groupId404.msg" "set49.gn" -na;
connectAttr "polySurfaceShape54.iog.og[1]" "set49.dsm" -na;
connectAttr "transferAttributes49.msg" "set49.ub[0]";
connectAttr "tweak49.og[0]" "groupParts202.ig";
connectAttr "groupId404.id" "groupParts202.gi";
connectAttr "groupId405.msg" "tweakSet49.gn" -na;
connectAttr "polySurfaceShape54.iog.og[2]" "tweakSet49.dsm" -na;
connectAttr "tweak49.msg" "tweakSet49.ub[0]";
connectAttr "polySurfaceShape54Orig.w" "groupParts203.ig";
connectAttr "groupId405.id" "groupParts203.gi";
connectAttr "groupParts204.og" "transferAttributes50.ip[0].ig";
connectAttr "groupId406.id" "transferAttributes50.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes50.src[0]";
connectAttr "groupParts205.og" "tweak50.ip[0].ig";
connectAttr "groupId407.id" "tweak50.ip[0].gi";
connectAttr "groupId406.msg" "set50.gn" -na;
connectAttr "polySurfaceShape56.iog.og[1]" "set50.dsm" -na;
connectAttr "transferAttributes50.msg" "set50.ub[0]";
connectAttr "tweak50.og[0]" "groupParts204.ig";
connectAttr "groupId406.id" "groupParts204.gi";
connectAttr "groupId407.msg" "tweakSet50.gn" -na;
connectAttr "polySurfaceShape56.iog.og[2]" "tweakSet50.dsm" -na;
connectAttr "tweak50.msg" "tweakSet50.ub[0]";
connectAttr "polySurfaceShape56Orig.w" "groupParts205.ig";
connectAttr "groupId407.id" "groupParts205.gi";
connectAttr "groupParts206.og" "transferAttributes51.ip[0].ig";
connectAttr "groupId408.id" "transferAttributes51.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes51.src[0]";
connectAttr "groupParts207.og" "tweak51.ip[0].ig";
connectAttr "groupId409.id" "tweak51.ip[0].gi";
connectAttr "groupId408.msg" "set51.gn" -na;
connectAttr "polySurfaceShape64.iog.og[1]" "set51.dsm" -na;
connectAttr "transferAttributes51.msg" "set51.ub[0]";
connectAttr "tweak51.og[0]" "groupParts206.ig";
connectAttr "groupId408.id" "groupParts206.gi";
connectAttr "groupId409.msg" "tweakSet51.gn" -na;
connectAttr "polySurfaceShape64.iog.og[2]" "tweakSet51.dsm" -na;
connectAttr "tweak51.msg" "tweakSet51.ub[0]";
connectAttr "polySurfaceShape64Orig.w" "groupParts207.ig";
connectAttr "groupId409.id" "groupParts207.gi";
connectAttr "groupParts208.og" "transferAttributes52.ip[0].ig";
connectAttr "groupId410.id" "transferAttributes52.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes52.src[0]";
connectAttr "groupParts209.og" "tweak52.ip[0].ig";
connectAttr "groupId411.id" "tweak52.ip[0].gi";
connectAttr "groupId410.msg" "set52.gn" -na;
connectAttr "polySurfaceShape65.iog.og[1]" "set52.dsm" -na;
connectAttr "transferAttributes52.msg" "set52.ub[0]";
connectAttr "tweak52.og[0]" "groupParts208.ig";
connectAttr "groupId410.id" "groupParts208.gi";
connectAttr "groupId411.msg" "tweakSet52.gn" -na;
connectAttr "polySurfaceShape65.iog.og[2]" "tweakSet52.dsm" -na;
connectAttr "tweak52.msg" "tweakSet52.ub[0]";
connectAttr "polySurfaceShape65Orig.w" "groupParts209.ig";
connectAttr "groupId411.id" "groupParts209.gi";
connectAttr "groupParts210.og" "transferAttributes53.ip[0].ig";
connectAttr "groupId412.id" "transferAttributes53.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes53.src[0]";
connectAttr "groupParts211.og" "tweak53.ip[0].ig";
connectAttr "groupId413.id" "tweak53.ip[0].gi";
connectAttr "groupId412.msg" "set53.gn" -na;
connectAttr "polySurfaceShape66.iog.og[1]" "set53.dsm" -na;
connectAttr "transferAttributes53.msg" "set53.ub[0]";
connectAttr "tweak53.og[0]" "groupParts210.ig";
connectAttr "groupId412.id" "groupParts210.gi";
connectAttr "groupId413.msg" "tweakSet53.gn" -na;
connectAttr "polySurfaceShape66.iog.og[2]" "tweakSet53.dsm" -na;
connectAttr "tweak53.msg" "tweakSet53.ub[0]";
connectAttr "polySurfaceShape66Orig.w" "groupParts211.ig";
connectAttr "groupId413.id" "groupParts211.gi";
connectAttr "groupParts212.og" "transferAttributes54.ip[0].ig";
connectAttr "groupId414.id" "transferAttributes54.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes54.src[0]";
connectAttr "groupParts213.og" "tweak54.ip[0].ig";
connectAttr "groupId415.id" "tweak54.ip[0].gi";
connectAttr "groupId414.msg" "set54.gn" -na;
connectAttr "polySurfaceShape67.iog.og[1]" "set54.dsm" -na;
connectAttr "transferAttributes54.msg" "set54.ub[0]";
connectAttr "tweak54.og[0]" "groupParts212.ig";
connectAttr "groupId414.id" "groupParts212.gi";
connectAttr "groupId415.msg" "tweakSet54.gn" -na;
connectAttr "polySurfaceShape67.iog.og[2]" "tweakSet54.dsm" -na;
connectAttr "tweak54.msg" "tweakSet54.ub[0]";
connectAttr "polySurfaceShape67Orig.w" "groupParts213.ig";
connectAttr "groupId415.id" "groupParts213.gi";
connectAttr "groupParts214.og" "transferAttributes55.ip[0].ig";
connectAttr "groupId416.id" "transferAttributes55.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes55.src[0]";
connectAttr "groupParts215.og" "tweak55.ip[0].ig";
connectAttr "groupId417.id" "tweak55.ip[0].gi";
connectAttr "groupId416.msg" "set55.gn" -na;
connectAttr "polySurfaceShape68.iog.og[1]" "set55.dsm" -na;
connectAttr "transferAttributes55.msg" "set55.ub[0]";
connectAttr "tweak55.og[0]" "groupParts214.ig";
connectAttr "groupId416.id" "groupParts214.gi";
connectAttr "groupId417.msg" "tweakSet55.gn" -na;
connectAttr "polySurfaceShape68.iog.og[2]" "tweakSet55.dsm" -na;
connectAttr "tweak55.msg" "tweakSet55.ub[0]";
connectAttr "polySurfaceShape68Orig.w" "groupParts215.ig";
connectAttr "groupId417.id" "groupParts215.gi";
connectAttr "groupParts216.og" "transferAttributes56.ip[0].ig";
connectAttr "groupId418.id" "transferAttributes56.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes56.src[0]";
connectAttr "groupParts217.og" "tweak56.ip[0].ig";
connectAttr "groupId419.id" "tweak56.ip[0].gi";
connectAttr "groupId418.msg" "set56.gn" -na;
connectAttr "polySurfaceShape37.iog.og[1]" "set56.dsm" -na;
connectAttr "transferAttributes56.msg" "set56.ub[0]";
connectAttr "tweak56.og[0]" "groupParts216.ig";
connectAttr "groupId418.id" "groupParts216.gi";
connectAttr "groupId419.msg" "tweakSet56.gn" -na;
connectAttr "polySurfaceShape37.iog.og[2]" "tweakSet56.dsm" -na;
connectAttr "tweak56.msg" "tweakSet56.ub[0]";
connectAttr "polySurfaceShape37Orig.w" "groupParts217.ig";
connectAttr "groupId419.id" "groupParts217.gi";
connectAttr "groupParts218.og" "transferAttributes57.ip[0].ig";
connectAttr "groupId420.id" "transferAttributes57.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes57.src[0]";
connectAttr "groupParts219.og" "tweak57.ip[0].ig";
connectAttr "groupId421.id" "tweak57.ip[0].gi";
connectAttr "groupId420.msg" "set57.gn" -na;
connectAttr "polySurfaceShape38.iog.og[1]" "set57.dsm" -na;
connectAttr "transferAttributes57.msg" "set57.ub[0]";
connectAttr "tweak57.og[0]" "groupParts218.ig";
connectAttr "groupId420.id" "groupParts218.gi";
connectAttr "groupId421.msg" "tweakSet57.gn" -na;
connectAttr "polySurfaceShape38.iog.og[2]" "tweakSet57.dsm" -na;
connectAttr "tweak57.msg" "tweakSet57.ub[0]";
connectAttr "polySurfaceShape38Orig.w" "groupParts219.ig";
connectAttr "groupId421.id" "groupParts219.gi";
connectAttr "groupParts220.og" "transferAttributes58.ip[0].ig";
connectAttr "groupId422.id" "transferAttributes58.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes58.src[0]";
connectAttr "groupParts221.og" "tweak58.ip[0].ig";
connectAttr "groupId423.id" "tweak58.ip[0].gi";
connectAttr "groupId422.msg" "set58.gn" -na;
connectAttr "polySurfaceShape40.iog.og[1]" "set58.dsm" -na;
connectAttr "transferAttributes58.msg" "set58.ub[0]";
connectAttr "tweak58.og[0]" "groupParts220.ig";
connectAttr "groupId422.id" "groupParts220.gi";
connectAttr "groupId423.msg" "tweakSet58.gn" -na;
connectAttr "polySurfaceShape40.iog.og[2]" "tweakSet58.dsm" -na;
connectAttr "tweak58.msg" "tweakSet58.ub[0]";
connectAttr "polySurfaceShape40Orig.w" "groupParts221.ig";
connectAttr "groupId423.id" "groupParts221.gi";
connectAttr "groupParts222.og" "transferAttributes59.ip[0].ig";
connectAttr "groupId424.id" "transferAttributes59.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes59.src[0]";
connectAttr "groupParts223.og" "tweak59.ip[0].ig";
connectAttr "groupId425.id" "tweak59.ip[0].gi";
connectAttr "groupId424.msg" "set59.gn" -na;
connectAttr "polySurfaceShape48.iog.og[1]" "set59.dsm" -na;
connectAttr "transferAttributes59.msg" "set59.ub[0]";
connectAttr "tweak59.og[0]" "groupParts222.ig";
connectAttr "groupId424.id" "groupParts222.gi";
connectAttr "groupId425.msg" "tweakSet59.gn" -na;
connectAttr "polySurfaceShape48.iog.og[2]" "tweakSet59.dsm" -na;
connectAttr "tweak59.msg" "tweakSet59.ub[0]";
connectAttr "polySurfaceShape48Orig.w" "groupParts223.ig";
connectAttr "groupId425.id" "groupParts223.gi";
connectAttr "groupParts224.og" "transferAttributes60.ip[0].ig";
connectAttr "groupId426.id" "transferAttributes60.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes60.src[0]";
connectAttr "groupParts225.og" "tweak60.ip[0].ig";
connectAttr "groupId427.id" "tweak60.ip[0].gi";
connectAttr "groupId426.msg" "set60.gn" -na;
connectAttr "polySurfaceShape49.iog.og[1]" "set60.dsm" -na;
connectAttr "transferAttributes60.msg" "set60.ub[0]";
connectAttr "tweak60.og[0]" "groupParts224.ig";
connectAttr "groupId426.id" "groupParts224.gi";
connectAttr "groupId427.msg" "tweakSet60.gn" -na;
connectAttr "polySurfaceShape49.iog.og[2]" "tweakSet60.dsm" -na;
connectAttr "tweak60.msg" "tweakSet60.ub[0]";
connectAttr "polySurfaceShape49Orig.w" "groupParts225.ig";
connectAttr "groupId427.id" "groupParts225.gi";
connectAttr "groupParts226.og" "transferAttributes61.ip[0].ig";
connectAttr "groupId428.id" "transferAttributes61.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes61.src[0]";
connectAttr "groupParts227.og" "tweak61.ip[0].ig";
connectAttr "groupId429.id" "tweak61.ip[0].gi";
connectAttr "groupId428.msg" "set61.gn" -na;
connectAttr "polySurfaceShape50.iog.og[1]" "set61.dsm" -na;
connectAttr "transferAttributes61.msg" "set61.ub[0]";
connectAttr "tweak61.og[0]" "groupParts226.ig";
connectAttr "groupId428.id" "groupParts226.gi";
connectAttr "groupId429.msg" "tweakSet61.gn" -na;
connectAttr "polySurfaceShape50.iog.og[2]" "tweakSet61.dsm" -na;
connectAttr "tweak61.msg" "tweakSet61.ub[0]";
connectAttr "polySurfaceShape50Orig.w" "groupParts227.ig";
connectAttr "groupId429.id" "groupParts227.gi";
connectAttr "groupParts228.og" "transferAttributes62.ip[0].ig";
connectAttr "groupId430.id" "transferAttributes62.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes62.src[0]";
connectAttr "groupParts229.og" "tweak62.ip[0].ig";
connectAttr "groupId431.id" "tweak62.ip[0].gi";
connectAttr "groupId430.msg" "set62.gn" -na;
connectAttr "polySurfaceShape51.iog.og[1]" "set62.dsm" -na;
connectAttr "transferAttributes62.msg" "set62.ub[0]";
connectAttr "tweak62.og[0]" "groupParts228.ig";
connectAttr "groupId430.id" "groupParts228.gi";
connectAttr "groupId431.msg" "tweakSet62.gn" -na;
connectAttr "polySurfaceShape51.iog.og[2]" "tweakSet62.dsm" -na;
connectAttr "tweak62.msg" "tweakSet62.ub[0]";
connectAttr "polySurfaceShape51Orig.w" "groupParts229.ig";
connectAttr "groupId431.id" "groupParts229.gi";
connectAttr "groupParts230.og" "transferAttributes63.ip[0].ig";
connectAttr "groupId432.id" "transferAttributes63.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes63.src[0]";
connectAttr "groupParts231.og" "tweak63.ip[0].ig";
connectAttr "groupId433.id" "tweak63.ip[0].gi";
connectAttr "groupId432.msg" "set63.gn" -na;
connectAttr "polySurfaceShape52.iog.og[1]" "set63.dsm" -na;
connectAttr "transferAttributes63.msg" "set63.ub[0]";
connectAttr "tweak63.og[0]" "groupParts230.ig";
connectAttr "groupId432.id" "groupParts230.gi";
connectAttr "groupId433.msg" "tweakSet63.gn" -na;
connectAttr "polySurfaceShape52.iog.og[2]" "tweakSet63.dsm" -na;
connectAttr "tweak63.msg" "tweakSet63.ub[0]";
connectAttr "polySurfaceShape52Orig.w" "groupParts231.ig";
connectAttr "groupId433.id" "groupParts231.gi";
connectAttr "groupParts232.og" "transferAttributes64.ip[0].ig";
connectAttr "groupId434.id" "transferAttributes64.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes64.src[0]";
connectAttr "groupParts233.og" "tweak64.ip[0].ig";
connectAttr "groupId435.id" "tweak64.ip[0].gi";
connectAttr "groupId434.msg" "set64.gn" -na;
connectAttr "polySurfaceShape21.iog.og[1]" "set64.dsm" -na;
connectAttr "transferAttributes64.msg" "set64.ub[0]";
connectAttr "tweak64.og[0]" "groupParts232.ig";
connectAttr "groupId434.id" "groupParts232.gi";
connectAttr "groupId435.msg" "tweakSet64.gn" -na;
connectAttr "polySurfaceShape21.iog.og[2]" "tweakSet64.dsm" -na;
connectAttr "tweak64.msg" "tweakSet64.ub[0]";
connectAttr "polySurfaceShape21Orig.w" "groupParts233.ig";
connectAttr "groupId435.id" "groupParts233.gi";
connectAttr "groupParts234.og" "transferAttributes65.ip[0].ig";
connectAttr "groupId436.id" "transferAttributes65.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes65.src[0]";
connectAttr "groupParts235.og" "tweak65.ip[0].ig";
connectAttr "groupId437.id" "tweak65.ip[0].gi";
connectAttr "groupId436.msg" "set65.gn" -na;
connectAttr "polySurfaceShape22.iog.og[1]" "set65.dsm" -na;
connectAttr "transferAttributes65.msg" "set65.ub[0]";
connectAttr "tweak65.og[0]" "groupParts234.ig";
connectAttr "groupId436.id" "groupParts234.gi";
connectAttr "groupId437.msg" "tweakSet65.gn" -na;
connectAttr "polySurfaceShape22.iog.og[2]" "tweakSet65.dsm" -na;
connectAttr "tweak65.msg" "tweakSet65.ub[0]";
connectAttr "polySurfaceShape22Orig.w" "groupParts235.ig";
connectAttr "groupId437.id" "groupParts235.gi";
connectAttr "groupParts236.og" "transferAttributes66.ip[0].ig";
connectAttr "groupId438.id" "transferAttributes66.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes66.src[0]";
connectAttr "groupParts237.og" "tweak66.ip[0].ig";
connectAttr "groupId439.id" "tweak66.ip[0].gi";
connectAttr "groupId438.msg" "set66.gn" -na;
connectAttr "polySurfaceShape24.iog.og[1]" "set66.dsm" -na;
connectAttr "transferAttributes66.msg" "set66.ub[0]";
connectAttr "tweak66.og[0]" "groupParts236.ig";
connectAttr "groupId438.id" "groupParts236.gi";
connectAttr "groupId439.msg" "tweakSet66.gn" -na;
connectAttr "polySurfaceShape24.iog.og[2]" "tweakSet66.dsm" -na;
connectAttr "tweak66.msg" "tweakSet66.ub[0]";
connectAttr "polySurfaceShape24Orig.w" "groupParts237.ig";
connectAttr "groupId439.id" "groupParts237.gi";
connectAttr "groupParts238.og" "transferAttributes67.ip[0].ig";
connectAttr "groupId440.id" "transferAttributes67.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes67.src[0]";
connectAttr "groupParts239.og" "tweak67.ip[0].ig";
connectAttr "groupId441.id" "tweak67.ip[0].gi";
connectAttr "groupId440.msg" "set67.gn" -na;
connectAttr "polySurfaceShape32.iog.og[1]" "set67.dsm" -na;
connectAttr "transferAttributes67.msg" "set67.ub[0]";
connectAttr "tweak67.og[0]" "groupParts238.ig";
connectAttr "groupId440.id" "groupParts238.gi";
connectAttr "groupId441.msg" "tweakSet67.gn" -na;
connectAttr "polySurfaceShape32.iog.og[2]" "tweakSet67.dsm" -na;
connectAttr "tweak67.msg" "tweakSet67.ub[0]";
connectAttr "polySurfaceShape32Orig.w" "groupParts239.ig";
connectAttr "groupId441.id" "groupParts239.gi";
connectAttr "groupParts240.og" "transferAttributes68.ip[0].ig";
connectAttr "groupId442.id" "transferAttributes68.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes68.src[0]";
connectAttr "groupParts241.og" "tweak68.ip[0].ig";
connectAttr "groupId443.id" "tweak68.ip[0].gi";
connectAttr "groupId442.msg" "set68.gn" -na;
connectAttr "polySurfaceShape33.iog.og[1]" "set68.dsm" -na;
connectAttr "transferAttributes68.msg" "set68.ub[0]";
connectAttr "tweak68.og[0]" "groupParts240.ig";
connectAttr "groupId442.id" "groupParts240.gi";
connectAttr "groupId443.msg" "tweakSet68.gn" -na;
connectAttr "polySurfaceShape33.iog.og[2]" "tweakSet68.dsm" -na;
connectAttr "tweak68.msg" "tweakSet68.ub[0]";
connectAttr "polySurfaceShape33Orig.w" "groupParts241.ig";
connectAttr "groupId443.id" "groupParts241.gi";
connectAttr "groupParts242.og" "transferAttributes69.ip[0].ig";
connectAttr "groupId444.id" "transferAttributes69.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes69.src[0]";
connectAttr "groupParts243.og" "tweak69.ip[0].ig";
connectAttr "groupId445.id" "tweak69.ip[0].gi";
connectAttr "groupId444.msg" "set69.gn" -na;
connectAttr "polySurfaceShape34.iog.og[1]" "set69.dsm" -na;
connectAttr "transferAttributes69.msg" "set69.ub[0]";
connectAttr "tweak69.og[0]" "groupParts242.ig";
connectAttr "groupId444.id" "groupParts242.gi";
connectAttr "groupId445.msg" "tweakSet69.gn" -na;
connectAttr "polySurfaceShape34.iog.og[2]" "tweakSet69.dsm" -na;
connectAttr "tweak69.msg" "tweakSet69.ub[0]";
connectAttr "polySurfaceShape34Orig.w" "groupParts243.ig";
connectAttr "groupId445.id" "groupParts243.gi";
connectAttr "groupParts244.og" "transferAttributes70.ip[0].ig";
connectAttr "groupId446.id" "transferAttributes70.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes70.src[0]";
connectAttr "groupParts245.og" "tweak70.ip[0].ig";
connectAttr "groupId447.id" "tweak70.ip[0].gi";
connectAttr "groupId446.msg" "set70.gn" -na;
connectAttr "polySurfaceShape35.iog.og[1]" "set70.dsm" -na;
connectAttr "transferAttributes70.msg" "set70.ub[0]";
connectAttr "tweak70.og[0]" "groupParts244.ig";
connectAttr "groupId446.id" "groupParts244.gi";
connectAttr "groupId447.msg" "tweakSet70.gn" -na;
connectAttr "polySurfaceShape35.iog.og[2]" "tweakSet70.dsm" -na;
connectAttr "tweak70.msg" "tweakSet70.ub[0]";
connectAttr "polySurfaceShape35Orig.w" "groupParts245.ig";
connectAttr "groupId447.id" "groupParts245.gi";
connectAttr "groupParts246.og" "transferAttributes71.ip[0].ig";
connectAttr "groupId448.id" "transferAttributes71.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes71.src[0]";
connectAttr "groupParts247.og" "tweak71.ip[0].ig";
connectAttr "groupId449.id" "tweak71.ip[0].gi";
connectAttr "groupId448.msg" "set71.gn" -na;
connectAttr "polySurfaceShape36.iog.og[1]" "set71.dsm" -na;
connectAttr "transferAttributes71.msg" "set71.ub[0]";
connectAttr "tweak71.og[0]" "groupParts246.ig";
connectAttr "groupId448.id" "groupParts246.gi";
connectAttr "groupId449.msg" "tweakSet71.gn" -na;
connectAttr "polySurfaceShape36.iog.og[2]" "tweakSet71.dsm" -na;
connectAttr "tweak71.msg" "tweakSet71.ub[0]";
connectAttr "polySurfaceShape36Orig.w" "groupParts247.ig";
connectAttr "groupId449.id" "groupParts247.gi";
connectAttr "groupParts248.og" "transferAttributes72.ip[0].ig";
connectAttr "groupId450.id" "transferAttributes72.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes72.src[0]";
connectAttr "groupParts249.og" "tweak72.ip[0].ig";
connectAttr "groupId451.id" "tweak72.ip[0].gi";
connectAttr "groupId450.msg" "set72.gn" -na;
connectAttr "polySurfaceShape5.iog.og[1]" "set72.dsm" -na;
connectAttr "transferAttributes72.msg" "set72.ub[0]";
connectAttr "tweak72.og[0]" "groupParts248.ig";
connectAttr "groupId450.id" "groupParts248.gi";
connectAttr "groupId451.msg" "tweakSet72.gn" -na;
connectAttr "polySurfaceShape5.iog.og[2]" "tweakSet72.dsm" -na;
connectAttr "tweak72.msg" "tweakSet72.ub[0]";
connectAttr "polySurfaceShape5Orig.w" "groupParts249.ig";
connectAttr "groupId451.id" "groupParts249.gi";
connectAttr "groupParts250.og" "transferAttributes73.ip[0].ig";
connectAttr "groupId452.id" "transferAttributes73.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes73.src[0]";
connectAttr "groupParts251.og" "tweak73.ip[0].ig";
connectAttr "groupId453.id" "tweak73.ip[0].gi";
connectAttr "groupId452.msg" "set73.gn" -na;
connectAttr "polySurfaceShape6.iog.og[1]" "set73.dsm" -na;
connectAttr "transferAttributes73.msg" "set73.ub[0]";
connectAttr "tweak73.og[0]" "groupParts250.ig";
connectAttr "groupId452.id" "groupParts250.gi";
connectAttr "groupId453.msg" "tweakSet73.gn" -na;
connectAttr "polySurfaceShape6.iog.og[2]" "tweakSet73.dsm" -na;
connectAttr "tweak73.msg" "tweakSet73.ub[0]";
connectAttr "polySurfaceShape6Orig.w" "groupParts251.ig";
connectAttr "groupId453.id" "groupParts251.gi";
connectAttr "groupParts252.og" "transferAttributes74.ip[0].ig";
connectAttr "groupId454.id" "transferAttributes74.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes74.src[0]";
connectAttr "groupParts253.og" "tweak74.ip[0].ig";
connectAttr "groupId455.id" "tweak74.ip[0].gi";
connectAttr "groupId454.msg" "set74.gn" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "set74.dsm" -na;
connectAttr "transferAttributes74.msg" "set74.ub[0]";
connectAttr "tweak74.og[0]" "groupParts252.ig";
connectAttr "groupId454.id" "groupParts252.gi";
connectAttr "groupId455.msg" "tweakSet74.gn" -na;
connectAttr "polySurfaceShape8.iog.og[2]" "tweakSet74.dsm" -na;
connectAttr "tweak74.msg" "tweakSet74.ub[0]";
connectAttr "polySurfaceShape8Orig.w" "groupParts253.ig";
connectAttr "groupId455.id" "groupParts253.gi";
connectAttr "groupParts254.og" "transferAttributes75.ip[0].ig";
connectAttr "groupId456.id" "transferAttributes75.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes75.src[0]";
connectAttr "groupParts255.og" "tweak75.ip[0].ig";
connectAttr "groupId457.id" "tweak75.ip[0].gi";
connectAttr "groupId456.msg" "set75.gn" -na;
connectAttr "polySurfaceShape16.iog.og[1]" "set75.dsm" -na;
connectAttr "transferAttributes75.msg" "set75.ub[0]";
connectAttr "tweak75.og[0]" "groupParts254.ig";
connectAttr "groupId456.id" "groupParts254.gi";
connectAttr "groupId457.msg" "tweakSet75.gn" -na;
connectAttr "polySurfaceShape16.iog.og[2]" "tweakSet75.dsm" -na;
connectAttr "tweak75.msg" "tweakSet75.ub[0]";
connectAttr "polySurfaceShape16Orig.w" "groupParts255.ig";
connectAttr "groupId457.id" "groupParts255.gi";
connectAttr "groupParts256.og" "transferAttributes76.ip[0].ig";
connectAttr "groupId458.id" "transferAttributes76.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes76.src[0]";
connectAttr "groupParts257.og" "tweak76.ip[0].ig";
connectAttr "groupId459.id" "tweak76.ip[0].gi";
connectAttr "groupId458.msg" "set76.gn" -na;
connectAttr "polySurfaceShape17.iog.og[1]" "set76.dsm" -na;
connectAttr "transferAttributes76.msg" "set76.ub[0]";
connectAttr "tweak76.og[0]" "groupParts256.ig";
connectAttr "groupId458.id" "groupParts256.gi";
connectAttr "groupId459.msg" "tweakSet76.gn" -na;
connectAttr "polySurfaceShape17.iog.og[2]" "tweakSet76.dsm" -na;
connectAttr "tweak76.msg" "tweakSet76.ub[0]";
connectAttr "polySurfaceShape17Orig.w" "groupParts257.ig";
connectAttr "groupId459.id" "groupParts257.gi";
connectAttr "groupParts258.og" "transferAttributes77.ip[0].ig";
connectAttr "groupId460.id" "transferAttributes77.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes77.src[0]";
connectAttr "groupParts259.og" "tweak77.ip[0].ig";
connectAttr "groupId461.id" "tweak77.ip[0].gi";
connectAttr "groupId460.msg" "set77.gn" -na;
connectAttr "polySurfaceShape18.iog.og[1]" "set77.dsm" -na;
connectAttr "transferAttributes77.msg" "set77.ub[0]";
connectAttr "tweak77.og[0]" "groupParts258.ig";
connectAttr "groupId460.id" "groupParts258.gi";
connectAttr "groupId461.msg" "tweakSet77.gn" -na;
connectAttr "polySurfaceShape18.iog.og[2]" "tweakSet77.dsm" -na;
connectAttr "tweak77.msg" "tweakSet77.ub[0]";
connectAttr "polySurfaceShape18Orig.w" "groupParts259.ig";
connectAttr "groupId461.id" "groupParts259.gi";
connectAttr "groupParts260.og" "transferAttributes78.ip[0].ig";
connectAttr "groupId462.id" "transferAttributes78.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes78.src[0]";
connectAttr "groupParts261.og" "tweak78.ip[0].ig";
connectAttr "groupId463.id" "tweak78.ip[0].gi";
connectAttr "groupId462.msg" "set78.gn" -na;
connectAttr "polySurfaceShape19.iog.og[1]" "set78.dsm" -na;
connectAttr "transferAttributes78.msg" "set78.ub[0]";
connectAttr "tweak78.og[0]" "groupParts260.ig";
connectAttr "groupId462.id" "groupParts260.gi";
connectAttr "groupId463.msg" "tweakSet78.gn" -na;
connectAttr "polySurfaceShape19.iog.og[2]" "tweakSet78.dsm" -na;
connectAttr "tweak78.msg" "tweakSet78.ub[0]";
connectAttr "polySurfaceShape19Orig.w" "groupParts261.ig";
connectAttr "groupId463.id" "groupParts261.gi";
connectAttr "groupParts262.og" "transferAttributes79.ip[0].ig";
connectAttr "groupId464.id" "transferAttributes79.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes79.src[0]";
connectAttr "groupParts263.og" "tweak79.ip[0].ig";
connectAttr "groupId465.id" "tweak79.ip[0].gi";
connectAttr "groupId464.msg" "set79.gn" -na;
connectAttr "polySurfaceShape20.iog.og[1]" "set79.dsm" -na;
connectAttr "transferAttributes79.msg" "set79.ub[0]";
connectAttr "tweak79.og[0]" "groupParts262.ig";
connectAttr "groupId464.id" "groupParts262.gi";
connectAttr "groupId465.msg" "tweakSet79.gn" -na;
connectAttr "polySurfaceShape20.iog.og[2]" "tweakSet79.dsm" -na;
connectAttr "tweak79.msg" "tweakSet79.ub[0]";
connectAttr "polySurfaceShape20Orig.w" "groupParts263.ig";
connectAttr "groupId465.id" "groupParts263.gi";
connectAttr "groupParts264.og" "transferAttributes80.ip[0].ig";
connectAttr "groupId466.id" "transferAttributes80.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes80.src[0]";
connectAttr "groupParts265.og" "tweak80.ip[0].ig";
connectAttr "groupId467.id" "tweak80.ip[0].gi";
connectAttr "groupId466.msg" "set80.gn" -na;
connectAttr "polySurfaceShape70.iog.og[1]" "set80.dsm" -na;
connectAttr "transferAttributes80.msg" "set80.ub[0]";
connectAttr "tweak80.og[0]" "groupParts264.ig";
connectAttr "groupId466.id" "groupParts264.gi";
connectAttr "groupId467.msg" "tweakSet80.gn" -na;
connectAttr "polySurfaceShape70.iog.og[2]" "tweakSet80.dsm" -na;
connectAttr "tweak80.msg" "tweakSet80.ub[0]";
connectAttr "polySurfaceShape70Orig.w" "groupParts265.ig";
connectAttr "groupId467.id" "groupParts265.gi";
connectAttr "groupParts266.og" "transferAttributes81.ip[0].ig";
connectAttr "groupId468.id" "transferAttributes81.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes81.src[0]";
connectAttr "groupParts267.og" "tweak81.ip[0].ig";
connectAttr "groupId469.id" "tweak81.ip[0].gi";
connectAttr "groupId468.msg" "set81.gn" -na;
connectAttr "polySurfaceShape71.iog.og[1]" "set81.dsm" -na;
connectAttr "transferAttributes81.msg" "set81.ub[0]";
connectAttr "tweak81.og[0]" "groupParts266.ig";
connectAttr "groupId468.id" "groupParts266.gi";
connectAttr "groupId469.msg" "tweakSet81.gn" -na;
connectAttr "polySurfaceShape71.iog.og[2]" "tweakSet81.dsm" -na;
connectAttr "tweak81.msg" "tweakSet81.ub[0]";
connectAttr "polySurfaceShape71Orig.w" "groupParts267.ig";
connectAttr "groupId469.id" "groupParts267.gi";
connectAttr "groupParts268.og" "transferAttributes82.ip[0].ig";
connectAttr "groupId470.id" "transferAttributes82.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes82.src[0]";
connectAttr "groupParts269.og" "tweak82.ip[0].ig";
connectAttr "groupId471.id" "tweak82.ip[0].gi";
connectAttr "groupId470.msg" "set82.gn" -na;
connectAttr "polySurfaceShape73.iog.og[1]" "set82.dsm" -na;
connectAttr "transferAttributes82.msg" "set82.ub[0]";
connectAttr "tweak82.og[0]" "groupParts268.ig";
connectAttr "groupId470.id" "groupParts268.gi";
connectAttr "groupId471.msg" "tweakSet82.gn" -na;
connectAttr "polySurfaceShape73.iog.og[2]" "tweakSet82.dsm" -na;
connectAttr "tweak82.msg" "tweakSet82.ub[0]";
connectAttr "polySurfaceShape73Orig.w" "groupParts269.ig";
connectAttr "groupId471.id" "groupParts269.gi";
connectAttr "groupParts270.og" "transferAttributes83.ip[0].ig";
connectAttr "groupId472.id" "transferAttributes83.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes83.src[0]";
connectAttr "groupParts271.og" "tweak83.ip[0].ig";
connectAttr "groupId473.id" "tweak83.ip[0].gi";
connectAttr "groupId472.msg" "set83.gn" -na;
connectAttr "polySurfaceShape81.iog.og[1]" "set83.dsm" -na;
connectAttr "transferAttributes83.msg" "set83.ub[0]";
connectAttr "tweak83.og[0]" "groupParts270.ig";
connectAttr "groupId472.id" "groupParts270.gi";
connectAttr "groupId473.msg" "tweakSet83.gn" -na;
connectAttr "polySurfaceShape81.iog.og[2]" "tweakSet83.dsm" -na;
connectAttr "tweak83.msg" "tweakSet83.ub[0]";
connectAttr "polySurfaceShape81Orig.w" "groupParts271.ig";
connectAttr "groupId473.id" "groupParts271.gi";
connectAttr "groupParts272.og" "transferAttributes84.ip[0].ig";
connectAttr "groupId474.id" "transferAttributes84.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes84.src[0]";
connectAttr "groupParts273.og" "tweak84.ip[0].ig";
connectAttr "groupId475.id" "tweak84.ip[0].gi";
connectAttr "groupId474.msg" "set84.gn" -na;
connectAttr "polySurfaceShape82.iog.og[1]" "set84.dsm" -na;
connectAttr "transferAttributes84.msg" "set84.ub[0]";
connectAttr "tweak84.og[0]" "groupParts272.ig";
connectAttr "groupId474.id" "groupParts272.gi";
connectAttr "groupId475.msg" "tweakSet84.gn" -na;
connectAttr "polySurfaceShape82.iog.og[2]" "tweakSet84.dsm" -na;
connectAttr "tweak84.msg" "tweakSet84.ub[0]";
connectAttr "polySurfaceShape82Orig.w" "groupParts273.ig";
connectAttr "groupId475.id" "groupParts273.gi";
connectAttr "groupParts274.og" "transferAttributes85.ip[0].ig";
connectAttr "groupId476.id" "transferAttributes85.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes85.src[0]";
connectAttr "groupParts275.og" "tweak85.ip[0].ig";
connectAttr "groupId477.id" "tweak85.ip[0].gi";
connectAttr "groupId476.msg" "set85.gn" -na;
connectAttr "polySurfaceShape83.iog.og[1]" "set85.dsm" -na;
connectAttr "transferAttributes85.msg" "set85.ub[0]";
connectAttr "tweak85.og[0]" "groupParts274.ig";
connectAttr "groupId476.id" "groupParts274.gi";
connectAttr "groupId477.msg" "tweakSet85.gn" -na;
connectAttr "polySurfaceShape83.iog.og[2]" "tweakSet85.dsm" -na;
connectAttr "tweak85.msg" "tweakSet85.ub[0]";
connectAttr "polySurfaceShape83Orig.w" "groupParts275.ig";
connectAttr "groupId477.id" "groupParts275.gi";
connectAttr "groupParts276.og" "transferAttributes86.ip[0].ig";
connectAttr "groupId478.id" "transferAttributes86.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes86.src[0]";
connectAttr "groupParts277.og" "tweak86.ip[0].ig";
connectAttr "groupId479.id" "tweak86.ip[0].gi";
connectAttr "groupId478.msg" "set86.gn" -na;
connectAttr "polySurfaceShape84.iog.og[1]" "set86.dsm" -na;
connectAttr "transferAttributes86.msg" "set86.ub[0]";
connectAttr "tweak86.og[0]" "groupParts276.ig";
connectAttr "groupId478.id" "groupParts276.gi";
connectAttr "groupId479.msg" "tweakSet86.gn" -na;
connectAttr "polySurfaceShape84.iog.og[2]" "tweakSet86.dsm" -na;
connectAttr "tweak86.msg" "tweakSet86.ub[0]";
connectAttr "polySurfaceShape84Orig.w" "groupParts277.ig";
connectAttr "groupId479.id" "groupParts277.gi";
connectAttr "groupParts278.og" "transferAttributes87.ip[0].ig";
connectAttr "groupId480.id" "transferAttributes87.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes87.src[0]";
connectAttr "groupParts279.og" "tweak87.ip[0].ig";
connectAttr "groupId481.id" "tweak87.ip[0].gi";
connectAttr "groupId480.msg" "set87.gn" -na;
connectAttr "polySurfaceShape85.iog.og[1]" "set87.dsm" -na;
connectAttr "transferAttributes87.msg" "set87.ub[0]";
connectAttr "tweak87.og[0]" "groupParts278.ig";
connectAttr "groupId480.id" "groupParts278.gi";
connectAttr "groupId481.msg" "tweakSet87.gn" -na;
connectAttr "polySurfaceShape85.iog.og[2]" "tweakSet87.dsm" -na;
connectAttr "tweak87.msg" "tweakSet87.ub[0]";
connectAttr "polySurfaceShape85Orig.w" "groupParts279.ig";
connectAttr "groupId481.id" "groupParts279.gi";
connectAttr "groupParts280.og" "transferAttributes88.ip[0].ig";
connectAttr "groupId482.id" "transferAttributes88.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes88.src[0]";
connectAttr "groupParts281.og" "tweak88.ip[0].ig";
connectAttr "groupId483.id" "tweak88.ip[0].gi";
connectAttr "groupId482.msg" "set88.gn" -na;
connectAttr "polySurfaceShape86.iog.og[1]" "set88.dsm" -na;
connectAttr "transferAttributes88.msg" "set88.ub[0]";
connectAttr "tweak88.og[0]" "groupParts280.ig";
connectAttr "groupId482.id" "groupParts280.gi";
connectAttr "groupId483.msg" "tweakSet88.gn" -na;
connectAttr "polySurfaceShape86.iog.og[2]" "tweakSet88.dsm" -na;
connectAttr "tweak88.msg" "tweakSet88.ub[0]";
connectAttr "polySurfaceShape86Orig.w" "groupParts281.ig";
connectAttr "groupId483.id" "groupParts281.gi";
connectAttr "groupParts282.og" "transferAttributes89.ip[0].ig";
connectAttr "groupId484.id" "transferAttributes89.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes89.src[0]";
connectAttr "groupParts283.og" "tweak89.ip[0].ig";
connectAttr "groupId485.id" "tweak89.ip[0].gi";
connectAttr "groupId484.msg" "set89.gn" -na;
connectAttr "polySurfaceShape87.iog.og[1]" "set89.dsm" -na;
connectAttr "transferAttributes89.msg" "set89.ub[0]";
connectAttr "tweak89.og[0]" "groupParts282.ig";
connectAttr "groupId484.id" "groupParts282.gi";
connectAttr "groupId485.msg" "tweakSet89.gn" -na;
connectAttr "polySurfaceShape87.iog.og[2]" "tweakSet89.dsm" -na;
connectAttr "tweak89.msg" "tweakSet89.ub[0]";
connectAttr "polySurfaceShape87Orig.w" "groupParts283.ig";
connectAttr "groupId485.id" "groupParts283.gi";
connectAttr "groupParts284.og" "transferAttributes90.ip[0].ig";
connectAttr "groupId486.id" "transferAttributes90.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes90.src[0]";
connectAttr "groupParts285.og" "tweak90.ip[0].ig";
connectAttr "groupId487.id" "tweak90.ip[0].gi";
connectAttr "groupId486.msg" "set90.gn" -na;
connectAttr "polySurfaceShape89.iog.og[1]" "set90.dsm" -na;
connectAttr "transferAttributes90.msg" "set90.ub[0]";
connectAttr "tweak90.og[0]" "groupParts284.ig";
connectAttr "groupId486.id" "groupParts284.gi";
connectAttr "groupId487.msg" "tweakSet90.gn" -na;
connectAttr "polySurfaceShape89.iog.og[2]" "tweakSet90.dsm" -na;
connectAttr "tweak90.msg" "tweakSet90.ub[0]";
connectAttr "polySurfaceShape89Orig.w" "groupParts285.ig";
connectAttr "groupId487.id" "groupParts285.gi";
connectAttr "groupParts286.og" "transferAttributes91.ip[0].ig";
connectAttr "groupId488.id" "transferAttributes91.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes91.src[0]";
connectAttr "groupParts287.og" "tweak91.ip[0].ig";
connectAttr "groupId489.id" "tweak91.ip[0].gi";
connectAttr "groupId488.msg" "set91.gn" -na;
connectAttr "polySurfaceShape97.iog.og[1]" "set91.dsm" -na;
connectAttr "transferAttributes91.msg" "set91.ub[0]";
connectAttr "tweak91.og[0]" "groupParts286.ig";
connectAttr "groupId488.id" "groupParts286.gi";
connectAttr "groupId489.msg" "tweakSet91.gn" -na;
connectAttr "polySurfaceShape97.iog.og[2]" "tweakSet91.dsm" -na;
connectAttr "tweak91.msg" "tweakSet91.ub[0]";
connectAttr "polySurfaceShape97Orig.w" "groupParts287.ig";
connectAttr "groupId489.id" "groupParts287.gi";
connectAttr "groupParts288.og" "transferAttributes92.ip[0].ig";
connectAttr "groupId490.id" "transferAttributes92.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes92.src[0]";
connectAttr "groupParts289.og" "tweak92.ip[0].ig";
connectAttr "groupId491.id" "tweak92.ip[0].gi";
connectAttr "groupId490.msg" "set92.gn" -na;
connectAttr "polySurfaceShape98.iog.og[1]" "set92.dsm" -na;
connectAttr "transferAttributes92.msg" "set92.ub[0]";
connectAttr "tweak92.og[0]" "groupParts288.ig";
connectAttr "groupId490.id" "groupParts288.gi";
connectAttr "groupId491.msg" "tweakSet92.gn" -na;
connectAttr "polySurfaceShape98.iog.og[2]" "tweakSet92.dsm" -na;
connectAttr "tweak92.msg" "tweakSet92.ub[0]";
connectAttr "polySurfaceShape98Orig.w" "groupParts289.ig";
connectAttr "groupId491.id" "groupParts289.gi";
connectAttr "groupParts290.og" "transferAttributes93.ip[0].ig";
connectAttr "groupId492.id" "transferAttributes93.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes93.src[0]";
connectAttr "groupParts291.og" "tweak93.ip[0].ig";
connectAttr "groupId493.id" "tweak93.ip[0].gi";
connectAttr "groupId492.msg" "set93.gn" -na;
connectAttr "polySurfaceShape99.iog.og[1]" "set93.dsm" -na;
connectAttr "transferAttributes93.msg" "set93.ub[0]";
connectAttr "tweak93.og[0]" "groupParts290.ig";
connectAttr "groupId492.id" "groupParts290.gi";
connectAttr "groupId493.msg" "tweakSet93.gn" -na;
connectAttr "polySurfaceShape99.iog.og[2]" "tweakSet93.dsm" -na;
connectAttr "tweak93.msg" "tweakSet93.ub[0]";
connectAttr "polySurfaceShape99Orig.w" "groupParts291.ig";
connectAttr "groupId493.id" "groupParts291.gi";
connectAttr "groupParts292.og" "transferAttributes94.ip[0].ig";
connectAttr "groupId494.id" "transferAttributes94.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes94.src[0]";
connectAttr "groupParts293.og" "tweak94.ip[0].ig";
connectAttr "groupId495.id" "tweak94.ip[0].gi";
connectAttr "groupId494.msg" "set94.gn" -na;
connectAttr "polySurfaceShape100.iog.og[1]" "set94.dsm" -na;
connectAttr "transferAttributes94.msg" "set94.ub[0]";
connectAttr "tweak94.og[0]" "groupParts292.ig";
connectAttr "groupId494.id" "groupParts292.gi";
connectAttr "groupId495.msg" "tweakSet94.gn" -na;
connectAttr "polySurfaceShape100.iog.og[2]" "tweakSet94.dsm" -na;
connectAttr "tweak94.msg" "tweakSet94.ub[0]";
connectAttr "polySurfaceShape100Orig.w" "groupParts293.ig";
connectAttr "groupId495.id" "groupParts293.gi";
connectAttr "groupParts294.og" "transferAttributes95.ip[0].ig";
connectAttr "groupId496.id" "transferAttributes95.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes95.src[0]";
connectAttr "groupParts295.og" "tweak95.ip[0].ig";
connectAttr "groupId497.id" "tweak95.ip[0].gi";
connectAttr "groupId496.msg" "set95.gn" -na;
connectAttr "polySurfaceShape101.iog.og[1]" "set95.dsm" -na;
connectAttr "transferAttributes95.msg" "set95.ub[0]";
connectAttr "tweak95.og[0]" "groupParts294.ig";
connectAttr "groupId496.id" "groupParts294.gi";
connectAttr "groupId497.msg" "tweakSet95.gn" -na;
connectAttr "polySurfaceShape101.iog.og[2]" "tweakSet95.dsm" -na;
connectAttr "tweak95.msg" "tweakSet95.ub[0]";
connectAttr "polySurfaceShape101Orig.w" "groupParts295.ig";
connectAttr "groupId497.id" "groupParts295.gi";
connectAttr "groupParts296.og" "transferAttributes96.ip[0].ig";
connectAttr "groupId498.id" "transferAttributes96.ip[0].gi";
connectAttr "polySurfaceShape53.w" "transferAttributes96.src[0]";
connectAttr "groupParts297.og" "tweak96.ip[0].ig";
connectAttr "groupId499.id" "tweak96.ip[0].gi";
connectAttr "groupId498.msg" "set96.gn" -na;
connectAttr "polySurfaceShape102.iog.og[1]" "set96.dsm" -na;
connectAttr "transferAttributes96.msg" "set96.ub[0]";
connectAttr "tweak96.og[0]" "groupParts296.ig";
connectAttr "groupId498.id" "groupParts296.gi";
connectAttr "groupId499.msg" "tweakSet96.gn" -na;
connectAttr "polySurfaceShape102.iog.og[2]" "tweakSet96.dsm" -na;
connectAttr "tweak96.msg" "tweakSet96.ub[0]";
connectAttr "polySurfaceShape102Orig.w" "groupParts297.ig";
connectAttr "groupId499.id" "groupParts297.gi";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube4|transform99|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube4|transform99|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube5|transform98|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube5|transform98|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube6|transform97|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube6|transform97|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube7|transform96|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube7|transform96|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube8|transform95|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube8|transform95|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube9|transform94|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube9|transform94|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube10|transform93|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube10|transform93|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube11|transform92|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube11|transform92|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube12|transform91|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube12|transform91|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube13|transform90|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube13|transform90|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube14|transform89|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube14|transform89|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube15|transform88|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube15|transform88|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube16|transform87|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube16|transform87|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube17|transform86|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube17|transform86|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube18|transform85|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube18|transform85|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube19|transform84|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube19|transform84|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube4|transform83|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube4|transform83|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube5|transform82|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube5|transform82|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube6|transform81|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube6|transform81|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube7|transform80|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube7|transform80|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube8|transform79|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube8|transform79|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube9|transform78|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube9|transform78|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube10|transform77|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube10|transform77|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube11|transform76|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube11|transform76|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube12|transform75|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube12|transform75|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube13|transform74|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube13|transform74|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube14|transform73|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube14|transform73|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube15|transform72|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube15|transform72|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube16|transform71|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube16|transform71|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube17|transform70|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube17|transform70|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube18|transform69|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube18|transform69|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube19|transform68|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pCube19|transform68|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube4|transform67|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube4|transform67|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube5|transform66|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube5|transform66|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube6|transform65|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube6|transform65|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube7|transform64|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube7|transform64|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube8|transform63|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube8|transform63|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube9|transform62|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube9|transform62|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube10|transform61|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube10|transform61|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube11|transform60|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube11|transform60|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube12|transform59|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube12|transform59|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube13|transform58|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube13|transform58|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube14|transform57|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube14|transform57|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube15|transform56|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube15|transform56|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube16|transform55|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube16|transform55|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube17|transform54|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube17|transform54|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube18|transform53|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube18|transform53|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube19|transform52|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pCube19|transform52|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube4|transform51|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube4|transform51|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube5|transform50|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube5|transform50|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube6|transform49|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube6|transform49|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube7|transform48|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube7|transform48|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube8|transform47|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube8|transform47|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube9|transform46|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube9|transform46|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube10|transform45|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube10|transform45|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube11|transform44|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube11|transform44|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube12|transform43|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube12|transform43|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube13|transform42|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube13|transform42|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube14|transform41|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube14|transform41|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube15|transform40|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube15|transform40|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube16|transform39|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube16|transform39|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube17|transform38|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube17|transform38|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube18|transform37|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube18|transform37|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube19|transform36|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pCube19|transform36|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group5|pCube4|transform34|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube4|transform34|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube5|transform33|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube5|transform33|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube6|transform32|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube6|transform32|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube7|transform31|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube7|transform31|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube8|transform30|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube8|transform30|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube9|transform29|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube9|transform29|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube10|transform28|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube10|transform28|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube11|transform27|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube11|transform27|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube12|transform26|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube12|transform26|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube13|transform25|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube13|transform25|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube14|transform24|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube14|transform24|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube15|transform23|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube15|transform23|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube16|transform22|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube16|transform22|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube17|transform21|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube17|transform21|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube18|transform20|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube18|transform20|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube19|transform19|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pCube19|transform19|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube4|transform18|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube4|transform18|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube5|transform17|pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube5|transform17|pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube6|transform16|pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube6|transform16|pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube7|transform15|pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube7|transform15|pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube8|transform14|pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube8|transform14|pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube9|transform13|pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube9|transform13|pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube10|transform12|pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube10|transform12|pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube11|transform11|pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube11|transform11|pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube12|transform10|pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube12|transform10|pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube13|transform9|pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube13|transform9|pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube14|transform8|pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube14|transform8|pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube15|transform7|pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube15|transform7|pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube16|transform6|pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube16|transform6|pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube17|transform5|pCubeShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube17|transform5|pCubeShape17.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube18|transform4|pCubeShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube18|transform4|pCubeShape18.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube19|transform3|pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pCube19|transform3|pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId189.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId204.msg" ":initialShadingGroup.gn" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Floor uved2.ma
