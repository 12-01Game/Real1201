//Maya ASCII 2014 scene
//Name: bed.ma
//Last modified: Wed, Feb 26, 2014 05:18:42 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.7.5";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -77.521116709670792 32.046839773593433 43.548622039280588 ;
	setAttr ".r" -type "double3" -14.138352735827226 -78.599999999676484 4.0228137686081312e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 78.500596361745977;
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
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
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
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "sam_reference:pPlane1";
	setAttr ".t" -type "double3" 0 6.1219323007239224 -11.869937050448875 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "sam_reference:pPlaneShape1" -p "sam_reference:pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99819910724133387 0.52297297306358814 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "sam_reference:locator1";
	setAttr ".t" -type "double3" -1.9787234042553186 9.7778188902604555 -11.835296722840489 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode locator -n "sam_reference:locatorShape1" -p "sam_reference:locator1";
	setAttr -k off ".v";
createNode transform -n "sam_reference:locator2";
	setAttr ".t" -type "double3" -2.1574468085106391 0.76150905963276738 -11.805409752051883 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode locator -n "sam_reference:locatorShape2" -p "sam_reference:locator2";
	setAttr -k off ".v";
createNode transform -n "sam_reference:distanceDimension1";
	setAttr ".t" -type "double3" 0 6.1219323007239224 -11.869937050448875 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode distanceDimShape -n "sam_reference:distanceDimensionShape1" -p "sam_reference:distanceDimension1";
	setAttr -k off ".v";
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0.2496903098413501 8.0357396197947537 19.58323151293909 ;
	setAttr ".s" -type "double3" 1 1.1536594286705595 0.89433088280586737 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0.22485445971191309 10.647903592042169 19.616461812312778 ;
	setAttr ".s" -type "double3" 1.5479854576177805 1.3463306679050575 1.0375198594388921 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 0.42580119661658866 13.899925096233602 34.839924838102021 ;
	setAttr ".s" -type "double3" 1.107595521899355 0.53366080429210561 0.23845490321557727 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0.37736556 0.98934454
		 0.13565548 0.062493756 0.39265659 0.016745176 0.60734344 0.9946723 0.36434454 0.1249875
		 0.36967227 0.12498751 0.37736553 0.1250125 0.63565546 0.062493753 0.62263441 0.76065552
		 0.60734344 0.12498751 0.62263447 0.12498751 0.6303277 0.1250125 0.36434454 0.12501252
		 0.36434454 0.18750626 0.37736553 0.48934448 0.39265656 0.26065546 0.39265668 0.25532773
		 0.60734344 0.23325482 0.60734344 0.1250125 0.60734338 0.26065549 0.62263447 0.26065546
		 0.86434454 0.18750626 0.13565548 0.1250125 0.13032775 0.1250125 0.37736556 0.62501252
		 0.39265659 0.62498748 0.39265659 0.56249374 0.60734338 0.49857244 0.60734338 0.48934454
		 0.60734344 0.62498754 0.62263447 0.62498754 0.86434454 0.1249875 0.86967224 0.1249875
		 0.39265656 0.76065558 0.39265659 0.75532776 0.60734344 0.73325491 0.60734344 0.62501252
		 0.36434454 0.06249376 0.36931539 0.066680014 0.37941417 0.99431545 0.38382828 0.98934454
		 0.38441968 0.99431539 0.39265656 0.98934454 0.39265656 0.9946723 0.39265656 0.062493734
		 0.39265659 0.1249875 0.38382828 0.1249875 0.37736556 0.1249875 0.37941414 0.066680014
		 0.38441968 0.031246886 0.38441968 0.066680014 0.60734344 0.98934454 0.61617172 0.98934454
		 0.61558038 0.99431539 0.62263447 0.98934454 0.62058592 0.99431539 0.63565546 0.1249875
		 0.6303277 0.1249875 0.63068461 0.066680044 0.61617172 0.12498751 0.60734344 0.062493749
		 0.60734344 0.01674518 0.61558038 0.031246906 0.62058592 0.066680036 0.61558038 0.066680036
		 0.38382828 0.26065546 0.38441962 0.25568455 0.37736544 0.26065546 0.37941402 0.25568455
		 0.3696723 0.12501252 0.36931539 0.18331999 0.38382828 0.1250125 0.39265656 0.1250125
		 0.39265659 0.18750626 0.39265656 0.23325482 0.38441968 0.2187531 0.37941414 0.18331999
		 0.38441968 0.18331999 0.63565552 0.12501252 0.63565546 0.18750626 0.63068461 0.18331999
		 0.62058592 0.25568461 0.61617178 0.26065546 0.6155805 0.25568455 0.60734355 0.25532773
		 0.60734344 0.18750626 0.61617172 0.1250125 0.62263447 0.1250125 0.62058592 0.18331999
		 0.61558038 0.2187531 0.61558032 0.18331997 0.38382828 0.62498748 0.38441968 0.56668001
		 0.37736553 0.62498748 0.37941414 0.56668007 0.13565548 0.18750626 0.13068463 0.18331999
		 0.38382828 0.48934454 0.39265656 0.48934451 0.39265656 0.49467224 0.39265656 0.49857244
		 0.38441968 0.49733612 0.37941414 0.49431539 0.38441968 0.49431536 0.86434454 0.12501252
		 0.8696723 0.12501252 0.86931539 0.18331997 0.6205858 0.56668001 0.61617172 0.62498748
		 0.61558032 0.56668007 0.60734344 0.56249374 0.60734344 0.49467227 0.61617172 0.48934454
		 0.62263441 0.48934454 0.62058586 0.49431539 0.61558038 0.49733615 0.61558038 0.49431539
		 0.38382828 0.76065558 0.38441962 0.75568455 0.37736544 0.76065552 0.37941402 0.75568455
		 0.13565548 0.1249875 0.13032775 0.1249875 0.13068463 0.066680029 0.38382828 0.62501252
		 0.39265656 0.62501252 0.39265662 0.68750632 0.39265656 0.73325491 0.38441968 0.71875316
		 0.37941414 0.68331999 0.38441968 0.68331999 0.86434454 0.062493756 0.86931533 0.066680014
		 0.62058586 0.75568461 0.61617172 0.76065552 0.6155805 0.75568449 0.60734332 0.76065558
		 0.60734332 0.75532776 0.60734344 0.68750626 0.61617172 0.62501252 0.62263441 0.62501246
		 0.62058586 0.68331999 0.61558032 0.71875322 0.61558032 0.68332005;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 96 ".vt[0:95]"  -7.23953438 0.43044567 16.98699188 -7.10253143 -0.36104202 16.98699188
		 -6.72823238 -0.94045162 16.98699188 -6.21693087 -1.15252972 16.98699188 -6.21693087 -0.94045067 17.77848053
		 -6.21693087 -0.36104202 18.35788727 -6.21693087 0.43044567 18.56996536 -6.72823238 0.43044567 18.35788727
		 -7.10253096 0.43044567 17.77848053 6.21693087 -1.15252972 16.98699188 6.72823334 -0.94045162 16.98699188
		 7.10253191 -0.36104202 16.98699188 7.23953438 0.43044567 16.98699188 7.10253191 0.43044567 17.77848053
		 6.72823334 0.43044567 18.35788727 6.21693087 0.43044567 18.56996536 6.21693087 -0.36104202 18.35788727
		 6.21693087 -0.94045067 17.77848053 -6.21693087 2.013737679 16.98699188 -6.72823238 1.80165958 16.98699188
		 -7.10253143 1.22224998 16.98699188 -7.23953438 0.43076229 16.98699188 -7.10253096 0.43076229 17.77848053
		 -6.72823238 0.43076229 18.35788727 -6.21693087 0.43076229 18.56996536 -6.21693087 1.22224998 18.35788727
		 -6.21693087 1.80165863 17.77848053 7.23953438 0.43076229 16.98699188 7.10253191 1.22224998 16.98699188
		 6.72823334 1.80165958 16.98699188 6.21693087 2.013737679 16.98699188 6.21693087 1.80165863 17.77848053
		 6.21693087 1.22224998 18.35788727 6.21693087 0.43076229 18.56996536 6.72823334 0.43076229 18.35788727
		 7.10253191 0.43076229 17.77848053 -6.21693087 0.43076229 -18.56996918 -6.72823238 0.43076229 -18.35789108
		 -7.10253143 0.43076229 -17.77848053 -7.23953438 0.43076229 -16.98699379 -7.10253143 1.22224998 -16.98699379
		 -6.72823238 1.80165958 -16.98699379 -6.21693087 2.013737679 -16.98699379 -6.21693087 1.80165958 -17.77848053
		 -6.21693087 1.22224998 -18.35789108 7.23953438 0.43076229 -16.98699379 7.10253191 0.43076229 -17.77848053
		 6.72823334 0.43076229 -18.35789108 6.21693087 0.43076229 -18.56996918 6.21693087 1.22224998 -18.35789108
		 6.21693087 1.80165958 -17.77848053 6.21693087 2.013737679 -16.98699379 6.72823334 1.80165958 -16.98699379
		 7.10253191 1.22224998 -16.98699379 -6.21693087 -1.15252972 -16.98699379 -6.72823238 -0.94045162 -16.98699379
		 -7.10253143 -0.36104202 -16.98699379 -7.23953438 0.43044567 -16.98699379 -7.10253143 0.43044567 -17.77848053
		 -6.72823238 0.43044567 -18.35789108 -6.21693087 0.43044567 -18.56996918 -6.21693087 -0.36104202 -18.35789108
		 -6.21693087 -0.94045162 -17.77848053 7.23953438 0.43044567 -16.98699379 7.10253191 -0.36104202 -16.98699379
		 6.72823334 -0.94045162 -16.98699379 6.21693087 -1.15252972 -16.98699379 6.21693087 -0.94045162 -17.77848053
		 6.21693087 -0.36104202 -18.35789108 6.21693087 0.43044567 -18.56996918 6.72823334 0.43044567 -18.35789108
		 7.10253191 0.43044567 -17.77848053 -6.9838829 -0.3080225 17.72546005 -6.69398165 -0.75678539 17.72546005
		 -6.69398165 -0.3080225 18.17422104 6.69398212 -0.75678539 17.72546005 6.98388338 -0.3080225 17.72546005
		 6.69398212 -0.3080225 18.17422104 -6.69398165 1.61799335 17.72546005 -6.9838829 1.16923046 17.72546005
		 -6.69398165 1.16923046 18.17422104 6.98388338 1.16923046 17.72546005 6.69398212 1.61799335 17.72546005
		 6.69398212 1.16923046 18.17422104 -6.69398165 1.16923046 -18.17422485 -6.98388386 1.16923046 -17.72546196
		 -6.69398165 1.61799431 -17.72546196 6.98388386 1.16923046 -17.72546196 6.69398212 1.16923046 -18.17422485
		 6.69398212 1.61799431 -17.72546196 -6.69398165 -0.75678635 -17.72546196 -6.98388386 -0.3080225 -17.72546196
		 -6.69398165 -0.3080225 -18.17422485 6.98388386 -0.3080225 -17.72546196 6.69398212 -0.75678635 -17.72546196
		 6.69398212 -0.3080225 -18.17422485;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  54 66 1 66 9 1 9 3 1 3 54 1 15 33 1 33 24 1 24 6 1
		 6 15 1 21 39 1 39 57 1 57 0 1 0 21 1 63 45 1 45 27 1 27 12 1 12 63 1 30 51 1 51 42 1
		 42 18 1 18 30 1 48 69 1 69 60 1 60 36 1 36 48 1 3 2 1 2 55 0 55 54 1 2 1 1 1 56 0
		 56 55 1 1 0 1 57 56 1 6 5 1 5 16 1 16 15 1 5 4 1 4 17 0 17 16 1 4 3 1 9 17 1 0 8 1
		 8 22 0 22 21 1 8 7 1 7 23 1 23 22 1 7 6 1 24 23 1 12 11 1 11 64 0 64 63 1 11 10 1
		 10 65 0 65 64 1 10 9 1 66 65 1 15 14 1 14 34 1 34 33 1 14 13 1 13 35 0 35 34 1 13 12 1
		 27 35 1 21 20 1 20 40 0 40 39 1 20 19 1 19 41 0 41 40 1 19 18 1 42 41 1 18 26 1 26 31 0
		 31 30 1 26 25 1 25 32 1 32 31 1 25 24 1 33 32 1 30 29 1 29 52 0 52 51 1 29 28 1 28 53 0
		 53 52 1 28 27 1 45 53 1 39 38 1 38 58 0 58 57 1 38 37 1 37 59 1 59 58 1 37 36 1 60 59 1
		 36 44 1 44 49 1 49 48 1 44 43 1 43 50 0 50 49 1 43 42 1 51 50 1 48 47 1 47 70 1 70 69 1
		 47 46 1 46 71 0 71 70 1 46 45 1 63 71 1 54 62 1 62 67 0 67 66 1 62 61 1 61 68 1 68 67 1
		 61 60 1 69 68 1 1 72 1 72 8 1 2 73 1 73 72 1 4 73 1 5 74 1 74 73 1 7 74 1 72 74 1
		 10 75 1 75 17 1 11 76 1 76 75 1 13 76 1 14 77 1 77 76 1 16 77 1 75 77 1 19 78 1 78 26 1
		 20 79 1 79 78 1 22 79 1 23 80 1 80 79 1 25 80 1 78 80 1 28 81 1 81 35 1 29 82 1 82 81 1
		 31 82 1 32 83 1 83 82 1 34 83 1 81 83 1 37 84 1 84 44 1 38 85 1 85 84 1 40 85 1 41 86 1
		 86 85 1 43 86 1 84 86 1 46 87 1;
	setAttr ".ed[166:191]" 87 53 1 47 88 1 88 87 1 49 88 1 50 89 1 89 88 1 52 89 1
		 87 89 1 55 90 1 90 62 1 56 91 1 91 90 1 58 91 1 59 92 1 92 91 1 61 92 1 90 92 1 64 93 1
		 93 71 1 65 94 1 94 93 1 67 94 1 68 95 1 95 94 1 70 95 1 93 95 1;
	setAttr -s 98 -ch 384 ".fc[0:97]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 33 136 51 42
		f 4 4 5 6 7
		mu 0 4 9 18 72 45
		f 4 8 9 10 11
		mu 0 4 12 22 121 4
		f 4 12 13 14 15
		mu 0 4 31 104 78 56
		f 4 16 17 18 19
		mu 0 4 19 28 98 15
		f 4 20 21 22 23
		mu 0 4 29 36 125 25
		f 4 24 25 26 -4
		mu 0 4 42 40 117 33
		f 4 27 28 29 -26
		mu 0 4 40 0 119 117
		f 4 30 -11 31 -29
		mu 0 4 37 4 121 1
		f 4 32 33 34 -8
		mu 0 4 45 44 60 9
		f 4 35 36 37 -34
		mu 0 4 44 2 61 60
		f 4 38 -3 39 -37
		mu 0 4 43 42 51 3
		f 4 40 41 42 -12
		mu 0 4 4 5 69 12
		f 4 43 44 45 -42
		mu 0 4 47 46 71 6
		f 4 46 -7 47 -45
		mu 0 4 46 45 72 71
		f 4 48 49 50 -16
		mu 0 4 56 7 131 31
		f 4 51 52 53 -50
		mu 0 4 54 52 134 8
		f 4 54 -2 55 -53
		mu 0 4 52 51 136 134
		f 4 56 57 58 -5
		mu 0 4 9 59 86 18
		f 4 59 60 61 -58
		mu 0 4 59 10 87 86
		f 4 62 -15 63 -61
		mu 0 4 57 56 78 11
		f 4 64 65 66 -9
		mu 0 4 12 13 95 22
		f 4 67 68 69 -66
		mu 0 4 67 65 97 14
		f 4 70 -19 71 -69
		mu 0 4 65 15 98 97
		f 4 72 73 74 -20
		mu 0 4 15 16 84 19
		f 4 75 76 77 -74
		mu 0 4 74 73 85 17
		f 4 78 -6 79 -77
		mu 0 4 73 72 18 85
		f 4 80 81 82 -17
		mu 0 4 19 82 112 28
		f 4 83 84 85 -82
		mu 0 4 82 20 113 112
		f 4 86 -14 87 -85
		mu 0 4 79 78 104 21
		f 4 88 89 90 -10
		mu 0 4 22 23 122 121
		f 4 91 92 93 -90
		mu 0 4 93 91 124 24
		f 4 94 -23 95 -93
		mu 0 4 91 25 125 124
		f 4 96 97 98 -24
		mu 0 4 25 26 110 29
		f 4 99 100 101 -98
		mu 0 4 100 99 111 27
		f 4 102 -18 103 -101
		mu 0 4 99 98 28 111
		f 4 104 105 106 -21
		mu 0 4 29 108 139 36
		f 4 107 108 109 -106
		mu 0 4 108 30 140 139
		f 4 110 -13 111 -109
		mu 0 4 105 104 31 32
		f 4 112 113 114 -1
		mu 0 4 33 34 137 136
		f 4 115 116 117 -114
		mu 0 4 127 126 138 35
		f 4 118 -22 119 -117
		mu 0 4 126 125 36 138
		f 4 -41 -31 120 121
		mu 0 4 5 4 37 38
		f 4 -121 -28 122 123
		mu 0 4 39 0 40 41
		f 4 -25 -39 124 -123
		mu 0 4 40 42 43 41
		f 4 -125 -36 125 126
		mu 0 4 49 2 44 50
		f 4 -33 -47 127 -126
		mu 0 4 44 45 46 50
		f 4 -128 -44 -122 128
		mu 0 4 50 46 47 48
		f 3 -124 -127 -129
		mu 0 3 48 49 50
		f 4 -40 -55 129 130
		mu 0 4 3 51 52 53
		f 4 -130 -52 131 132
		mu 0 4 53 52 54 55
		f 4 -49 -63 133 -132
		mu 0 4 7 56 57 58
		f 4 -134 -60 134 135
		mu 0 4 63 10 59 64
		f 4 -57 -35 136 -135
		mu 0 4 59 9 60 64
		f 4 -137 -38 -131 137
		mu 0 4 64 60 61 62
		f 3 -133 -136 -138
		mu 0 3 62 63 64
		f 4 -73 -71 138 139
		mu 0 4 16 15 65 66
		f 4 -139 -68 140 141
		mu 0 4 66 65 67 68
		f 4 -65 -43 142 -141
		mu 0 4 13 12 69 70
		f 4 -143 -46 143 144
		mu 0 4 76 6 71 77
		f 4 -48 -79 145 -144
		mu 0 4 71 72 73 77
		f 4 -146 -76 -140 146
		mu 0 4 77 73 74 75
		f 3 -142 -145 -147
		mu 0 3 75 76 77
		f 4 -64 -87 147 148
		mu 0 4 11 78 79 80
		f 4 -148 -84 149 150
		mu 0 4 81 20 82 83
		f 4 -81 -75 151 -150
		mu 0 4 82 19 84 83
		f 4 -152 -78 152 153
		mu 0 4 89 17 85 90
		f 4 -80 -59 154 -153
		mu 0 4 85 18 86 90
		f 4 -155 -62 -149 155
		mu 0 4 90 86 87 88
		f 3 -151 -154 -156
		mu 0 3 88 89 90
		f 4 -97 -95 156 157
		mu 0 4 26 25 91 92
		f 4 -157 -92 158 159
		mu 0 4 92 91 93 94
		f 4 -89 -67 160 -159
		mu 0 4 23 22 95 96
		f 4 -161 -70 161 162
		mu 0 4 102 14 97 103
		f 4 -72 -103 163 -162
		mu 0 4 97 98 99 103
		f 4 -164 -100 -158 164
		mu 0 4 103 99 100 101
		f 3 -160 -163 -165
		mu 0 3 101 102 103
		f 4 -88 -111 165 166
		mu 0 4 21 104 105 106
		f 4 -166 -108 167 168
		mu 0 4 107 30 108 109
		f 4 -105 -99 169 -168
		mu 0 4 108 29 110 109
		f 4 -170 -102 170 171
		mu 0 4 115 27 111 116
		f 4 -104 -83 172 -171
		mu 0 4 111 28 112 116
		f 4 -173 -86 -167 173
		mu 0 4 116 112 113 114
		f 3 -169 -172 -174
		mu 0 3 114 115 116
		f 4 -113 -27 174 175
		mu 0 4 34 33 117 118
		f 4 -175 -30 176 177
		mu 0 4 118 117 119 120
		f 4 -32 -91 178 -177
		mu 0 4 1 121 122 123
		f 4 -179 -94 179 180
		mu 0 4 129 24 124 130
		f 4 -96 -119 181 -180
		mu 0 4 124 125 126 130
		f 4 -182 -116 -176 182
		mu 0 4 130 126 127 128
		f 3 -178 -181 -183
		mu 0 3 128 129 130
		f 4 -112 -51 183 184
		mu 0 4 32 31 131 132
		f 4 -184 -54 185 186
		mu 0 4 133 8 134 135
		f 4 -56 -115 187 -186
		mu 0 4 134 136 137 135
		f 4 -188 -118 188 189
		mu 0 4 142 35 138 143
		f 4 -120 -107 190 -189
		mu 0 4 138 36 139 143
		f 4 -191 -110 -185 191
		mu 0 4 143 139 140 141
		f 3 -187 -190 -192
		mu 0 3 141 142 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "sam_reference:sam_relative";
