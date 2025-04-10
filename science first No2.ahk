#Persistent ; Keep the script running
#NoEnv ; Avoid environment variables
#SingleInstance force ; Ensure only one instance of the script runs at a time

global question := 1
global theme := 1
global auto := true
global th := 101

Send, {Down}
;Fast exit
F12::Reload



F1:: theme := 1
F2:: theme := 2
F3:: theme := 3
F4:: theme := 4
F5:: theme := 5

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
            Sleep, 1000  ; Wait for 1 second
            question++  ; Increment the question value
        } 
        else {
            question :=1
            break  ; Exit the loop if question reaches 10
        }
    }
}



Invoke(qq){
    Switch qq{
        Default:()
        case 101:{
            MouseClick, L,726, 524
            Send, {Down} 
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            MouseClick, L,836, 641
            Sleep, 1500
            MouseClick, L,1006, 159
            return
        }           
        case 102:{
            MouseClick, L,743, 518
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down}  
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            MouseClick, L, 839, 758
            Sleep, 1500
            MouseClick, L,1006, 159
            
            return
        }
        case 103:{
            ;td tdd td tdd tdn
            MouseClick, L, 883, 370
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            MouseClick, L, 825, 541
            Sleep, 1500
            MouseClick, L, 1006, 159
            return
        }
        case 104:{
            ;tdd td tdd tddd td td tddn
            MouseClick, L, 740, 321
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            MouseClick, L, 842, 549
            Sleep, 1500
            MouseClick, L, 1006, 159
            return
        }
        case 105:{
            ;td tdd tddn
            MouseClick, L, 768, 496
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            MouseClick, L, 821, 668
            Sleep, 1500
            MouseClick, L, 1006, 159

            return
        }
        case 106:{
            ;td tdd tdd td tdd td td tdd td tddn
            MouseClick, L, 767, 406
            Send, {Down} 
            Send, {Tab}
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Tab}
            Send, {Down} 
            Send, {Down} 
            MouseClick, L, 848, 879
            Sleep, 1500
            MouseClick, L, 1006, 159
            return
        }
        case 107:{
            ;tdd td td tdd td tddn
            MouseClick, L, 727, 300
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L, 843, 599
            Sleep, 1500
            MouseClick, L, 1006, 159
            return
        }
        case 108:{
            ;td tdd tddd td tdd td td tddd td tddd tddd tddd tddd tdn
            MouseClick, L,769, 396
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L, 830, 667
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 109:{
            ;td tdd tddn
            MouseClick, L,765, 476
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,822, 627
            Sleep, 1500
            MouseClick, L,1006, 159
            return
        }
        case 110:{
            ;td td tdd tdd td td td tdd tddn
            MouseClick, L,920, 484
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L, 848, 859
            Sleep, 1500
            MouseClick, L, 941, 161
            return
        }
        case 201:{
            ;td td tdd td td tdn
            MouseClick, L,818, 511
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,843, 635
            Sleep, 1500
            MouseClick, L,1006, 159
            return
        }
        case 202:{
            ;tdd td td tdd tdd td tdd td tdn
            MouseClick, L,897, 487
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,830, 645
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 203:{
            ;tdd tddd tddd tddd td tdd tdd tddn
            MouseClick, L,987, 520
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,847, 700
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 204:{
            ;tdd td tdddd tddd td tdd td tdddd tdd tddd td tddddn
            MouseClick, L, 1047, 493
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            MouseClick, L,850, 801
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 205:{
            ;tdd tdd td tdd td tdd td td td td tdd tddn
            MouseClick, L,862, 489
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,852, 1012
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 206:{
            ;td tdd tdd tdd td td td tdd td td td td td td td td tdd tdd tddn
            MouseClick, L,736, 547
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L, 828, 1021
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 207:{
            ;td td tdd td td tdd td tdd tdn
            MouseClick, L,946, 464
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,811, 795
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 208:{
            ;td tddd td td tddd tddd td td td td tddd tdddd tdn
            MouseClick, L,764, 389
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,823, 762
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 209:{
            ;td td tddd tdd
            MouseClickDrag, L, 730, 312, 745, 343
            MouseClickDrag, L, 750, 309, 785, 346
            MouseClickDrag, L, 944, 308, 866, 352
            MouseClickDrag, L, 847, 441, 751, 479
            MouseClickDrag, L, 895, 439, 835, 478
            MouseClickDrag, L, 1010, 437, 925, 480
            MouseClick, L, 766, 563
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,840, 650
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 210:{
            ;tddd tdd tdd tdd tdd tdd tdd td tdd td tdd td tdd tdd td tdn
            MouseClick, L,866, 628
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,843, 1026
            Sleep, 1500
            MouseClick, L,916, 154

            return
        }
        case 301:{
            ;td tdd td tddn
            MouseClick, L,1003, 333
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,838, 509
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 302:{
            ;td tdd td tdd td tddn
            MouseClick, L,738, 433
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,834, 525
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 303:{
            ;td tddd tdd tddd tdd td td tddn
            MouseClick, L,767, 298
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,825, 610
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 304:{
            ;td td td tdd tdd tdd tdd td tdd tddn
            MouseClick, L,739, 405
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,843, 690
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 305:{
            ;tdd tdd tdd td tdd tdd td tdd tdd td tdd td td td tdd tdd tdd td tdn
            MouseClick, L,769, 484
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {WheelDown}
            MouseClick, L,834, 1017
            Send, {WheelUp}
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 306:{
            ;tdd tdd td tdd td tdd tdd td tdd tdd tdd td tddn
            MouseClick, L,939, 298
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,832, 705
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 307:{
            ;td tdddd tddd tdd tdd tdn
            MouseClick, L,776, 547
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,852, 869
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 308:{
            ;tddddd tdd td td tdn
            MouseClick, L,744, 487
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,830, 728
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 309:{
            ;tddd td tdd td tddn
            MouseClick, L,735, 474
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,851, 674
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 310:{
            ;td td tddd td td tdd tddd td tddd td td tdd tddd td tddn
            MouseClick, L,975, 561
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,840, 1018
            Sleep, 1500
            MouseClick, L,900, 159

            return
        }
        case 401:{
            ;tdtddtdn
            MouseClick, L,950, 280
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,836, 363
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 402:{
            ;tdd td tdd tdd td tdn
            MouseClick, L,733, 295
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,824, 402
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 403:{
            ;tdd td tddd tddd td tdn
            MouseClick, L,761, 575
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,855, 678
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 404:{
            ;td tddd tdddd td tdddd td tddd tddn
            MouseClick, L,781, 428
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,854, 662
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 405:{
            ;tdd tdd tdd td td tddn
            MouseClick, L,1012, 459
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,844, 679
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 406:{
            ;tdd td tdd tddd td tdd td tddd tddd tddd td tdn
            MouseClick, L,772, 309
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,832, 664
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 407:{
            ;td td td td tdd tdd td td td tdd tddn
            MouseClick, L,838, 530
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,860, 835
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 408:{
            ;td tdd tdd tdddd td tdd td tdd td tdd td tddn
            MouseClick, L,720, 618
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {WheelDown}
            MouseClick, L,828, 1018
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 409:{
            ;tdd tddd td td tdddn            
            MouseClick, L,988, 646
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            MouseClick, L,851, 791
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 410:{
            ;tdd td tddd tdd tdd tddn
            MouseClick, L,966, 409
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick,L ,861, 753
            Sleep, 1500
            MouseClick, L,900, 159
            return
        }
        case 501:{
            ;tddd tdd td td tddn
            MouseClick, L,868, 510
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L, 833, 613
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 502:{
            ;td tddd tdddn
            MouseClick, L,763, 465
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            MouseClick, L,828, 558
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 503:{
            ;tdd tdd tdd td tdd tddn
            MouseClick, L,789, 489
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,838, 753
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 504:{
            ;tdd tdd td tdd tdd tddn
            MouseClick, L,975, 392
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,833, 696
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 505:{
            ;tdd td tdd tddd td tdd tdddn
            MouseClick, L,946, 448
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            MouseClick, L,846, 646
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 506:{
            ;td td tdd tdd tdd tdd tdd tddd tddn
            MouseClick, L,995, 453
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,847, 746
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 507:{
            ;td tdd tdd tddd td tdd tddd td td tddd tddd td tddd tdd tddn
            MouseClick, L,895, 527
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            MouseClick, L,838, 966
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 508:{
            ;tdd tdd tdd td tdd tdd tdd tdn
            MouseClick, L,1061, 471
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,837, 755
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 509:{
            ;td td tdd tddd tddd tdd tdddn
            MouseClick, L,766, 505
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            MouseClick, L,826, 739
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }
        case 510:{
            ;td td tdd tdd td td td tdd tddd td tdd tdd tddd td tddt dn
            MouseClick, L,783, 634
            Send, {Down}
            Send, {Tab}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            Send, {Down}
            Send, {Tab}
            Send, {Down}
            MouseClick, L,841, 1026
            Sleep, 1500
            MouseClick, L,1006, 159

            return
        }        
    }
        
}