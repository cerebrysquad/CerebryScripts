﻿#SingleInstance force ; Ensure only one instance of the script runs at a time

global topic := 1 
global question := 1
global theme := 1
global autoChange := true
global tq := 101
global waitTime = 750

F12::Reload

#F1:: topic := 1
#F2:: topic := 2
#F3:: topic := 3

F1:: theme := 1
F2:: theme := 2
F3:: theme := 3
F4:: theme := 4
F5:: theme := 5
F6:: theme := 6
F7:: theme := 7
F8:: theme := 8
F9:: theme := 9
F10:: theme := 10
^+F1:: theme := 11
^+F2:: theme := 12
^+F3:: theme := 13
^+F4:: theme := 14
^+F5:: theme := 15

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


w:: WaitChange()



F11::
    Sequencer()  ; Call the Sequencer function if auto is true
return  

WaitChange(){
    InputBox, waitTime , Выберите задержку, мало 500(~3мин) -------- 1500(~9мин) много, , , , , , , , 750
}

Sequencer(){
    if(topic == 1||3){
        Loop, 15{
            if(theme <= 15){
                QuestionLoop()
                AutoChange()
                theme += 1
                question := 1
                Sleep, waitTime
            }
            else{
                break
            }
        }
    }else{
        Loop, 3{
            if(theme <= 3){
                QuestionLoop()
                AutoChange()
                theme += 1
                question := 1
                Sleep, waitTime
            }
            else{ 
                break
            }
        }
    }
}

AutoChange(){
    if(autoChange){
    Switch theme{
            case 1:{ 
                MouseClick, L,1179, 308,1,10  
                Sleep, waitTime
                return             
            }
            case 2:{    
                MouseClick, L,1180, 348,1,10
                Sleep, waitTime 
                return            
            
            }
            case 3:{ 
                if(topic == 2){
                    MouseClick, L,1181, 350
                    Sleep, waitTime
                    MouseClick, L,1169, 256
                    Sleep, waitTime
                    topic := 3
                    theme := 1
                    question := 1
                    Sleep, waitTime
                    Sequencer()
                }else
                {
                    MouseClick, L,1180, 398,1,10 
                    Sleep, waitTime
                }
                return             
            
            }
            case 4:{    
                MouseClick, L,1182, 443,1,10
                Sleep, waitTime 
                return            
            
            }
            case 5:{     
                MouseClick, L,1181, 486,1,10
                Sleep, waitTime
                return             
            
            }
            case 6:{ 
                MouseClick, L,1180, 533,1,10
                Sleep, waitTime 
                return            
            
            }
            case 7:{ 
                MouseClick, L,1178, 577,1,10
                Sleep, waitTime
                return             
            
            }
            case 8:{  
                MouseClick, L,1181, 622,1,10 
                Sleep, waitTime 
                return            
            
            }
            case 9:{ 
                MouseClick, L,1175, 668,1,10
                Sleep, waitTime
                return            
            
            }
            case 10:{  
                MouseClick, L,1177, 711,1,10  
                Sleep, waitTime
                return             
            
            }
            case 11:{  
                MouseClick, L,1175, 757,1,10
                Sleep, waitTime 
                return            
            
            }
            case 12:{ 
                MouseClick, L,1181, 803,1,10 
                Sleep, waitTime 
                return            
            
            }
            case 13:{  
                MouseClick, L,1175, 846,1,10
                Sleep, waitTime 
                return            
            
            }
            case 14:{
                MouseClick, L,1176, 887,1,10   
                Sleep, waitTime
                return             
            
            }
            case 15:{
                if(topic == 1){
                    MouseClick, L,1208, 297             
                    Sleep, waitTime
                    MouseClick, L,1177, 255
                    Sleep, waitTime                    
                    topic := 2
                    theme := 1
                    question := 1
                    Sleep, waitTime
                    Sequencer()
                }else {
                    MouseClick, L,1250, 116
                    Sleep, waitTimes
                    MouseClick, L,1240, 163
                    Sleep, waitTime
                    MouseClick, L,1013, 614   
                    Sleep, waitTime 
                    return  
                }                        
            }
        }
    }
}

QuestionLoop(){
    if(topic == 3){
        Loop , 5  
            {   
                    if (question <= 5) {
                        tq := theme * 100 + question  ; Calculate tq properly using := for expression asignment
                        Invoke(tq)  ; Call Invoke with tq
                        Sleep, waitTime ; Wait for 1 second
                        question++  ; Increment the question value
                    } 
                    else {
                        question :=1
                        break  
                    }
            }    
    }else{ 
        Loop , 10  
        {   
                if (question <= 10) {
                    tq := theme * 100 + question  ; Calculate tq properly using := for expression asignment
                    Invoke(tq)  ; Call Invoke with tq
                    Sleep, waitTime ; Wait for 1 second
                    question++  ; Increment the question value
                } 
                else {
                    question :=1
                    break  
                }
        }
    }
}