createNode shadingEngine -n "sam_reference:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "sam_reference:materialInfo1";
createNode file -n "sam_reference:file1";
	setAttr ".ftn" -type "string" "/Network/Servers/d.daas.sova.vt.edu/Volumes/daasB2/dh2/clidwin/Desktop/Gaming/Kid and Shadow Concept.png";
createNode place2dTexture -n "sam_reference:place2dTexture1";
createNode polyPlane -n "sam_reference:polyPlane1";
	setAttr ".w" 12;
	setAttr ".h" 12;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode lambert -n "sam_reference:lambert3";
createNode shadingEngine -n "sam_reference:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "sam_reference:materialInfo2";
createNode file -n "sam_reference:file2";
	setAttr ".ftn" -type "string" "/Network/Servers/d.daas.sova.vt.edu/Volumes/daasB2/dh2/clidwin/Desktop/Gaming/Kid and Shadow Concept.png";
createNode place2dTexture -n "sam_reference:place2dTexture2";
createNode polyTweakUV -n "sam_reference:polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 0.045945946 ;
	setAttr ".uvtk[1]" -type "float2" -0.0018008798 0.045945946 ;
	setAttr ".uvtk[3]" -type "float2" -0.0018008798 0 ;
createNode displayLayer -n "Reference";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".c" 17;
	setAttr ".do" 1;
