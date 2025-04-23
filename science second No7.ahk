#Persistent ; Keep the script running
#NoEnv ; Avoid environment variables
#SingleInstance force ; Ensure only one instance of the script runs at a time

global question := 1
global theme := 1
global auto := true
global login := false
global tq := 101
global waitTime = 750

;Fast exit
F12:: Reload
^F12:: ExitApp
F1:: theme := 1
F2:: theme := 2
F3:: theme := 3


^1:: question := 1
^2:: question := 2
^3:: question := 3
^4:: question := 4
^5:: question := 5
^6:: question := 6
^7:: question := 7
^8:: question := 8
^9:: question := 9
^0:: question := 10

q::  
    auto := !auto
return



F11::
if (auto){
    Sequencer()  ; Call the Sequencer function if auto is true
}else{
    tq := theme * 100 + question  ; Calculate tq        
    Invoke(tq)  ; Call Invoke with the calculated tq    
}
return  

Sequencer(){
    Loop    , 10  ; Loop 10 times
    {   
        if (question <= 10) {
            tq := theme * 100 + question  ; Calculate tq properly using := for expression asignment
            Invoke(tq)  ; Call Invoke with tq
            Sleep, 1000 ; Wait for 1 second
            question++  ; Increment the question value
        } 
        else {
            question :=1
            break  ; Exit the loop if question reaches 10
        }
    }
}



