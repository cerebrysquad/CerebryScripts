

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
w:: WaitChange()



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

AutoChange(){
    if(autoChange){
    Switch theme{
            case 1:{ 
                MouseClick, L,1176, 309,1,10
                Sleep, waitTime

            }
            case 2:{    
                MouseClick, L,1169, 350,1,10
                Sleep, waitTime

            }
            case 3:{ 
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
Invoke(qq){
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
}