createNode polyCube -n "polyCube2";
	setAttr ".w" 23.702573150753672;
	setAttr ".h" 2.2787658469698733;
	setAttr ".d" 48.420863139159422;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 6.1178034403444341 19.58323151293909 1;
	setAttr ".wt" 0.94116842746734619;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:7]" "e[13]" "e[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 6.1178034403444341 19.58323151293909 1;
	setAttr ".wt" 0.062101006507873535;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 6.1178034403444341 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 4.8033438 19.583231 ;
	setAttr ".rs" 1741774164;
	setAttr ".lt" -type "double3" 1.1102230246251565e-16 2.0239835954252595e-14 4.8478823383880494 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601597531955525 4.803343547505678 -2.0689055577851398 ;
	setAttr ".cbx" -type "double3" 12.100978151638225 4.803343547505678 41.235368583663316 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 6.1178034403444341 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 7.4322634 19.583231 ;
	setAttr ".rs" 44735573;
	setAttr ".lt" -type "double3" -1.1102230246251565e-16 1.3316351028299399e-15 5.9971513528983893 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601597531955525 7.4322631956562697 -2.0689038519843521 ;
	setAttr ".cbx" -type "double3" 12.100978151638225 7.4322631956562697 41.235366877862532 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 12.889039 -0.79507577 ;
	setAttr ".rs" 1840871755;
	setAttr ".lt" -type "double3" 0 -1.7324968381167124e-16 1.1078529411474241 ;
	setAttr ".ls" -type "double3" 0.92499288936096646 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601597531955525 12.889039352533388 -2.0689038519843521 ;
	setAttr ".cbx" -type "double3" 12.100978151638225 12.889039352533388 0.47875226782505109 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[16:31]" -type "float3"  0 -1.69484901 0 0 -1.69484901
		 0 0 -1.69484901 0 0 -1.69484901 0 0 -1.69484901 0 0 -1.69484901 0 0 -1.69484901 0
		 0 -1.69484901 0 0 6.51101351 0 0 6.51101351 0 0 6.51101351 0 0 6.51101351 0 0 -2.1308825
		 0 0 -2.1308825 0 0 -2.1308825 0 0 -2.1308825 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 13.996892 -0.79507577 ;
	setAttr ".rs" 1313181541;
	setAttr ".lt" -type "double3" 0 5.4961281264701977e-17 0.94491657437829668 ;
	setAttr ".ls" -type "double3" 0.80137972178571726 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.712666257541462 13.996892414614145 -2.0689038519843521 ;
	setAttr ".cbx" -type "double3" 11.212046877224163 13.996892414614145 0.47875226782505109 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 21.138926 39.969856 ;
	setAttr ".rs" 376962715;
	setAttr ".lt" -type "double3" 2.7755575615628914e-17 3.5318535505678199e-16 1.5906054334264397 ;
	setAttr ".ls" -type "double3" 0.8871142318903289 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601596578281208 21.138925066499112 38.704347433124852 ;
	setAttr ".cbx" -type "double3" 12.100977197963909 21.138925066499112 41.235366877862532 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 -1.49083829 0 0 -1.49083829
		 0 0 -1.49083829 0 0 -1.49083829 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 22.729532 39.969856 ;
	setAttr ".rs" 2105553379;
	setAttr ".lt" -type "double3" 0 2.6321094495009865e-16 1.1853967135971004 ;
	setAttr ".ls" -type "double3" 0.71622167546873317 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.263755544345662 22.729531727528823 38.704347433124852 ;
	setAttr ".cbx" -type "double3" 10.763136164028362 22.729531727528823 41.235366877862532 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 5 "f[2]" "f[18]" "f[28]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 7.4299636 -2.0689023 ;
	setAttr ".rs" 1602997025;
	setAttr ".ls" -type "double3" 0.92854648554871433 0.7835367746701698 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601596578281208 -0.081880953288287373 -2.0689021461835679 ;
	setAttr ".cbx" -type "double3" 12.100977197963909 14.941807981703221 -2.0689021461835679 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 5 "f[2]" "f[18]" "f[28]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 7.3969574 -2.0689023 ;
	setAttr ".rs" 849715153;
	setAttr ".lt" -type "double3" 5.5511151231257827e-17 0.19407135563861472 -0.35117576722707744 ;
	setAttr ".ls" -type "double3" 0.98167533248483485 0.81876986253807105 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.754779561679646 0.30943924758587915 -2.0689021461835679 ;
	setAttr ".cbx" -type "double3" 11.254160181362346 14.484475408916555 -2.0689021461835679 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[48:59]" -type "float3"  0 -0.29904604 0 0 -0.29904604
		 0 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0
		 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0 0 -0.29904604 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 3 "f[24]" "f[40]" "f[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 16.632566 38.704346 ;
	setAttr ".rs" 1964455763;
	setAttr ".lt" -type "double3" 2.7755575615628914e-17 0.42962766257083018 5.2614214179252633e-17 ;
	setAttr ".ls" -type "double3" 0.94726388472734091 0.82418657763419267 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.601596578281208 9.3501988249989054 38.704347433124852 ;
	setAttr ".cbx" -type "double3" 12.100977197963909 23.914932369537418 38.704347433124852 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 3 "f[24]" "f[40]" "f[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.24969031 16.661674 38.704346 ;
	setAttr ".rs" 2140463770;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 0.15543031612431876 -0.63756692055163455 ;
	setAttr ".ls" -type "double3" 0.99225897125129769 0.92785040084973835 0.64502216296557346 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.976606115024373 9.9568784824563448 38.704347433124852 ;
	setAttr ".cbx" -type "double3" 11.475986734707073 23.366470608224944 38.704347433124852 ;
createNode polyCube -n "polyCube3";
	setAttr ".w" 14.479069158609384;
	setAttr ".h" 2.3050586185736837;
	setAttr ".d" 37.139938745583734;
	setAttr ".cuv" 4;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 17 "e[2:3]" "e[6:7]" "e[9]" "e[11]" "e[13:18]" "e[22:23]" "e[25:43]" "e[45:50]" "e[52:57]" "e[59:72]" "e[74:111]" "e[113:115]" "e[117:125]" "e[127:130]" "e[132:159]" "e[161:164]" "e[166:171]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.1536594286705595 0 0 0 0 0.89433088280586737 0
		 0.2496903098413501 8.0357396197947537 19.58323151293909 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 0.5;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "polyBevel2";
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.5479854576177805 0 0 0 0 1 0 0 0 0 1 0 0.22485445971191309 10.526953368428543 19.489410597167939 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.86120802 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.86120802 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.86120802 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.86120802 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Reference.di" "sam_reference:pPlane1.do";
connectAttr "sam_reference:polyTweakUV1.out" "sam_reference:pPlaneShape1.i";
connectAttr "sam_reference:polyTweakUV1.uvtk[0]" "sam_reference:pPlaneShape1.uvst[0].uvtw"
		;
connectAttr "Reference.di" "sam_reference:locator1.do";
connectAttr "Reference.di" "sam_reference:locator2.do";
connectAttr "Reference.di" "sam_reference:distanceDimension1.do";
connectAttr "sam_reference:locatorShape1.wp" "sam_reference:distanceDimensionShape1.sp"
		;
connectAttr "sam_reference:locatorShape2.wp" "sam_reference:distanceDimensionShape1.ep"
		;
connectAttr "polyBevel1.out" "pCubeShape2.i";
connectAttr "polyBevel2.out" "pCubeShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sam_reference:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sam_reference:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sam_reference:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sam_reference:lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sam_reference:file1.oc" "sam_reference:sam_relative.c";
connectAttr "sam_reference:file1.ot" "sam_reference:sam_relative.it";
connectAttr "sam_reference:sam_relative.oc" "sam_reference:lambert2SG.ss";
connectAttr "sam_reference:lambert2SG.msg" "sam_reference:materialInfo1.sg";
connectAttr "sam_reference:sam_relative.msg" "sam_reference:materialInfo1.m";
connectAttr "sam_reference:file1.msg" "sam_reference:materialInfo1.t" -na;
connectAttr "sam_reference:place2dTexture1.c" "sam_reference:file1.c";
connectAttr "sam_reference:place2dTexture1.tf" "sam_reference:file1.tf";
connectAttr "sam_reference:place2dTexture1.rf" "sam_reference:file1.rf";
connectAttr "sam_reference:place2dTexture1.mu" "sam_reference:file1.mu";
connectAttr "sam_reference:place2dTexture1.mv" "sam_reference:file1.mv";
connectAttr "sam_reference:place2dTexture1.s" "sam_reference:file1.s";
connectAttr "sam_reference:place2dTexture1.wu" "sam_reference:file1.wu";
connectAttr "sam_reference:place2dTexture1.wv" "sam_reference:file1.wv";
connectAttr "sam_reference:place2dTexture1.re" "sam_reference:file1.re";
connectAttr "sam_reference:place2dTexture1.of" "sam_reference:file1.of";
connectAttr "sam_reference:place2dTexture1.r" "sam_reference:file1.ro";
connectAttr "sam_reference:place2dTexture1.n" "sam_reference:file1.n";
connectAttr "sam_reference:place2dTexture1.vt1" "sam_reference:file1.vt1";
connectAttr "sam_reference:place2dTexture1.vt2" "sam_reference:file1.vt2";
connectAttr "sam_reference:place2dTexture1.vt3" "sam_reference:file1.vt3";
connectAttr "sam_reference:place2dTexture1.vc1" "sam_reference:file1.vc1";
connectAttr "sam_reference:place2dTexture1.o" "sam_reference:file1.uv";
connectAttr "sam_reference:place2dTexture1.ofs" "sam_reference:file1.fs";
connectAttr "sam_reference:file2.oc" "sam_reference:lambert3.c";
connectAttr "sam_reference:file2.ot" "sam_reference:lambert3.it";
connectAttr "sam_reference:lambert3.oc" "sam_reference:lambert3SG.ss";
connectAttr "sam_reference:pPlaneShape1.iog" "sam_reference:lambert3SG.dsm" -na;
connectAttr "sam_reference:lambert3SG.msg" "sam_reference:materialInfo2.sg";
connectAttr "sam_reference:lambert3.msg" "sam_reference:materialInfo2.m";
connectAttr "sam_reference:file2.msg" "sam_reference:materialInfo2.t" -na;
connectAttr "sam_reference:place2dTexture2.c" "sam_reference:file2.c";
connectAttr "sam_reference:place2dTexture2.tf" "sam_reference:file2.tf";
connectAttr "sam_reference:place2dTexture2.rf" "sam_reference:file2.rf";
connectAttr "sam_reference:place2dTexture2.mu" "sam_reference:file2.mu";
connectAttr "sam_reference:place2dTexture2.mv" "sam_reference:file2.mv";
connectAttr "sam_reference:place2dTexture2.s" "sam_reference:file2.s";
connectAttr "sam_reference:place2dTexture2.wu" "sam_reference:file2.wu";
connectAttr "sam_reference:place2dTexture2.wv" "sam_reference:file2.wv";
connectAttr "sam_reference:place2dTexture2.re" "sam_reference:file2.re";
connectAttr "sam_reference:place2dTexture2.of" "sam_reference:file2.of";
connectAttr "sam_reference:place2dTexture2.r" "sam_reference:file2.ro";
connectAttr "sam_reference:place2dTexture2.n" "sam_reference:file2.n";
connectAttr "sam_reference:place2dTexture2.vt1" "sam_reference:file2.vt1";
connectAttr "sam_reference:place2dTexture2.vt2" "sam_reference:file2.vt2";
connectAttr "sam_reference:place2dTexture2.vt3" "sam_reference:file2.vt3";
connectAttr "sam_reference:place2dTexture2.vc1" "sam_reference:file2.vc1";
connectAttr "sam_reference:place2dTexture2.o" "sam_reference:file2.uv";
connectAttr "sam_reference:place2dTexture2.ofs" "sam_reference:file2.fs";
connectAttr "sam_reference:polyPlane1.out" "sam_reference:polyTweakUV1.ip";
connectAttr "layerManager.dli[1]" "Reference.id";
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "pCubeShape2.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyBevel1.ip";
connectAttr "pCubeShape2.wm" "polyBevel1.mp";
connectAttr "polyTweak4.out" "polyBevel2.ip";
connectAttr "pCubeShape3.wm" "polyBevel2.mp";
connectAttr "polyCube3.out" "polyTweak4.ip";
connectAttr "sam_reference:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "sam_reference:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sam_reference:sam_relative.msg" ":defaultShaderList1.s" -na;
connectAttr "sam_reference:lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "sam_reference:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "sam_reference:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "sam_reference:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sam_reference:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of bed.ma
