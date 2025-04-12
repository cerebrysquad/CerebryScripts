
#SingleInstance force ; Ensure only one instance of the script runs at a time

global question := 1
global theme := 1
global auto := true
global autoChange := true
global tq := 101
global waitTime = 750

;Fast exit
F12::Reload



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

q::  
    auto := !auto
return
;w:: WaitChange()



F11::
if (auto){
    Sequencer()  ; Call the Sequencer function if auto is true
}else{
    tq := theme * 100 + question  ; Calculate tq        
    Invoke(tq)  ; Call Invoke with the calculated tq    
}
return  

WaitChange(){
    InputBox, waitTime , Выберите задержку, мало 500(~3мин) -------- 1500(~9мин) много, , , , , , , , 750
}

Sequencer(){
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
                MouseClick, L,1180, 351,1,10
                Sleep, waitTime 
                return            
            
            }
            case 3:{   
                MouseClick, L,1180, 398,1,10 
                Sleep, waitTime
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
                MouseClick, L,1250, 116
                Sleep, waitTime
                MouseClick, L,1240, 163
                Sleep, waitTime
                MouseClick, L,1013, 614   
                Sleep, waitTime 
                return            
                         
            }
        }
    }
}

QuestionLoop(){
    
    Loop , 10  ; Loop 10 times
        {   
            if (question <= 10) {
                    tq := theme * 100 + question  ; Calculate tq properly using := for expression asignment
                    Invoke(tq)  ; Call Invoke with tq
                    Sleep, waitTime ; Wait for 1 second
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
        }
    }
}