;Function for every spetial questions
Invoke(qq){
    Switch qq
    {   
        case 101 :{  
            ; Морская вода №1
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 9 {
                Send, ^{NumpadSub}
            }    
            MouseClickDrag, L, 1924, 226, 1925, 408
            MouseClickDrag, L, 738, 316, 911, 419
            MouseClickDrag, L, 814, 326, 573, 446
            MouseClickDrag, L, 1023, 322, 881, 449
            MouseClickDrag, L, 1038, 638, 670, 711
            MouseClickDrag, L, 536, 893, 535, 971
            MouseClickDrag, L, 1927, 451, 1925, 606
            MouseClickDrag, L, 828, 440, 529, 511
            MouseClickDrag, L, 768, 723, 536, 783
            MouseClickDrag, L, 1927, 602, 1921, 733
            MouseClickDrag, L, 725, 615, 519, 719
            MouseClickDrag, L, 886, 615, 675, 766
            MouseClickDrag, L, 969, 625, 528, 796
            MouseClickDrag, L, 1927, 712, 1927, 925
            MouseClick, L, 493, 438
            MouseClick, L, 492, 595
            MouseClick, L, 491, 794
            MouseClick, L, 492, 877
            MouseClick, L, 688, 998
            Sleep, waitTime
            MouseClick, L, 1044, 218
        }
        case 102 :{
            ;Кастрюля №2
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 11 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 250, 1927, 355
            MouseClickDrag, L, 898, 426, 627, 515
            MouseClickDrag, L, 697, 463, 721, 516
            MouseClickDrag, L, 615, 652, 612, 741
            MouseClickDrag, L, 937, 690, 692, 742
            MouseClickDrag, L, 1926, 355, 1926, 633
            MouseClickDrag, L, 594, 174, 763, 300
            MouseClickDrag, L, 594, 174, 750, 409
            MouseClickDrag, L, 594, 174, 755, 515
            MouseClickDrag, L, 982, 743, 972, 806
            MouseClickDrag, L, 1058, 949, 783, 1011
            MouseClickDrag, L, 843, 951, 835, 1008
            MouseClickDrag, L, 1927, 600, 1927, 890
            MouseClickDrag, L, 984, 447, 619, 512
            MouseClickDrag, L, 720, 841, 650, 930
            MouseClickDrag, L, 705, 843, 778, 933
            MouseClickDrag, L, 589, 845, 1066, 929
            MouseClickDrag, L, 847, 879, 1173, 933
            MouseClick, L, 750, 1003
            Sleep, waitTime
            MouseClick, L, 1028, 202
            
        }
        case 103:{
            ;Витамин C №3
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 11 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 164, 1923, 430
            MouseClickDrag, L, 654, 314, 845, 400
            MouseClickDrag, L, 655, 277, 1069, 366
            MouseClickDrag, L, 834, 276, 761, 405
            MouseClickDrag, L, 762, 288, 1180, 393
            MouseClickDrag, L, 674, 561, 805, 618
            MouseClickDrag, L, 719, 531, 984, 616
            MouseClickDrag, L, 1046, 543, 1128, 609
            MouseClickDrag, L, 1029, 742, 609, 824 
            MouseClickDrag, L, 976, 752, 778, 811
            MouseClickDrag, L, 709, 752, 619, 851
            MouseClickDrag, L, 844, 747, 773, 855
            MouseClickDrag, L, 1927, 520, 1927, 797
            MouseClickDrag, L, 846, 736, 631, 890
            MouseClickDrag, L, 856, 835, 635, 929
            MouseClickDrag, L, 664, 471, 655, 556
            MouseClickDrag, L, 1082, 477, 804, 559
            MouseClickDrag, L, 614, 473, 1078, 562
            MouseClickDrag, L, 833, 472, 657, 599
            MouseClickDrag, L, 592, 470, 850, 601  
            MouseClickDrag, L, 1013, 508, 1068, 603   
            MouseClick, L, 777, 1004
            Sleep, waitTime
            MouseClick, L, 1040, 199
        }
        case 104:{
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 12 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 608, 677, 649, 728
            MouseClickDrag, L, 620, 680, 703, 735
            MouseClickDrag, L, 620, 680, 963, 733
            MouseClickDrag, L, 854, 673, 1060, 731   
            MouseClickDrag, L, 786, 874, 784, 934
            MouseClickDrag, L, 1030, 880, 859, 931 
            MouseClickDrag, L, 1926, 237, 1926, 673    
            ;MouseClickDrag, L, 643, 213, 833, 342    
            MouseClickDrag, L, 687, 212, 829, 330
            MouseClickDrag, L, 732, 221, 832, 392
            MouseClickDrag, L, 600, 546, 697, 624
            MouseClickDrag, L, 783, 546, 737, 667
            MouseClickDrag, L, 629, 816, 698, 899
            MouseClickDrag, L, 942, 823, 904, 936
            MouseClickDrag, L, 875, 818, 1077, 938
            MouseClick, L, 793, 1005   
            Sleep, waitTime
            MouseClick, L, 1024, 195    
        }
        case 105:{
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 12 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 165, 1925, 337
            MouseClickDrag, L, 821, 288, 661, 346
            MouseClickDrag, L, 680, 285, 693, 378
            MouseClick, L, 861, 573
            MouseClick, L, 872, 622
            MouseClick, L, 1174, 576
            MouseClick, L, 1243, 616
            MouseClick, L, 958, 661
            MouseClick, L, 952, 703
            MouseClickDrag, L, 609, 827, 659, 886
            MouseClickDrag, L, 875, 834, 784, 886
            MouseClickDrag, L, 1927, 351, 1927, 716
            MouseClickDrag, L, 654, 456, 740, 513
            MouseClickDrag, L, 808, 453, 847, 512
            MouseClickDrag, L, 1036, 458, 927, 513
            MouseClickDrag, L, 703, 890, 644, 941
            MouseClick, L, 775, 999
            Sleep, waitTime
            MouseClick, L, 1024, 195   

            
        }
        case 106:{
            ;Вода в резервуаре №6 
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 12 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 165, 1925, 337 
            MouseClickDrag, L, 652, 203, 640, 261
            MouseClickDrag, L, 813, 178, 781, 261
            MouseClickDrag, L, 1082, 172, 872, 255
            MouseClickDrag, L, 848, 172, 632, 292
            MouseClickDrag, L, 735, 176, 703, 297
            MouseClickDrag, L, 939, 172, 834, 333
            MouseClickDrag, L, 720, 721, 699, 776
            MouseClickDrag, L, 847, 718, 718, 812   
            MouseClickDrag, L, 1927, 355, 1927, 712
            MouseClickDrag, L, 859, 241, 663, 328
            MouseClickDrag, L, 1003, 242, 792, 328
            MouseClickDrag, L, 726, 247, 1050, 304
            MouseClickDrag, L, 694, 889, 655, 970
            MouseClickDrag, L, 881, 888, 799, 1014
            MouseClickDrag, L, 821, 898, 1270, 988
            MouseClickDrag, L, 1927, 740, 1927, 940
            MouseClick, L, 782, 1013
            Sleep, waitTime
            MouseClick, L, 1031, 183
        }
        
        case 107:{
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 12 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 200, 1926, 375
            MouseClickDrag, L, 1030, 198, 628, 252
            MouseClickDrag, L, 675, 448, 636, 503
            MouseClickDrag, L, 1030, 702, 639, 758
            MouseClickDrag, L, 603, 907, 811, 990
            MouseClickDrag, L, 945, 911, 744, 1028
            MouseClickDrag, L, 677, 906, 865, 1023
            MouseClickDrag, L, 1927, 449, 1927, 935
            MouseClickDrag, L, 935, 177, 698, 256
            MouseClickDrag, L, 915, 175, 640, 293
            MouseClickDrag, L, 1032, 174, 756, 297
            MouseClickDrag, L, 813, 173, 897, 291
            MouseClickDrag, L, 1040, 816, 686, 898
            MouseClickDrag, L, 699, 853, 617, 937
            MouseClickDrag, L, 1035, 821, 863, 934
            MouseClickDrag, L, 944, 841, 1009, 939
            MouseClick, L, 752, 1000
            Sleep, waitTime
            MouseClick, L, 1031, 183
        }
        case 108:{
            ;Сердце №8
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 13 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 199, 1927, 386
            MouseClickDrag, L, 665, 242, 677, 292
            MouseClickDrag, L, 678, 244, 715, 289
            MouseClickDrag, L, 863, 242, 910, 292
            MouseClickDrag, L, 668, 418, 759, 464
            MouseClickDrag, L, 682, 419, 843, 466
            MouseClickDrag, L, 847, 415, 1089, 469
            MouseClickDrag, L, 737, 415, 1174, 470
            MouseClickDrag, L, 790, 593, 694, 639
            MouseClickDrag, L, 1008, 588, 697, 681
            MouseClickDrag, L, 1927, 410, 1927, 595
            MouseClickDrag, L, 879, 224, 678, 297
            MouseClickDrag, L, 878, 223, 794, 294
            MouseClickDrag, L, 920, 229, 894, 299
            MouseClickDrag, L, 774, 223, 981, 297
            MouseClickDrag, L, 824, 228, 1112, 291
            MouseClickDrag, L, 882, 226, 1197, 294
            MouseClickDrag, L, 897, 232, 1332, 283
            MouseClickDrag, L, 803, 759, 830, 813
            MouseClickDrag, L, 1023, 763, 1266, 844
            MouseClickDrag, L, 1927, 588, 1927, 931
            MouseClickDrag, L, 744, 659, 788, 849
            MouseClickDrag, L, 854, 659, 884, 849
            MouseClick, L, 752, 1000
            Sleep, waitTime
            MouseClick, L, 1031, 183
        }
        
        case 109:{
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 13 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 1927, 157, 1927, 290
            MouseClickDrag, L, 708, 210, 680, 254
            MouseClickDrag, L, 971, 438, 667, 494
            MouseClickDrag, L, 830, 441, 850, 499
            MouseClickDrag, L, 686, 969, 687, 1026
            MouseClickDrag, L, 1927, 350, 1927, 623
            MouseClickDrag, L, 947, 273, 665, 316
            MouseClickDrag, L, 839, 270, 1145, 320
            MouseClickDrag, L, 786, 763, 708, 811
            MouseClickDrag, L, 743, 766, 937, 814
            MouseClickDrag, L, 852, 763, 1031, 811
            MouseClickDrag, L, 987, 763, 1101, 809
            MouseClickDrag, L, 1051, 758, 1180, 809
            MouseClickDrag, L, 1927, 618, 1927, 960
            MouseClick, L, 787, 435
            Send, "10,6"
            MouseClickDrag, L, 911, 896, 683, 944
            MouseClickDrag, L, 996, 892, 923, 948
            MouseClick, L, 752, 1000
            Sleep, waitTime
            MouseClick, L, 1031, 183
        }
        
        case 110:{
            Loop, 20 {
                Send, ^{NumpadAdd}
            }
            Loop, 13 {
                Send, ^{NumpadSub}
            }
            MouseClickDrag, L, 664, 786, 831, 838
            MouseClickDrag, L, 776, 779, 947, 840
            MouseClickDrag, L, 1927, 198, 1927, 419
            MouseClickDrag, L, 1036, 399, 817, 451
            MouseClickDrag, L, 696, 397, 1118, 448
            MouseClickDrag, L, 709, 926, 683, 981
            MouseClickDrag, L, 989, 928, 1329, 976
            MouseClickDrag, L, 1927, 480, 1927, 741
            MouseClick, L, 1163, 162
            MouseClick, L, 1190, 231
            MouseClick, L, 780, 195
            MouseClick, L, 812, 247
            MouseClick, L, 1026, 191
            MouseClick, L, 1087, 267
            MouseClickDrag, L, 716, 400, 668, 504
            MouseClickDrag, L, 839, 399, 1079, 473
            MouseClickDrag, L, 929, 405, 670, 506
            MouseClickDrag, L, 944, 400, 762, 513
            MouseClickDrag, L, 1060, 406, 903, 510
            MouseClickDrag, L, 1044, 406, 1111, 510
            MouseClickDrag, L, 641, 914, 770, 963
            MouseClickDrag, L, 681, 913, 822, 964
            MouseClickDrag, L, 811, 914, 1008, 968
            MouseClickDrag, L, 863, 916, 682, 1001
            MouseClickDrag, L, 1064, 911, 1045, 995
            MouseClickDrag, L, 1927, 741, 1927, 960
            MouseClickDrag, L, 762, 897, 829, 945           
            Loop, 20 {
               Send, ^{NumpadAdd}
            }
            Loop, 14  {
                Send, ^{NumpadSub}
            }
        }
        case 201: 
        {
            MouseClickDrag, L,770, 471,759, 509
            MouseClickDrag, L,887, 625,758, 660
            MouseClickDrag, L,834, 873,824, 956
            MouseClickDrag, L,1927, 207,1927, 850
            MouseClickDrag, L,899, 309,752, 348
            MouseClickDrag, L,998, 461,809, 516
            MouseClickDrag, L,912, 480,952, 511
            MouseClickDrag, L,801, 481,811, 542
            MouseClickDrag, L,769, 690,809, 730
            MouseClickDrag, L,1046, 871,802, 929
            MouseClickDrag, L,933, 894,968, 930
            MouseClickDrag, L,794, 872,790, 974
            MouseClickDrag, L,1032, 878,983, 978
            MouseClickDrag, L,909, 890,1060, 971
            MouseClick, L,865, 1017,
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 202: 
        {
            MouseClickDrag, L,901, 426,742, 462
            MouseClickDrag, L,937, 558,761, 602
            MouseClickDrag, L,773, 560,966, 599
            MouseClickDrag, L,988, 689,799, 739
            MouseClickDrag, L,1003, 694,1073, 726
            MouseClickDrag, L,750, 691,1204, 733
            MouseClick, L,1039, 923,
            SendRaw,1,5
            MouseClickDrag, L,1927, 207,1927, 850
            MouseClick, L,1017, 224
            SendRaw,2
            MouseClick, L,1481, 193
            MouseClick, L,958, 294
            SendRaw,1
            MouseClick, L,1481, 193
            MouseClick, L,764, 325
            MouseClick, L,768, 394
            MouseClick, L,1022, 480
            SendRaw,14,8
            MouseClick, L,1481, 193
            MouseClickDrag, L,802, 634,834, 675
            MouseClickDrag, L,1027, 783,751, 842
            MouseClickDrag, L,792, 788,839, 845
            MouseClickDrag, L,860, 799,1238, 844
            MouseClickDrag, L,999, 949,753, 985
            MouseClick, L,835, 1033
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 203: 
        {
            MouseClickDrag, L,756, 500,747, 543
            MouseClickDrag, L,1010, 506,816, 545
            MouseClickDrag, L,923, 663,972, 738
            MouseClickDrag, L,887, 670,748, 770
            MouseClickDrag, L,977, 669,745, 769
            MouseClickDrag, L,1927, 207,1927, 850
            MouseClickDrag, L,745, 663,786, 736
            MouseClickDrag, L,870, 705,869, 762
            MouseClickDrag, L,833, 707,1000, 757
            MouseClickDrag, L,1045, 708,1143, 764
            MouseClickDrag, L,863, 704,1201, 759
            MouseClickDrag, L,826, 893,781, 947
            MouseClickDrag, L,1017, 892,1030, 949
            MouseClickDrag, L,744, 895,870, 971
            MouseClick, L,857, 1014
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 204: 
        {
            MouseClickDrag, L,746, 464,755, 520
            MouseClickDrag, L,863, 469,925, 513
            MouseClickDrag, L,839, 817,748, 853
            MouseClickDrag, L,1927, 207,1927, 850
            MouseClickDrag, L,937, 251,743, 286
            MouseClickDrag, L,735, 596,744, 648
            MouseClickDrag, L,964, 591,838, 647
            MouseClickDrag, L,898, 598,988, 653
            MouseClickDrag, L,836, 597,1149, 654
            MouseClickDrag, L,963, 739,853, 795
            MouseClickDrag, L,817, 744,929, 800
            MouseClickDrag, L,964, 758,1018, 796
            MouseClickDrag, L,838, 919,769, 971
            MouseClickDrag, L,1011, 920,824, 972
            MouseClickDrag, L,775, 914,871, 974
            MouseClickDrag, L,882, 915,963, 975
            MouseClick, L,834, 1023
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 205: 
        {
            MouseClickDrag, L,829, 631,840, 695
            MouseClickDrag, L,970, 636,832, 825
            MouseClickDrag, L,1927, 226,1927, 533
            MouseClickDrag, L,826, 243,962, 369
            MouseClickDrag, L,819, 247,952, 381
            MouseClickDrag, L,811, 790,768, 844
            MouseClickDrag, L,881, 794,781, 874
            MouseClickDrag, L,765, 795,782, 890
            MouseClickDrag, L,802, 795,799, 912
            MouseClickDrag, L,1927, 541,1927, 956
            MouseClickDrag, L,770, 257,812, 311
            MouseClickDrag, L,892, 272,866, 335
            MouseClickDrag, L,862, 274,996, 331
            MouseClickDrag, L,875, 272,1032, 335
            MouseClickDrag, L,805, 564,810, 635
            MouseClickDrag, L,1022, 586,868, 669
            MouseClickDrag, L,1005, 558,1064, 665
            MouseClickDrag, L,912, 587,1176, 669
            MouseClickDrag, L,771, 891,819, 943
            MouseClickDrag, L,827, 898,843, 974
            MouseClickDrag, L,907, 910,1020, 973
            MouseClick, L,848, 1018
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 206: 
        {
            MouseClickDrag, L,900, 528,752, 567
            MouseClickDrag, L,923, 709,929, 751
            MouseClickDrag, L,735, 710,1110, 747
            MouseClickDrag, L,973, 705,992, 773
            MouseClickDrag, L,1927, 189,1927, 468
            MouseClickDrag, L,920, 492,769, 527
            MouseClickDrag, L,887, 496,867, 525
            MouseClickDrag, L,964, 487,1184, 529
            MouseClickDrag, L,1927, 498,1927, 809
            MouseClickDrag, L,822, 410,802, 447
            MouseClickDrag, L,861, 408,834, 471
            MouseClickDrag, L,778, 405,931, 473
            MouseClickDrag, L,784, 615,776, 668
            MouseClickDrag, L,736, 617,821, 672
            MouseClickDrag, L,939, 612,863, 672
            MouseClickDrag, L,1027, 613,968, 667
            MouseClickDrag, L,820, 633,1152, 672
            MouseClickDrag, L,745, 631,740, 688
            MouseClickDrag, L,733, 901,1004, 953
            MouseClickDrag, L,965, 900,1050, 952
            MouseClickDrag, L,930, 916,1118, 955
            MouseClick, L,839, 1022
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 207: 
        {
            MouseClickDrag, L,787, 666,905, 702
            MouseClickDrag, L,802, 666,929, 704
            MouseClickDrag, L,833, 668,902, 727
            MouseClickDrag, L,800, 994,843, 1031
            MouseClickDrag, L,1927, 271,1927, 577
            MouseClickDrag, L,867, 469,762, 513
            MouseClickDrag, L,752, 780,754, 816
            MouseClickDrag, L,929, 948,974, 991
            MouseClickDrag, L,884, 946,1054, 988
            MouseClickDrag, L,1927, 625,1927, 931
            MouseClickDrag, L,890, 600,752, 638
            MouseClickDrag, L,754, 938,752, 978
            MouseClick, L,858, 1022,
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 208: 
        {
            MouseClickDrag, L,752, 605,756, 648
            MouseClickDrag, L,760, 606,748, 675
            MouseClickDrag, L,1015, 969,747, 1014
            MouseClickDrag, L,1927, 308,1927, 917
            MouseClickDrag, L,738, 318,746, 359
            MouseClickDrag, L,1023, 318,734, 380
            MouseClickDrag, L,766, 493,844, 574
            MouseClickDrag, L,976, 519,991, 574
            MouseClickDrag, L,763, 518,1198, 575
            MouseClickDrag, L,918, 721,731, 758
            MouseClickDrag, L,907, 897,870, 948
            MouseClickDrag, L,872, 892,1074, 951
            MouseClickDrag, L,911, 897,1171, 949
            MouseClick, L,844, 1009
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 209: 
        {
            MouseClickDrag, L,853, 482,751, 532
            MouseClickDrag, L,935, 483,880, 525
            MouseClickDrag, L,859, 861,747, 900
            MouseClickDrag, L,918, 862,903, 895
            MouseClickDrag, L,1927, 199,1921, 499
            MouseClickDrag, L,796, 205,744, 245
            MouseClickDrag, L,789, 442,750, 496
            MouseClickDrag, L,811, 440,956, 498
            MouseClickDrag, L,872, 443,1218, 502
            MouseClickDrag, L,998, 451,1161, 506
            MouseClick, L,887, 921
            SendRaw,4550
            MouseClick, L,1719, 420,
            MouseClick, L,780, 898
            MouseClick, L,803, 942
            MouseClickDrag, L,1927, 536,1927, 777
            MouseClick, L,741, 432
            MouseClick, L,741, 479
            MouseClick, L,813, 417
            MouseClick, L,831, 490
            MouseClick, L,815, 443
            MouseClick, L,823, 488
            MouseClickDrag, L,818, 840,757, 879
            MouseClickDrag, L,1927, 760,1927, 888
            MouseClickDrag, L,751, 930,742, 969
            MouseClickDrag, L,874, 931,935, 971
            MouseClick, L,867, 1022,
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 210: 
        {
            MouseClickDrag, L,1014, 502,758, 537
            MouseClickDrag, L,797, 695,795, 727
            MouseClickDrag, L,823, 691,1012, 728
            MouseClickDrag, L,1025, 700,993, 759
            MouseClickDrag, L,750, 937,831, 974
            MouseClickDrag, L,881, 936,1027, 973
            MouseClickDrag, L,930, 932,927, 993
            MouseClickDrag, L,1927, 263,1927, 963
            MouseClickDrag, L,935, 246,755, 281
            MouseClick, L,731, 613
            MouseClick, L,736, 710
            MouseClick, L,783, 611
            MouseClick, L,778, 652
            MouseClick, L,847, 614
            MouseClick, L,840, 676
            MouseClick, L,901, 612
            MouseClick, L,887, 729
            MouseClickDrag, L,778, 920,792, 976
            MouseClickDrag, L,808, 917,901, 969
            MouseClickDrag, L,748, 932,1093, 969
            MouseClick, L,825, 1031
            Sleep, waitTime
            MouseClick, L,922, 158
        }
    
        case 301: 
        {
        }
        case 302: 
        {
        }
        case 303: 
        {
        }
        case 304: 
        {
        }
        case 305: 
        {
        }
        case 306: 
        {
        }
        case 307: 
        {
        }
        case 308: 
        {
        }
        case 309: 
        {
        }
        case 310: 
        {
        }
    }
}


