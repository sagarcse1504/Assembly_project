.stack 100h
.model small
.data 

m dw "$"
m0 dw "WELCOME TO OUR ONLINE SHOP$" 
mm dw "WHICH TYPE YOU WANT?PLEASE SELECT:$"
m1 dw "WHICH PRODUCT DO YOU WANT? PLEASE SELECT:$"
m3 dw "1.BUY PRODUCT   2.RENT PRODUCT $"
m4 dw "1.SAREE RENT per/day 1(dollar)   2.SHEROWANI RENT per/day 3(dollar) $"
m5 dw "1.SHIRT PRICE 3(dollar)   2.PANT PRICE 3(dollar) $"
m6 dw "QUANTITY(1-3):$"
m7 dw "TOTAL PRICE:$"
m8 dw "############   THANK YOU   #########$" 
m9 dw " PRESS M TO BUY MORE $"
m10 dw " PRESS E TO EXIT$"
m11 dw "YOU HAVE PRESSED INVALID KEYWORD$" 
m12 dw "PRESS 1 TO MAIN MENU AND PRESS E TO EXIT$"
m14 dw "YOU CAN BUY MAXIMUM 3 ITEMS$" 

 shirtprice dw 3
 pantprice dw 4
 shirtrentprice dw 1
 pantrentprice dw 5
 
 nprice dw 0  