;Function for every spetial questions
Invoke(qq){

    if(topic == 1){
        Switch qq
        {   
            case 101 :{
                MouseClick, L,701, 401
                MouseClick, L,701, 519
                MouseClick, L,846, 587
                Sleep, waitTime
                MouseClick, L,1010,158 
            }
            case 102:{
                MouseClick, L,705, 427
                MouseClick, L,837, 598
                Sleep, waitTime
                MouseClick, L,1010,158     
            }
            case 103:{
                MouseClick, L,729, 425
                MouseClick, L,793, 540
                MouseClick, L,797, 582
                MouseClick, L,874, 537
                MouseClick, L,874, 585
                MouseClick, L,853, 579
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 104:{
                MouseClick, L,1120, 510
                MouseClick, L,1114, 547
                MouseClick, L,1123, 524
                MouseClick, L,1116, 593
                MouseClick, L,1122, 561
                MouseClick, L,1122, 608
                MouseClick, L,828, 652
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 105:{
                MouseClick, L,703, 565
                MouseClick, L,830, 623
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 106 :{
                MouseClick, L,751, 692
                MouseClick, L,802, 796
                SendRaw,25
                MouseClick, L,814, 842
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 107 :{
                MouseClick, L,702, 482
                MouseClick, L,702, 591
                MouseClick, L,826, 695
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 108 :{
                MouseClick, L,867, 476
                SendRaw,454
                MouseClick, L,835, 512
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 109 :{
                MouseClick, L,700, 737
                MouseClick, L,700, 813
                MouseClick, L,842, 944
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 110 :{
                MouseClick, L,700, 732
                MouseClick, L,700, 878
                MouseClick, L,700, 918
                MouseClick, L,853, 971
                Sleep, waitTime
                MouseClick, L,922, 158
            }
    
            case 201: 
            {
                MouseClick, L,707, 606
                Send, 3429
                MouseClick, L,840, 659
                Sleep, waitTime
                MouseClick, L,1013, 160
            }
            case 202: 
            {
                MouseClick, L,704, 629
                Send, 3993
                MouseClick, L,843, 682
                Sleep, waitTime
                MouseClick, L,995, 159
            }
            case 203: 
            {
                MouseClick, L,702, 609
                MouseClick, L,833, 664    
                Sleep, waitTime
                MouseClick, L,995, 159
    
            }
            case 204: 
            {
                MouseClick, L,704, 500
                MouseClick, L,849, 667
                Sleep, waitTime    
                MouseClick, L,997, 155
            }
            case 205: 
            {
                MouseClick, L,702, 616  
                MouseClick, L,860, 709
                Sleep, waitTime
                MouseClick, L,1013, 156
            }
            case 206: 
            {
                MouseClick, L,712, 513
                MouseClick, L,856, 569
                Sleep, waitTime
                MouseClick, L,1002, 156
            }
            case 207: 
            {
                MouseClick, L,730, 450
                MouseClick, L,732, 641
                MouseClick, L,827, 701
                MouseClick, L,1019, 163
                Sleep, waitTime
                MouseClick, L,1013, 161
            }
            case 208: 
            {
                MouseClick, L,727, 439
                MouseClick, L,826, 534
                Sleep, waitTime
                MouseClick, L,1013, 161
            }
            case 209: 
            {
                MouseClick, L,718, 643
                MouseClick, L,861, 742
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 210: 
            {
                MouseClickDrag, L, 887, 575, 714, 613
                MouseClickDrag, L, 911, 576, 784, 615
                MouseClickDrag, L, 940, 575, 853, 612
                MouseClick, L,815, 668
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 301: 
            {
                MouseClick, L,732, 379
                MouseClick, L,768, 536
                MouseClick, L,854, 668
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 302: 
            {
                MouseClick, L,701, 422
                MouseClick, L,836, 556
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 303: 
            {
                MouseClick, L,703, 675
                MouseClick, L,825, 785
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 304: 
            {
                MouseClick, L,803, 714
                MouseClickDrag,L,    1927, 162, 1927, 976
                MouseClick, L,774, 811
                MouseClick, L,850, 1025
                MouseClickDrag, L,1927, 810,1927, 258
    
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 305: 
            {
                MouseClick, L,709, 701
                MouseClick, L,838, 767
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 306: 
            {
                MouseClick, L,702, 668
                MouseClick, L,816, 767
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 307: 
            {
                MouseClick, L,791, 701
                MouseClick, L,765, 821
                MouseClick, L,846, 871
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 308: 
            {
                MouseClick, L,730, 695
                MouseClick, L,829, 735  
                MouseClick, L,839, 864
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 309: 
            {
                MouseClick, L,849, 426
                Send, 19
                MouseClick, L,841, 472
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 310: 
            {
                MouseClick, L,1149, 369
                Send,17
                MouseClick, L,843, 419
                Sleep, waitTime
                MouseClick, L, 922, 158
            }
        
            case 401: 
            {
                MouseClick, L,815, 550
                Send, 2
                MouseClick, L,876, 587
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 402: 
            {
                MouseClick, L,713, 582
                MouseClick, L,845, 715
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 403: 
            {
                MouseClick, L,819, 537
                Send,38
                MouseClick, L,841, 585
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 404: 
            {
                MouseClick, L,755, 712
                MouseClick, L,888, 836
                MouseClick, L,885, 903
                MouseClick, L,1081, 836
                MouseClick, L,1076, 878
                MouseClick, L,837, 896
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 405: 
            {
                MouseClick, L,961, 373
                Send,52
                MouseClick, L,864, 418
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 406: 
            {
                MouseClick, L,705, 386
                MouseClick, L,830, 529
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 407: 
            {
                MouseClick, L,708, 558
                MouseClick, L,846, 628
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 408: 
            {
                MouseClick, L,994, 520
                Send,100
                MouseClick, L,992, 545
                Send,225
                MouseClick, L,856, 590
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 409: 
            {
                MouseClick, L,925, 871
                Send,3
                MouseClick, L,836, 905
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 410: 
            {
                MouseClick, L,708, 553  
                MouseClick, L,846, 612
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 501: 
            {
                MouseClick, L,764, 726
                Send,9  
                MouseClick, L,840, 778
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 502: 
            {
                MouseClick, L,1010, 730
                MouseClick, L,1024, 768
                MouseClick, L,1159, 730
                MouseClick, L,1162, 795
                MouseClick, L,854, 798
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 503: 
            {
                MouseClick, L,790, 731
                MouseClick, L,784, 768
                MouseClick, L,786, 756
                MouseClick, L,790, 818
                MouseClick, L,741, 901
                MouseClick, L,820, 998
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 504: 
            {
                MouseClick, L,709, 717
                MouseClick, L,836, 776
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 505: 
            {
                MouseClick, L,938, 655
                Send,246
                MouseClick, L,852, 710
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 506: 
            {
                MouseClick, L,709, 790
                MouseClick, L,838, 886
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 507: 
            {
                MouseClick, L,703, 753
                MouseClick, L,802, 887
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 508: 
            {
                MouseClick, L,1005, 689
                Send,8575
                MouseClick, L,826, 730
                Sleep, waitTime
                MouseClick, L,1010, 158 
            }
            case 509: 
            {
                MouseClick, L,718, 812
                MouseClick, L,846, 876
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 510: 
            {
                MouseClick, L,809, 790
                MouseClickDrag, L,1927, 278, 1927, 966
                MouseClick, L,854, 1013
                MouseClickDrag, L,1927, 278, 1927, 188
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 601: 
            {
                MouseClick, L,743, 606
                MouseClick, L,815, 685
                MouseClick, L,820, 751
                MouseClick, L,860, 681
                MouseClick, L,868, 772
                MouseClick, L,1039, 682
                MouseClick, L,1038, 724
                MouseClick, L,858, 730
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 602: 
            {
                MouseClick, L,934, 510
                Send,100
                MouseClick, L,826, 561
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 603: 
            {
                MouseClick, L,871, 448
                Send,1745
                MouseClick, L,852, 494
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 604: 
            {
                MouseClick, L,701, 495
                MouseClick, L,830, 667
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 605: 
            {
                MouseClick, L,1008, 491
                SendRaw, 50,2
                MouseClick, L,705, 585
                SendRaw, половину
                MouseClick, L,841, 632
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 606: 
            {
                MouseClick, L,726, 468
                MouseClick, L,740, 537
                MouseClick, L,835, 694
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 607: 
            {
                MouseClick, L,750, 645
                MouseClick, L,852, 741
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 608: 
            {
                MouseClick, L,897, 596
                SendRaw, 5,45
                MouseClick, L,847, 643
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 609: 
            {
                MouseClick, L,987, 657
                SendRaw,53,5
                MouseClick, L,984, 682
                SendRaw,72,25
                MouseClick, L,832, 734
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 610: 
            {
                MouseClick, L,931, 611
                SendRaw,84,3
                MouseClick, L,853, 655
                Sleep, waitTime
                MouseClick, L,922, 158
            }
            case 701: 
            {
                MouseClick, L,720, 625
                MouseClick, L,826, 675
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 702: 
            {
                MouseClick, L,725, 577
                MouseClick, L,824, 745
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 703: 
            {
                MouseClick, L,975, 652
                MouseClick, L,969, 721
                MouseClick, L,1044, 654
                MouseClick, L,1043, 723
                MouseClick, L,1157, 657
                SendRaw,100
                MouseClick, L,814, 679
                SendRaw,0
                MouseClick, L,970, 705
                MouseClick, L,969, 795
                MouseClick, L,1034, 701
                MouseClick, L,1046, 819
                MouseClick, L,1158, 706
                SendRaw,400
                MouseClick, L,809, 729
                SendRaw,500
                MouseClick, L,835, 770
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 704: 
            {
                MouseClick, L,783, 740
                MouseClick, L,828, 834
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 705: 
            {
                MouseClick, L,751, 723
                MouseClick, L,738, 809
                MouseClick, L,737, 939
                MouseClick, L,844, 1025
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 706: 
            {
                MouseClick, L,753, 938
                MouseClick, L,894, 1007
                Sleep, 100
                SendRaw,16,67
                MouseClick, L,900, 1030
                Sleep, 100
                SendRaw,1
                MouseClickDrag, L,1927, 519,1927, 801
                MouseClick, L,846, 1018
                MouseClickDrag, L,1927, 810,1927, 258
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 707: 
            {
                MouseClick, L,816, 545
                SendRaw, 10,38
                MouseClick, L,845, 589
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 708: 
            {
                MouseClick, L,705, 584
                MouseClick, L,846, 717
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 709: 
            {
                MouseClick, L,761, 521
                SendRaw,0,1
                MouseClick, L,836, 558
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 710: 
            {
                MouseClick, L,799, 430
                MouseClick, L,753, 521
                MouseClick, L,823, 643
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 801: 
            {
                MouseClick, L,705, 358
                SendRaw,56
                MouseClick, L,782, 360
                SendRaw,7
                MouseClick, L,863, 360
                SendRaw,8
                MouseClick, L,834, 416
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 802: 
            {
                MouseClick, L,741, 673
                MouseClick, L,738, 759
                MouseClick, L,735, 804
                MouseClick, L,736, 842
                MouseClick, L,863, 1008
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 803: 
            {
                MouseClick, L,701, 704
                MouseClick, L,703, 778
                MouseClick, L,828, 842
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 804: 
            {
                MouseClick, L,731, 418
                MouseClick, L,835, 483
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 805: 
            {
                MouseClick, L,706, 619
                MouseClick, L,844, 717
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 806: 
            {
                MouseClick, L,812, 533
                SendRaw,21
                MouseClick, L,857, 583
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 807: 
            {
                MouseClick, L,740, 357
                MouseClick, L,736, 483
                MouseClick, L,738, 569
                MouseClick, L,737, 693
                MouseClick, L,739, 850
                MouseClick, L,841, 905
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 808: 
            {
                MouseClick, L,848, 499
                SendRaw,9
                MouseClick, L,831, 516
                SendRaw,7
                MouseClick, L,838, 537
                SendRaw,4
                MouseClick, L,827, 605
                Sleep, waitTime
                MouseClick, L,1010, 158
            }
            case 809: 
            {
                MouseClick, L,706, 633
                SendRaw,0,33
                MouseClick, L,848, 692
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 810: 
            {
                MouseClick, L,710, 732
                MouseClick, L,844, 771
                MouseClick, L,859, 826
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 901: 
            {
                MouseClickDrag, L,1927, 192, 1927, 840
                MouseClick, L,825, 881
                MouseClick, L,837, 1024
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 902: 
            {
                MouseClick, L,923, 469
                SendRaw,40
                MouseClick, L,857, 511
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 903: 
            {
                MouseClick, L,748, 504
                MouseClick, L,812, 673
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 904: 
            {
                MouseClick, L,767, 421
                MouseClick, L,749, 548
                MouseClick, L,739, 701
                MouseClick, L,821, 784
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 905: 
            {
                MouseClick, L,973, 361
                SendRaw,27720
                MouseClick, L,841, 402
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 906: 
            {
                MouseClick, L,793, 378
                SendRaw,0,08
                MouseClick, L,802, 418
                SendRaw,0,92
                MouseClick, L,841, 492
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 907: 
            {
                MouseClick, L,715, 442
                MouseClick, L,830, 524
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 908: 
            {
                MouseClick, L,700, 623
                MouseClick, L,840, 766
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 909: 
            {
                MouseClick, L,706, 941
                MouseClick, L,834, 994
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 910: 
            {
                MouseClick, L,753, 677
                MouseClick, L,880, 759
                SendRaw,400
                MouseClick, L,718, 785
                MouseClick, L,720, 829
                MouseClick, L,809, 822
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 1001: 
            {
                MouseClick, L,710, 548
                MouseClick, L,824, 639
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1002: 
            {
                MouseClick, L,707, 340
                MouseClick, L,835, 478
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1003: 
            {
                MouseClick, L,714, 375
                MouseClick, L,830, 513
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1004: 
            {
                MouseClick, L,892, 333
                SendRaw,252
                MouseClick, L,837, 379
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1005: 
            {
                MouseClick, L,742, 384
                MouseClick, L,743, 470
                MouseClick, L,742, 628
                MouseClick, L,845, 683
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1006: 
            {
                MouseClick, L,767, 315
                MouseClick, L,837, 478
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1007: 
            {
                MouseClick, L,816, 337
                MouseClick, L,858, 478
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1008: 
            {
                MouseClick, L,799, 924
                MouseClick, L,826, 1042
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1009: 
            {
                MouseClick, L,916, 410
                SendRaw,102
                MouseClick, L,835, 441
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1010: 
            {
                MouseClick, L,857, 406
                SendRaw,1200
                MouseClick, L,851, 445
                Sleep, waitTime
                MouseClick, L,922, 158
            }
        
            case 1101: 
            {
                MouseClick, L,704, 465
                MouseClick, L,846, 572
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1102: 
            {
                MouseClick, L,1153, 369
                SendRaw,15
                MouseClick, L,845, 414
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1103: 
            {
                MouseClickDrag, L,1927, 258,1927, 810
                MouseClick, L,706, 583
                MouseClick, L,731, 882
                MouseClick, L,744, 843
                MouseClick, L,729, 771
                MouseClick, L,745, 728
                MouseClick, L,829, 1008
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1104: 
            {
                MouseClick, L,719, 676
                MouseClick, L,819, 813
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1105: 
            {
                MouseClick, L,911, 496
                SendRaw,37680
                MouseClick, L,839, 540
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1106: 
            {
                MouseClick, L,729, 440
                SendRaw,600
                MouseClick, L,821, 491
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1107: 
            {
                MouseClick, L,930, 407
                SendRaw,250
                MouseClick, L,836, 455
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1108: 
            {
                MouseClick, L,704, 482
                MouseClick, L,856, 617
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1109: 
            {
                MouseClickDrag, L,1927, 258,1927, 810
                MouseClick, L,809, 475
                MouseClick, L,818, 1015
                MouseClickDrag, L,1927, 810,1927, 258            
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1110: 
            {
                MouseClick, L,757, 750
                SendRaw,74
                MouseClick, L,856, 798
                Sleep, waitTime
                MouseClick, L,922, 158
                
            }
            
            case 1201: 
            {
                MouseClick, L,756, 577
                SendRaw,500
                MouseClick, L,755, 601
                SendRaw,4500
                MouseClick, L,730, 628
                SendRaw, 30000
                MouseClick, L,843, 672
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1202: 
            {
                MouseClick, L,772, 573
                SendRaw,30000
                MouseClick, L,748, 597
                SendRaw,0,154
                MouseClick, L,861, 643
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1203: 
            {
                MouseClick, L,753, 693
                MouseClick, L,858, 863
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1204: 
            {
                MouseClick, L,703, 368
                MouseClick, L,841, 500
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1205: 
            {
                MouseClick, L,780, 608
                MouseClick, L,838, 686
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1206: 
            {
                MouseClick, L,702, 671
                MouseClick, L,812, 878
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1207: 
            {
                MouseClick, L,778, 568
                SendRaw,84
                MouseClick, L,781, 603
                SendRaw,84
                MouseClick, L,773, 648
                SendRaw,48
                MouseClick, L,851, 731
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1208: 
            {
                MouseClick, L,735, 353
                MouseClick, L,746, 510
                MouseClick, L,735, 599
                MouseClick, L,837, 693
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1209: 
            {
                MouseClick, L,824, 346
                SendRaw,4
                MouseClick, L,837, 395
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1210: 
            {
                MouseClick, L,933, 641
                MouseClick, L,860, 769
                Sleep, waitTime
                MouseClick, L,922, 158
            }
            
            case 1301: 
            {
                MouseClick, L,730, 722
                MouseClick, L,831, 793
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1302: 
            {
                MouseClick, L,771, 629
                MouseClick, L,851, 808
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1303: 
            {
                MouseClick, L,781, 748
                MouseClick, L,836, 812
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1304: 
            {
                MouseClick, L,713, 541
                MouseClick, L,838, 677
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1305: 
            {
                MouseClick, L,718, 593
                MouseClick, L,845, 685
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1306: 
            {
                MouseClick, L,715, 647
                MouseClick, L,851, 708
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1307: 
            {
                MouseClickDrag, L,1927, 258,1927, 810
                MouseClick, L,736, 848
                MouseClick, L,835, 1015
                MouseClickDrag, L,1927, 810,1927, 258
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1308: 
            {
                MouseClick, L,940, 862
                MouseClick, L,849, 958
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1309: 
            {
                MouseClickDrag, L,1927, 258,1927, 810
                MouseClick, L,716, 888
                MouseClick, L,850, 1016
                MouseClickDrag, L,1927, 810,1927, 258
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1310: 
            {
                MouseClick, L,726, 641
                MouseClick, L,819, 774
                Sleep, waitTime
                MouseClick, L,922, 158
            }
            
            case 1401: 
            {
                MouseClick, L,951, 367
                SendRaw,37
                MouseClick, L,837, 417
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1402: 
            {
                MouseClick, L,859, 369
                SendRaw,188
                MouseClick, L,834, 407
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1403: 
            {
                MouseClick, L,703, 364
                MouseClick, L,701, 449
                MouseClick, L,719, 599
                MouseClick, L,827, 655
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1404: 
            {
                MouseClick, L,718, 486
                MouseClick, L,851, 576
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1405: 
            {
                MouseClick, L,723, 570
                MouseClick, L,842, 635
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1406: 
            {
                MouseClick, L,708, 367
                MouseClick, L,708, 455
                MouseClick, L,866, 578
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1407: 
            {
                MouseClick, L,857, 563
                SendRaw,1
                MouseClick, L,922, 571
                SendRaw,2
                MouseClick, L,823, 627
                Sleep, waitTime
                MouseClick, L,1010,158
                
            }
            case 1408: 
            {
                MouseClick, L,709, 415
                MouseClick, L,835, 474
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1409: 
            {
                MouseClick, L,922, 322
                SendRaw,8
                MouseClick, L,826, 362
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1410: 
            {
                MouseClick, L,763, 462
                MouseClick, L,763, 581
                SendRaw,992
                MouseClick, L,829, 620
                Sleep, waitTime
                MouseClick, L,922, 158
            }
            
            case 1501: 
            {
                MouseClick, L,746, 441
                SendRaw,17
                MouseClick, L,847, 473
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1502: 
            {
                MouseClick, L,756, 767
                SendRaw,51,75
                MouseClick, L,848, 820
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1503: 
            {
                MouseClick, L,702, 539
                MouseClick, L,832, 587
                SendRaw,3
                MouseClick, L,827, 629
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1504: 
            {
                MouseClick, L,708, 350
                MouseClick, L,833, 452
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1505: 
            {
                MouseClick, L,721, 733
                MouseClick, L,813, 828
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1506: 
            {
                MouseClick, L,712, 712
                MouseClick, L,840, 766
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1507: 
            {
                MouseClick, L,742, 709
                MouseClick, L,848, 775
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1508: 
            {
                MouseClick, L,838, 635
                SendRaw,19
                MouseClick, L,827, 673
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1509: 
            {
                MouseClick, L,755, 405
                SendRaw,61500
                MouseClick, L,847, 448
                Sleep, waitTime
                MouseClick, L,1010,158
            }
            case 1510: 
            {
                MouseClick, L,903, 421
                MouseClick, L,902, 464
                MouseClick, L,829, 464
                MouseClick, L,828, 508
                MouseClick, L,937, 468
                SendRaw,13600
                MouseClick, L,687, 494
                MouseClick, L,695, 559
                MouseClick, L,783, 490
                SendRaw,13500
                MouseClick, L,1051, 492
                SendRaw,100
                MouseClick, L,742, 515
                MouseClick, L,744, 557
                MouseClick, L,837, 560
                Sleep, waitTime
                MouseClick, L,967, 611
                Sleep, waitTime

                topic := 1
            }
        
        
        }
        return
    }
    if (topic == 2){
        Switch qq
        {   
        case 101:{ 
            MouseClick, L,712, 489
            MouseClick, L,847, 621
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 102:{ 
            MouseClick, L,708, 535
            MouseClick, L,838, 675
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 103:{ 
            MouseClick, L,780, 348
            MouseClick, L,851, 492
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 104:{ 
            MouseClick, L,704, 489
            MouseClick, L,823, 576
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 105:{ 
            MouseClick, L,843, 487
            MouseClick, L,834, 532
            MouseClick, L,994, 484
            MouseClick, L,1004, 531
            MouseClick, L,1116, 487
            MouseClick, L,1132, 551
            MouseClick, L,873, 542
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 106:{ 
            MouseClick, L,702, 586
            MouseClick, L,856, 634
            MouseClick, L,849, 703
            MouseClick, L,856, 685
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 107:{ 
            MouseClick, L,963, 544
            SendRaw,0,37
            MouseClick, L,845, 701
            MouseClick, L,837, 605
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 108:{ 
            MouseClick, L,706, 575
            MouseClick, L,814, 667
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 109:{
            MouseClick, L,1024, 558
            SendRaw,0,880 
            MouseClick, L,847, 716
            MouseClick, L,822, 621
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 110:{ 
            MouseClick, L,1017, 494
            SendRaw,3
            MouseClick, L,842, 667
            MouseClick, L,843, 556
            Sleep, waitTime
            MouseClick, L,922, 158
        } 
        case 201:{ 
            MouseClick, L,996, 621
            SendRaw,75
            MouseClick, L,838, 784
            MouseClick, L,829, 682
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 202:{ 
            MouseClick, L,708, 762
            MouseClick, L,826, 857
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 203:{ 
            MouseClick, L,1054, 747
            SendRaw,41
            MouseClick, L,1110, 750
            SendRaw,190
            MouseClick, L,860, 801
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 204:{ 
            MouseClick, L,847, 808
            SendRaw,58,3
            MouseClick, L,1517, 699
            MouseClick, L,847, 875
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 205:{ 
            MouseClick, L,717, 534
            MouseClick, L,843, 634
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 206:{ 
            MouseClick, L,913, 325
            SendRaw,41,4
            MouseClick, L,844, 485
            MouseClick, L,830, 383
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 207:{ 
            
            MouseClick, L,709, 562
            MouseClick, L,849, 618
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 208:{ 
            MouseClick, L,1071, 454
            MouseClick, L,1084, 510
            MouseClick, L,1055, 483
            MouseClick, L,1057, 553
            MouseClick, L,720, 508
            MouseClick, L,740, 555
            MouseClick, L,858, 555
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 209:{ 
            MouseClick, L,742, 610
            MouseClick, L,842, 713
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 210:{ 
            MouseClick, L,913, 509
            MouseClick, L,916, 545
            MouseClick, L,1151, 505
            MouseClick, L,1164, 547
            MouseClick, L,860, 555
            Sleep, waitTime
            MouseClick, L,922, 158
        } 
        case 301:{ 
            MouseClick, L,738, 676
            MouseClick, L,857, 847
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 302:{ 
            MouseClick, L,903, 615
            SendRaw,121,50
            MouseClick, L,835, 684
            MouseClick, L,835, 684
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 303:{ 
            MouseClick, L,938, 668
            SendRaw,27,5
            MouseClick, L,842, 734
            MouseClick, L,842, 734
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 304:{ 
            MouseClick, L,709, 572
            MouseClick, L,858, 705
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 305:{ 
            MouseClick, L,715, 614
            MouseClick, L,753, 660
            MouseClick, L,751, 710
            MouseClick, L,816, 660
            MouseClick, L,806, 706
            MouseClick, L,1013, 659
            MouseClick, L,1005, 757
            MouseClick, L,1079, 664
            MouseClick, L,1114, 707
            MouseClick, L,854, 705
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 306:{ 
            MouseClick, L,716, 482
            MouseClick, L,820, 566
            MouseClick, L,830, 612
            MouseClick, L,1002, 571
            MouseClick, L,1005, 612
            MouseClick, L,788, 598
            MouseClick, L,790, 635
            MouseClick, L,927, 595
            MouseClick, L,922, 641
            MouseClick, L,1074, 598
            MouseClick, L,1057, 641
            MouseClick, L,845, 630
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 307:{ 
            MouseClick, L,710, 524
            MouseClick, L,904, 606
            MouseClick, L,904, 657
            MouseClick, L,968, 610
            MouseClick, L,963, 650
            MouseClick, L,820, 636
            MouseClick, L,816, 678
            MouseClick, L,1021, 634
            MouseClick, L,1012, 676
            MouseClick, L,828, 680
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 308:{ 
            MouseClick, L,711, 405
            MouseClick, L,827, 466
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 309:{ 
            MouseClick, L,983, 523
            SendRaw,3
            MouseClick, L,828, 564
            MouseClick, L,828, 564
            Sleep, waitTime
            MouseClick, L,1010,158
        }  
        case 310:{
            MouseClick, L,816, 593
            MouseClick, L,824, 642 
            MouseClick, L,1031, 588
            MouseClick, L,1028, 659
            MouseClick, L,852, 637
            Sleep, waitTime
            MouseClick, L,958, 612
        } 
        }
        return
    }
    if (topic == 3){
        Switch qq
        {
        case 101: 
        {
            MouseClick, L,742, 373
            MouseClick, L,736, 490
            MouseClick, L,837, 555
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 102: 
        {
            MouseClick, L,736, 402
            MouseClick, L,794, 520
            MouseClick, L,787, 565
            MouseClick, L,889, 517
            MouseClick, L,885, 568
            MouseClick, L,870, 566
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 103: 
        {
            MouseClick, L,743, 674
            MouseClick, L,826, 768
            SendRaw,25
            MouseClick, L,822, 814
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 104: 
        {
            MouseClick, L,704, 711
            MouseClick, L,702, 788
            MouseClick, L,820, 914
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 105: 
        {
            MouseClick, L,697, 734
            MouseClick, L,701, 879
            MouseClick, L,706, 920
            MouseClick, L,832, 986
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 201: 
        {
            MouseClick, L,701, 581
            MouseClick, L,821, 707
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 202: 
        {
            MouseClick, L,701, 576
            SendRaw,3261
            MouseClick, L,863, 633
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 203: 
        {
            MouseClick, L,718, 490
            MouseClick, L,830, 550
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 204: 
        {
            MouseClick, L,737, 426
            MouseClick, L,758, 617
            MouseClick, L,845, 687
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 205: 
        {
            MouseClick, L,706, 606
            SendRaw,3964
            MouseClick, L,834, 648
            Sleep, waitTime
            MouseClick, L,922, 158
        }
       
        case 301: 
        {
            MouseClick, L,788, 715
            MouseClickDrag, L,1927, 258,1927, 810
            MouseClick, L,821, 848
            MouseClick, L,824, 1019
            MouseClick, L,842, 1018
            MouseClickDrag, L,1927, 810,1927, 258  
            Sleep, waitTime
            MouseClick, L,1010,158          
        }
        case 302: 
        {
            MouseClick, L,733, 351
            MouseClick, L,749, 542
            MouseClick, L,849, 642
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 303: 
        {
            MouseClick, L,703, 397
            MouseClick, L,835, 534
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 304: 
        {
            MouseClick, L,701, 577
            MouseClick, L,817, 746
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 305: 
        {
            MouseClick, L,764, 678
            MouseClick, L,757, 797
            MouseClick, L,859, 866
            Sleep, waitTime
            MouseClick, L,922, 158
        }
        case 401: 
        {
            MouseClick, L,700, 528
            MouseClick, L,862, 593
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 402: 
        {
            MouseClick, L,702, 600
            MouseClick, L,841, 701
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 403: 
        {
            MouseClick, L,704, 688
            MouseClick, L,887, 811
            MouseClick, L,880, 890
            MouseClick, L,1085, 810
            MouseClick, L,1085, 859
            MouseClick, L,831, 884
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 404: 
        {
            MouseClick, L,962, 341
            SendRaw,56
            MouseClick, L,863, 395
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 405: 
        {
            MouseClick, L,974, 496
            SendRaw,80
            MouseClick, L,984, 522
            SendRaw,140
            MouseClick, L,842, 572
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 501: 
        {
            MouseClick, L,708, 731
            MouseClick, L,860, 865
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 502: 
        {
            MouseClick, L,784, 704
            MouseClick, L,786, 753
            MouseClick, L,766, 730
            MouseClick, L,795, 794
            MouseClick, L,738, 877
            MouseClick, L,819, 956
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 503: 
        {
            MouseClick, L,913, 628
            SendRaw,371
            MouseClick, L,817, 676
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 504: 
        {
            MouseClick, L,708, 760
            MouseClick, L,826, 856
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 505: 
        {
            MouseClick, L,800, 749
            MouseClickDrag, L,1927, 258,1927, 810
            MouseClick, L,843, 1018
            MouseClickDrag, L,1927, 810,1927, 258            
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 601: 
        {
            MouseClick, L,886, 430
            SendRaw,2094
            MouseClick, L,824, 465
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 602: 
        {
            MouseClick, L,1008, 465
            SendRaw,56,2
            MouseClick, L,735, 562
            SendRaw,0,5
            MouseClick, L,824, 603
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 603: 
        {
            MouseClick, L,734, 578
            MouseClick, L,810, 655
            MouseClick, L,812, 724
            MouseClick, L,867, 657
            MouseClick, L,868, 750
            MouseClick, L,1036, 657
            MouseClick, L,1033, 703
            MouseClick, L,850, 707
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 604: 
        {
            MouseClick, L,991, 632
            SendRaw,47,4
            MouseClick, L,973, 659
            SendRaw,64
            MouseClick, L,853, 698
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 605: 
        {
            MouseClick, L,705, 704
            MouseClick, L,839, 769
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 701: 
        {
            MouseClick, L,720, 558
            MouseClick, L,843, 716
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 702: 
        {
            MouseClick, L,718, 557
            MouseClick, L,843, 695
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 703: 
        {
            MouseClick, L,762, 408
            MouseClick, L,750, 492
            MouseClick, L,849, 619
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 704: 
        {
            MouseClick, L,730, 913
            MouseClick, L,944, 979
            SendRaw,25
            MouseClick, L,895, 1005
            SendRaw,1
            MouseClick, L,854, 1036
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 705: 
        {
            MouseClick, L,780, 699
            MouseClick, L,743, 786
            MouseClick, L,737, 912
            MouseClick, L,840, 1004
            Sleep, waitTime
            MouseClick, L,922, 158
        }
        case 801: 
        {
            MouseClick, L,707, 713
            MouseClick, L,735, 741
            MouseClick, L,845, 811
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 802: 
        {
            MouseClick, L,707, 612
            SendRaw,0,33
            MouseClick, L,855, 674
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 803: 
        {
            MouseClick, L,831, 472
            SendRaw,8
            MouseClick, L,845, 497
            SendRaw,6
            MouseClick, L,853, 517
            SendRaw,5
            MouseClick, L,864, 584
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 804: 
        {
            MouseClick, L,731, 702
            MouseClick, L,729, 796
            MouseClick, L,753, 842
            MouseClick, L,758, 877
            MouseClick, L,847, 1045
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 805: 
        {
            MouseClick, L,755, 339
            MouseClick, L,747, 463
            MouseClick, L,747, 547
            MouseClick, L,734, 667
            MouseClick, L,743, 820
            MouseClick, L,856, 879
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 901: 
        {
            MouseClick, L,957, 443
            SendRaw,40
            MouseClick, L,855, 480
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 902: 
        {
            MouseClick, L,974, 334
            SendRaw,2520
            MouseClick, L,864, 393
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 903: 
        {
            MouseClick, L,795, 353
            SendRaw,0,08
            MouseClick, L,799, 398
            SendRaw,0,92
            MouseClick, L,824, 466
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 904: 
        {
            MouseClickDrag, L,1927, 258,1927, 810
            MouseClick, L,882, 883
            MouseClick, L,831, 1017            
            MouseClickDrag, L,1927, 810,1927, 258  
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 905: 
        {
            MouseClick, L,774, 394
            MouseClick, L,734, 523
            MouseClick, L,747, 677
            MouseClick, L,862, 765
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 1001: 
        {
            MouseClick, L,752, 294
            MouseClick, L,844, 472
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1002: 
        {
            MouseClick, L,876, 379
            SendRaw,1000
            MouseClick, L,864, 436
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1003: 
        {
            MouseClick, L,727, 355
            MouseClick, L,872, 486
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1004: 
        {
            MouseClick, L,917, 305
            SendRaw,228
            MouseClick, L,848, 356
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1005: 
        {
            MouseClick, L,739, 362
            MouseClick, L,738, 448
            MouseClick, L,743, 600
            MouseClick, L,843, 666
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 1101: 
        {
            MouseClickDrag, L,1927, 258,1927, 810
            MouseClick, L,738, 586
            MouseClick, L,713, 886
            MouseClick, L,728, 846
            MouseClick, L,749, 769
            MouseClick, L,748, 737
            MouseClick, L,865, 1019
            MouseClickDrag, L,1927, 810,1927, 258  
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1102: 
        {
            MouseClickDrag, L,1927, 258,1927, 810
            MouseClick, L,854, 498
            MouseClick, L,845, 1019
            MouseClickDrag, L,1927, 810,1927, 258 
            Sleep, waitTime
            MouseClick, L,1010,158 
        }
        case 1103: 
        {
            MouseClick, L,701, 343
            MouseClick, L,830, 541
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1104: 
        {
            MouseClick, L,1155, 349
            SendRaw,24
            MouseClick, L,876, 394
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1105: 
        {
            MouseClick, L,743, 725
            SendRaw,74
            MouseClick, L,824, 771
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 1201: 
        {
            MouseClick, L,752, 555
            SendRaw,32000
            MouseClick, L,731, 580
            SendRaw,0,145
            MouseClick, L,854, 623
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1202: 
        {
            MouseClick, L,787, 543
            SendRaw,56
            MouseClick, L,788, 587
            SendRaw,56
            MouseClick, L,777, 627
            SendRaw,32
            MouseClick, L,829, 693
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1203: 
        {
            MouseClick, L,829, 325
            SendRaw,5
            MouseClick, L,840, 379
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1204: 
        {
            MouseClick, L,704, 644
            MouseClick, L,856, 853
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1205: 
        {
            MouseClick, L,741, 329
            MouseClick, L,736, 489
            MouseClick, L,747, 570
            MouseClick, L,829, 675
            Sleep, waitTime
            MouseClick, L,922, 158
        }
        case 1301: 
        {
            MouseClick, L,706, 592
            MouseClick, L,855, 659
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1302: 
        {
            MouseClick, L,716, 493
            MouseClick, L,863, 668
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1303: 
        {
            MouseClick, L,702, 550
            MouseClick, L,861, 684
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1304: 
        {
            MouseClick, L,730, 916
            MouseClick, L,842, 970
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1305: 
        {
            MouseClick, L,719, 542
            MouseClick, L,871, 664
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 1401: 
        {
            MouseClick, L,735, 550
            MouseClick, L,837, 611
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1402: 
        {
            MouseClick, L,717, 386
            MouseClick, L,828, 459
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1403: 
        {
            MouseClick, L,902, 298
            SendRaw,8
            MouseClick, L,848, 353
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1404: 
        {
            MouseClick, L,778, 435
            MouseClick, L,757, 553
            SendRaw,996
            MouseClick, L,845, 594
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1405: 
        {
            MouseClick, L,714, 344
            MouseClick, L,719, 427
            MouseClick, L,711, 573
            MouseClick, L,869, 639
            Sleep, waitTime
            MouseClick, L,922, 158
        }

        case 1501: 
        {
            MouseClick, L,710, 516
            MouseClick, L,818, 568
            SendRaw,9
            MouseClick, L,851, 613
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1502: 
        {
            MouseClick, L,832, 611
            SendRaw,19
            MouseClick, L,853, 654
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1503: 
        {
            MouseClick, L,732, 576
            MouseClick, L,841, 734
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1504: 
        {
            MouseClick, L,735, 383
            SendRaw,73500
            MouseClick, L,861, 427
            Sleep, waitTime
            MouseClick, L,1010,158
        }
        case 1505: 
        {
            MouseClick, L,909, 395
            MouseClick, L,903, 434
            MouseClick, L,823, 439
            MouseClick, L,827, 489
            MouseClick, L,946, 440
            SendRaw,14600
            MouseClick, L,694, 467
            MouseClick, L,693, 532
            MouseClick, L,795, 471
            SendRaw,14500
            MouseClick, L,1057, 468
            SendRaw,100
            MouseClick, L,743, 491
            MouseClick, L,742, 529
            MouseClick, L,829, 537
            Sleep, waitTime
            MouseClick, L,922, 158

            topic = 
        }
        }
        return
    }
}