.code
 main proc
    mov ax,@data
    mov ds,ax
    
     
    lea dx,m
    mov ah,9
    int 21h 
     
    ;FOR LOOP FOR STAR
    mov cx,30
    
    stop:
    mov ah,2
    mov dl,'*'
    int 21h
    loop stop
     
    ;NEWLINE
    call newline
    call newline
    
     
    lea dx,m0
    mov ah,9
    int 21h
    
   
    call newline
    call newline
    
    lea dx,m
    mov ah,9
    int 21h
    
    ;FOR LOOP FOR STAR            
    mov cx,30
    
    stop1:
    mov ah,2
    mov dl,'*'
    int 21h
    loop stop1
    
   
    call newline
   
    call newline
    
    
     
    ;newline
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
     
     
    mov ah,9
    lea dx,mm
    int 21h
      
      
    call newline
    call newline
      
    menu:
      
    call newline
     
    mov ah,9
    lea dx,m3
    int 21h
       
    call newline
    call newline
     
    ;scan
     
    mov ah,1
    int 21h
    mov bl,al
     
     
    cmp bl,'1'
    je buy
    cmp bl,'2'
    je rent
     
    jg invalid
     
     
    invalid:
    
    call newline
    
    lea dx,m11
    mov ah,9
    int 21h
      
    call newline 
    call newline
     
    lea dx,m12
    mov ah,9
    int 21h
     
    mov ah,1
    int 21h
    mov bl,al
     
    cmp bl,'1'
    je menu
    cmp bl,'E'
    je exit
     
     
    exit:
     
    jmp end_if 
      
      
    buy: 
      call newline
      call newline
     
     mov ah,9
     Lea dx,m5
     int 21h 
            
     call newline
     call newline  
     
     mov ah,9
     lea dx,m1
     int 21h 
     
     call newline
     call newline
            
     mov ah,1
     int 21h
     mov bl,al
            
     cmp bl,'1'
     je shirt
     cmp bl,'2'
     je pant
     jg invalid
     
     
     
     jmp end_if  
     
     
     rent: 
     
     call newline
     call newline
     
     mov ah,9
     lea dx,m4
     int 21h
       
     ;newline
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     
     call newline
     
     
     mov ah,9
     lea dx,m1
     int 21h
     
     call newline
     call newline
             
     mov ah,1
     int 21h
     mov bl,al
            
     cmp bl,'1'
     je shirtrent
     cmp bl,'2'
     je pantrent
     jg invalid
     
     jmp end_if
     
     shirt:
     
      call newline 
      call newline
     
      mov ah,9
      Lea dx,m6
      int 21h
      
      mov ah,1
      int 21h
      mov bl,al
       
            
       
      
            
      cmp bl,'1'
      je sp1
      cmp bl,'2'
      je sp2
      cmp bl,'3'
      je sp3
      jg ms 
      jmp end_if
      
     
      ms:
      
      
      call newline
      call newline
      lea dx,m14
      mov ah,9
      int 21h 
      jmp shirt
      jmp end_if    
        
    
    pant:
    
    
     call newline
     call newline
     
     mov ah,9
     lea dx,m6
     int 21h 
      
     mov ah,1
     int 21h
     mov bl,al
       
            
     cmp bl,'1'
     je pp1
     cmp bl,'2'
     je pp2
     cmp bl,'3'
     je pp3
     jg ms1 
      
     jmp end_if
         
       
     ms1:
      
      
     call newline
     call newline
     lea dx,m14
     mov ah,9
     int 21h 
     jmp pant
     jmp end_if    
       
     
     shirtrent:
     
     
     call newline
     call newline            
                 
     mov ah,9
     lea dx,m6
     int 21h 
      
     mov ah,1
     int 21h
     mov bl,al
       
            
      cmp bl,'1'
      je sr1
      cmp bl,'2'
      je sr2
      cmp bl,'3'
      je sr3
      jg ms2
    
      jmp end_if 
      
      
       ms2:
      
      
      call newline
      call newline
      lea dx,m14
      mov ah,9
      int 21h 
      jmp shirtrent
      jmp end_if    
       

     pantrent:
     
     
      call newline
      call newline
      mov ah,9
      lea dx,m6
      int 21h 
      
      mov ah,1
      int 21h
      mov bl,al
       
            
      cmp bl,'1'
      je pr1
      cmp bl,'2'
      je pr2
      cmp bl,'3'
      je pr3 
      jg ms3
      
      jmp end_if 
       
       
      ms3:
      
      
      call newline
      call newline
      lea dx,m14
      mov ah,9
      int 21h 
      jmp pantrent
      jmp end_if    
            
             
     sp1:
     
     call newline
     call newline
     
     mov ah,9
     lea dx,m7
     int 21h
     
     mov bl,1
     mov al,3
     
     
     mul bl        
     add al,48
     
       
     mov ah,2
     mov dl,al
     int 21h
      
     call newline
     call newline
     
     mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
      
    
     jmp end_if 
    
    
    sp2:
     call newline
     call newline
     mov ah,9
     lea dx,m7
     int 21h    
         
     mov bl,2
     mov al,3
     
     
      mul bl
      add al,48
      
     
      
      
     
      mov ah,2
      mov dl,al
      int 21h
       
      call newline
      call newline 
      
     mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
      
      
     jmp end_if 
     
     sp3:
     
     call newline
     call newline
     
     mov ah,9
     lea dx,m7
     int 21h    
         
     mov bl,3
     mov al,3
     
     
     mul bl
     add al,48
      
     
      
      
     
     mov ah,2
     mov dl,al
     int 21h
       
     call newline
     call newline 
     
     mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
      
      
     jmp end_if 
      
      
     pp1:
     
     call newline 
     call newline
     mov ah,9     
     
     lea dx,m7
     int 21h
     mov bl,1
     mov al,3
     mul bl
     add al,48
       
      
      mov ah,2
      mov dl,al
      int 21h 
       
      call newline
      call newline
       mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
      
      
     
     jmp end_if 
                
                
     pp2:
     mov bl,2
     mov al,3
     mul bl
     add al,48
     call newline
     call newline
      
      
      mov ah,2
      mov dl,al
      int 21h
       
     call newline
     call newline
     mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
     jmp end_if
     
     pp3:
     
     call newline
     mov ah,9
     lea dx,m7
     int 21h
     
     mov bl,3
     mov al,3
     mul bl
     add al,48
       
      
      
     mov ah,2
     mov dl,al
     int 21h 
       
     call newline
     call newline
     
     mov ah,9
     lea dx,m8
     int 21h
     mov ah,4ch
     int 21h
      
       
     jmp end_if 
       
      sr1:
      mov al,1
      mov bl,1
      mul bl
      add al,48
      call newline
      call newline
      
      
      mov ah,2
      mov dl,al
      int 21h
       
      call newline
      call newline
      
      mov ah,9
      lea dx,m8
      int 21h
      mov ah,4ch
      int 21h
      
      jmp end_if
      
      sr2:
      
     call newline
     call newline
     
     mov ah,9
     lea dx,m7
     int 21h
     
     
      mov al,1
      mov bl,2
      mul bl
      add al,48

      
      mov ah,2
      mov dl,al
      int 21h
       
      call newline
      call newline 
      
      mov ah,9
      lea dx,m8
      int 21h
      mov ah,4ch
      int 21h
      
      
      jmp end_if
      
      sr3:
      
     call newline
     call newline    
     
     mov ah,9
     lea dx,m7
     int 21h
     
      mov al,1
      mov bl,3
      mul bl
      add al,48
      
      
      
      mov ah,2
      mov dl,al
      int 21h 
       
      call newline
      call newline
      
      mov ah,9
      lea dx,m8
      int 21h
      mov ah,4ch
      int 21h 
     
      jmp end_if
      
      
      pr1:
      
     call newline
     call newline  
     
     mov ah,9
     lea dx,m7
     int 21h
     
      mov al,3
      mov bl,1
      mul bl
      add al,48
      
      
      
      mov ah,2
      mov dl,al
      int 21h
      mov ah,4ch
      int 21h   
      
      call newline
      call newline
      
      mov ah,9
      lea dx,m8
      int 21h
      jmp end_if
      
      pr2:
      
      call newline
      call newline
      
      mov ah,9
      lea dx,m7
      int 21h
     
      mov al,3
      mov bl,2
      mul bl
      add al,48

      
      mov ah,2
      mov dl,al
      int 21h 
       
      call newline
      call newline  
      
      mov ah,9
      lea dx,m8
      int 21h
      mov ah,4ch
      int 21h 
     
      jmp end_if
      
      pr3:
      
       call newline
       call newline  
       
      mov ah,9
      lea dx,m7
      int 21h
     
      mov al,3
      mov bl,3
      mul bl
      add al,48
        

      mov ah,2
      mov dl,al
      int 21h 
      
       
      call newline
      call newline 
      
       mov ah,9
      lea dx,m8
      int 21h
      mov ah,4ch
      int 21h

      jmp end_if
      
      
   main endp 
   
   
   
   newline proc
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    
    ret 
    
    
    newline endp  
   
      
      end_if:
   
    end main 