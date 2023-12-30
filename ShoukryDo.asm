.MODEL SMALL
.STACK 64

.DATA
                                                                                                                                                                                       
                                                                                                                                                                                       
    general_all_fill db                                                                       '*******************************************************************************', '$'
    general_empty_fill db                                                                     '*                                                                             *', '$'
        
    start_message_logo db                                                                     '*                             WELCOME TO SHOUKRYDO                            *', '$'
    start_message_current_plan_basic db                                                       '* CURRENT PLAN: << BASIC >>                                                   *', '$'
    start_message_current_plan_premium db                                                     '* CURRENT PLAN: << PREMIUM >>                                                 *', '$'
    
    start_message_option_focus db                                                             '*  1> Enter Focus Mode                                                        *', '$'
    start_message_option_todo db                                                              '*  2> Enter Todo List                                                         *', '$'
    start_message_option_task db                                                              '*  3> Enter Task Mode                                                         *', '$'
    start_message_option_plans db                                                             '*  4> List different plans                                                    *', '$'
    start_message_option_upgrade db                                                           '*  5> Upgrade to premium                                                      *', '$' 
    start_message_option_basic_about_me db                                                    '*  6> About Me                                                                *', '$'
    start_message_option_premium_about_me db                                                  '*  5> About Me                                                                *', '$'    
    start_message_option_query_basic db                                                       '> Press <1>, <2>, <3>, <4>, <5>, <6> or <0> to quit: ', '$'
    start_message_option_query_premium db                                                     '> Press <1>, <2>, <3>, <4>, <5> or <0> to quit: ', '$'
    
    plans_all_fill db                                                                         '********************************* | *******************************************', '$'    
    plans_empty_fill db                                                                       '*                                 |                                           *', '$'
    plans_message_types db                                                                    '*            BASIC                |                   PREMIUM                 *', '$'
    plans_feature_one db                                                                      '*  1) limitied focus time <25:00> |  1) extended focus time <25:00>, <60:00>  *', '$'
    plans_feature_two db                                                                      '*  2) max 5 todos                 |  2) max 9 todos                           *', '$'
    plans_feature_three db                                                                    '*  3) FREE                        |  3) One dollar per year                   *', '$'
    plans_separator db                                                                        '*****************************************************************************', '$'
    plans_query db                                                                            '> Press <0> to return: ', '$'
    
    upgrade_message_successful db                                                             '*                   Upgraded to premium plan successfully!                    *', '$'
    upgrade_message_query db                                                                  '> Press <0> to return: ', '$'

    todos_message_header db                                                                   '* Todos                                                                       *', '$'    
    todos_message_query db                                                                    '> Press <+> add, <-> remove, <c> to check, <u> to uncheck, or <0> to return: ', '$'
    todos_add_task_basic db                                                                   'NUM> Enter task number you want to add <1-5> or <0> to return: ', '$'
    todos_add_task_premium db                                                                 'NUM> Enter task number you want to add <1-9> or <0> to return: ', '$' 
    todos_add_name db                                                                         'NAME> Enter task name [Must be 10 characters]: ', '$'
    todos_remove_task_basic db                                                                'NUM> Enter task number you want to remove <1-5> or <0> to return: ', '$'
    todos_remove_task_premium db                                                              'NUM> Enter task number you want to remove <1-9> or <0> to return: ', '$'
    todos_mark_task_basic db                                                                  'NUM> Enter task number you want to mark as done <1-5> or <0> to return: ', '$'
    todos_mark_task_premium db                                                                'NUM> Enter task number you want to mark as done <1-9> or <0> to return: ', '$'
    todos_unmark_task_basic db                                                                'NUM> Enter task number you want to uncheck <1-5> or <0> to return: ', '$'
    todos_unmark_task_premium db                                                              'NUM> Enter task number you want to uncheck <1-9> or <0> to return: ', '$'     
    todos_exist db                                                                            'ERROR> This task already exists', '$'
    todos_added db                                                                            'SUCESS> Task has been added successfully', '$'
    todos_removed db                                                                          'SUCCESS> Task has been removed successfully', '$'
    todos_no_remove db                                                                        'ERROR> There is no task to remove in this slot', '$'    
    todos_marked db                                                                           'SUCCESS> Task has been marked as done successfully', '$'
    todos_no_mark db                                                                          'ERROR> There is no task to check in this slot', '$'
    todos_mark_exist db                                                                       'ERROR> This Task is already done', '$'    
    todos_unmarked db                                                                         'SUCCESS> Task has been unchecked successfully', '$'
    todos_no_unmark db                                                                        'ERROR> There is no task to uncheck in this slot', '$'
    todos_unmark_exist db                                                                     'ERROR> This Task is already unchecked', '$'  
    todos_done db                                                                             'Done       ', '$'
    todos_empty db                                                                            '---                                                                 *', '$'
    todos_init db                                                                             'Initiated  ', '$'
    todos_empty_buffer db                                                                     '                                             *', '$'    
    todos_text db                                                                             '*  Task', '$'
    todos_finalizer db                                                                        ': ', '$'    
    tasks_status db 9 dup(30h)  
    extra_query db                                                                            '> Press <1> if you have finished the task or <2> if you need an extra time: ', '$'
    task_message_header db                                                                    '* Task Mode                                                                   *', '$'   
    task_selection_basic_message_query db                                                     '> Enter task number you want to start <1-5> or <0> to return: ', '$'  
    task_selection_premium_message_query db                                                   '> Enter task number you want to start <1-9> or <0> to return: ', '$' 
    task_empty db                                                                             'ERROR> There is no task to start at this slot!', '$'
    task_done db                                                                              'ERROR> This task has been done already!', '$'          
    time_query db                                                                             '> Select amount of time you need <1> 25:00, <2> 60:00 or <0> to return: ', '$'
    ;time_query2 db                                                                            't> Select amount of time you need <1> 25:00, <2> 60:00 or <0> to return: ', '$'
    task_completed db                                                                         'Task Completed Successfully', '$'
    ___s db 30h
    __s_ db 30h
    _m__ db 30h
    m___ db 30h   
    
    focus_header db                                                                           '* Focus Mode                                                                  *', '$'   
    
    
    about_me_description db                                                                   '*  Made with love by Amr Shoukry - 2023/12/30                                 *', '$'
    about_me_separator db                                                                     '*  ---------------------------------------------------                        *', '$' 
    about_me_linked db                                                                        '*  Linked In: [https://www.linkedin.com/in/amrshoukry/]                       *', '$'
    about_me_github db                                                                        '*  GitHub:    [https://github.com/AmrShoukry]                                 *', '$'  
    about_me_query db                                                                         '> Press <0> to return: ', '$'                                                                             
    
    time db                                                                                   'TIME> ', '$'                                                                               
    
    user_mode db 0
    time_mode db 0
    current_task dw 0


    tasks_buffer db 90 dup(20h), '$'

.CODE

main PROC FAR
    .STARTUP
    
    CALL start_screen                                 
    
    .EXIT
main ENDP



    ;general_empty_fill db                                                                     '*                                                                              *', '$'                                                                                                                                                                                   
    ;start_message_welcome db                                                                  '********************************************************************************', '$'
    ;start_message_current_plan_basic db                                                       '   ^^^^^ Plan: Basic ^^^^^', '$'
    ;start_message_current_plan_premium db                                                     '   ^^^^^ Plan: Premium ^^^^^', '$'
    ;start_message_separator db                                                                '******************************************', '$'     
    ;start_message_option_focus db                                                             '*  1- Enter Focus Mode                  *', '$'
    ;start_message_option_todo db                                                              '*  2- Enter Todo List                   *', '$'
    ;start_message_option_task db                                                              '*  3- Enter Task Mode                   *', '$'
    ;start_message_option_plans db                                                             '*  4- List different plans              *', '$'
    ;start_message_option_upgrade db                                                           '*  5- Upgrade to premium                *', '$' 
    ;start_message_option_basic_about_me db                                                    '*  6- About Me                          *', '$'
    ;start_message_option_premium_about_me db                                                  '*  5- About Me                          *', '$'    
    ;start_message_option_query_basic db                                                       '> Press <1>, <2>, <3>, <4>, <5> or <6>: ', '$'
    ;start_message_option_query_premium db                                                     '> Press <1>, <2>, <3> or <4> or <5>: ', '$'
    
    
                                                                                               ;******************************************************************************** 
                                                                                               ;*                                                                              *
                                                                                               ;*                             WELCOME TO SHOUKRYDO                             *
start_screen PROC                                                                              ;*                                                                              *
    CALL clear_screen 
                                                                            ;********************************************************************************                                                                                           ;*                                                                              *
                                                                                               ;* CURRENT PLAN: <<BASIC>>                                                      *
                                                                                               ;*                                                                              *
    MOV time_mode, 0                                                                           ;********************************************************************************
                                                                                               ;*                                                                              *
                                                                                               ;*  1) Enter Focus Mode                                                         *
                                                                                               ;*
    LEA DX, general_all_fill                                                                   ;*  2) Enter Todo List                                                          * 
                                                                                               ;*
    CALL display_message_nl                                                                    ;*  3> Enter Task Mode
                                                                                               ;*
                                                                                               ;*  4> List different plans
                                                                                               ;*
                                                                                               ;*  5> Upgrade to premium
                                                                                               ;* 
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, start_message_logo
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    
    CMP user_mode, 0
    JNE PREMIUM_CURRENT_PLAN
    
        LEA DX, start_message_current_plan_basic
        CALL display_message_nl
        JMP BASIC_CURRENT_PLAN
    
    PREMIUM_CURRENT_PLAN:
    
    LEA DX, start_message_current_plan_premium
    CALL display_message_nl
    
    BASIC_CURRENT_PLAN: 
    
 
    
    LEA DX, general_all_fill
    CALL display_message_nl 
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    

    LEA DX, start_message_option_focus
    CALL display_message_nl  
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, start_message_option_todo
    CALL display_message_nl
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, start_message_option_task
    CALL display_message_nl
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, start_message_option_plans
    CALL display_message_nl
    LEA DX, general_empty_fill
    CALL display_message_nl  
    
    CMP user_mode, 0
    JNE PREMIUM_AVOID
    
        LEA DX, start_message_option_upgrade
        CALL display_message_nl
        LEA DX, general_empty_fill
        CALL display_message_nl
        
        LEA DX, start_message_option_basic_about_me
        CALL display_message_nl
        LEA DX, general_empty_fill
        CALL display_message_nl
        
        JMP BASIC_AGAIN
    
    PREMIUM_AVOID:      
    
    LEA DX, start_message_option_premium_about_me
    CALL display_message_nl
    LEA DX, general_empty_fill
    CALL display_message_nl 
    
    BASIC_AGAIN:
                              
    LEA DX, general_all_fill
    CALL display_message_nl     
    
    CALL display_newline
    
    CALL query_start
    
    RET    
start_screen ENDP

plans_screen PROC 
    CALL clear_screen
    
    LEA DX, general_all_fill
    CALL display_message_nl
      
    LEA DX, plans_empty_fill
    CALL display_message_nl
    

    
    LEA DX, plans_message_types
    CALL display_message_nl   

    LEA DX, plans_empty_fill
    CALL display_message_nl
    
    LEA DX, plans_all_fill
    CALL display_message_nl    
    
    LEA DX, plans_empty_fill
    CALL display_message_nl
    
    LEA DX, plans_feature_one
    CALL display_message_nl
    LEA DX, plans_empty_fill
    CALL display_message_nl
    
    LEA DX, plans_feature_two
    CALL display_message_nl
    LEA DX, plans_empty_fill
    CALL display_message_nl

    LEA DX, plans_feature_three
    CALL display_message_nl  
    LEA DX, plans_empty_fill
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl  
    
    CALL display_newline
    
    CALL query_plans
    
    RET    
plans_screen ENDP 

upgrade_screen PROC
    CALL clear_screen
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, upgrade_message_successful
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    CALL display_newline
    
    CALL query_upgrade
    
    RET
upgrade_screen ENDP


todos_screen PROC  
    
    CALL clear_screen
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    LEA DX, todos_message_header
    CALL display_message_nl

    LEA DX, general_all_fill
    CALL display_message_nl    
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    CALL tasks_section
                           
    LEA DX, general_empty_fill
    CALL display_message_nl
   
    LEA DX, general_all_fill
    CALL display_message_nl
    
    CALL display_newline
         
    CALL query_todos
        
    RET
todos_screen ENDP

task_screen PROC
        
    CALL clear_screen
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    LEA DX, task_message_header
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl

    LEA DX, general_empty_fill
    CALL display_message_nl
    
    CALL tasks_section
    
    
    LEA DX, general_empty_fill
    CALL display_message_nl  
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    CALL display_newline
    
    CALL query_task
    
    RET
task_screen ENDP 

focus_screen PROC
    
    CALL clear_screen
                     
    LEA DX, general_all_fill
    CALL display_message_nl
                     
    LEA DX, focus_header
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    CMP user_mode, 0
    JE TWENTY_FOCUS
    
    JMP FOCUS_END
    
    TWENTY_FOCUS:
    CALL process_short_timer
    
    FOCUS_END:
    
    CALL display_newline
    CALL query_focus
    
    RET
focus_screen ENDP
             
                                  
about_me_screen PROC     
    CALL clear_screen
    
    LEA DX, general_all_fill
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, about_me_description
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, about_me_separator
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, about_me_linked
    CALL display_message_nl
    
    LEA DX, about_me_github
    CALL display_message_nl
    
    LEA DX, general_empty_fill
    CALL display_message_nl
    
    LEA DX, general_all_fill
    CALL display_message_nl
    

    CALL query_about_me
    
    RET
about_me_screen ENDP

query_start PROC 
    CMP user_mode, 0
    JNE PREMIUM_QUERY
    
    LEA DX, start_message_option_query_basic
    CALL display_message
    JMP BASIC_QUERY
    
    PREMIUM_QUERY:
    
    LEA DX, start_message_option_query_premium
    CALL display_message
    
    BASIC_QUERY: 
    
    CALL get_char  
    CALL process_query_start_screen
    
    RET
query_start ENDP

query_plans PROC    
    LEA DX, plans_query
    CALL display_message
    
    CALL get_char
    CALL process_query_plans_screen
    
    RET    
query_plans ENDP

query_upgrade PROC
    LEA DX, upgrade_message_query
    CALL display_message
    
    CALL get_char
    CALL process_query_upgrade_screen
    
    RET
query_upgrade ENDP

query_todos PROC
    LEA DX, todos_message_query
    CALL display_message
    
    CALL get_char 
    CALL process_query_todos_screen
    
    RET
query_todos ENDP

query_addition PROC

    CMP user_mode, 0
    JNE PREMIUM_ADDITION
    
    BASIC_ADDITION:
    LEA DX, todos_add_task_basic
    CALL display_message     
    JMP ADDITION_DONE
    
    PREMIUM_ADDITION:
    LEA DX, todos_add_task_premium
    CALL display_message
    
    ADDITION_DONE:
    
    CALL get_char
    CALL process_task_number
    CALL process_query_addition 
    
    RET
query_addition ENDP

query_delition PROC

    CMP user_mode, 0
    JNE PREMIUM_DELITION
    
    BASIC_DELITION:
    LEA DX, todos_remove_task_basic
    CALL display_message     
    JMP DELITION_DONE
    
    PREMIUM_DELITION:
    LEA DX, todos_remove_task_premium
    CALL display_message
    
    DELITION_DONE:
    
    CALL get_char
    CALL process_task_number
    CALL process_query_delition 
    
    RET
query_delition ENDP

query_mark PROC

    CMP user_mode, 0
    JNE PREMIUM_MARK
    
    BASIC_MARK:
    LEA DX, todos_mark_task_basic
    CALL display_message     
    JMP MARK_DONE
    
    PREMIUM_MARK:
    LEA DX, todos_mark_task_premium
    CALL display_message
    
    MARK_DONE:
    
    CALL get_char
    CALL process_task_number
    CALL process_query_mark 
    
    RET
query_mark ENDP

query_unmark PROC

    CMP user_mode, 0
    JNE PREMIUM_UNMARK
    
    BASIC_UNMARK:
    LEA DX, todos_unmark_task_basic
    CALL display_message     
    JMP UNMARK_DONE
    
    PREMIUM_UNMARK:
    LEA DX, todos_unmark_task_premium
    CALL display_message
    
    UNMARK_DONE:
    
    CALL get_char
    CALL process_task_number
    CALL process_query_unmark 
    
    RET
query_unmark ENDP

query_task PROC
    CMP user_mode, 0
    JNE PREMIUM_SELECTION
    
    BASIC_SELECTION:
    LEA DX, task_selection_basic_message_query
    CALL display_message     
    JMP SELECTION_DONE
    
    PREMIUM_SELECTION:
    LEA DX, task_selection_premium_message_query
    CALL display_message
    
    SELECTION_DONE:
    
    CALL get_char
    CALL process_task_number
    CALL process_task_selection
    
    RET
query_task ENDP

query_extra_time PROC
    CALL display_newline
    
    LEA DX, extra_query 
    CALL display_message
    
    CALL get_char
    CALL process_query_extra_time
    
    RET
query_extra_time ENDP

process_query_extra_time PROC
    CMP AL, 31H
    JE EXIT_EXTRA
    
    CMP AL, 32H
    JE GET_EXTRA
    
    CALL query_extra_time
    JMP END_EXTRA
    
    EXIT_EXTRA:
    MOV SI, current_task                       ;;;;;;;;;;;;;;;;;;
    MOV [tasks_status + SI], 32H
    
    LEA DX, task_completed
    CALL display_message
    
    CALL task_screen
    JMP END_EXTRA
    
    GET_EXTRA:
    CALL display_newline
    
    CMP user_mode, 0
    JE SHORT_EXTRA 
    
    CALL query_time
    JMP END_EXTRA
        
    SHORT_EXTRA:    
    CALL process_short_timer    
    
    END_EXTRA:
    
    RET
process_query_extra_time ENDP

query_time PROC
    
    LEA DX, time_query
    CALL display_message
    
    CALL get_char
    CALL process_query_time
    
    RET
query_time ENDP

query_focus PROC       
    LEA DX, time_query
    CALL display_message
    
    CALL get_char         
    CALL process_query_time
    
    RET
query_focus ENDP

query_about_me PROC
    
    CALL display_newline
    
    LEA DX, about_me_query
    CALL display_message
    
    CALL get_char  
    
    CALL process_query_about_me
    
    RET
query_about_me ENDP

get_char PROC 
    MOV AH, 01H
    INT 21H
    
    RET    
get_char ENDP

get_string PROC
    
    MOV CX, [current_task]
    MOV SI, 0
    
    CMP CX, 0
    JE VALUE_SET
    
    SET_VALUE:
    
    ADD SI, 10 
    
    LOOP SET_VALUE
    
    VALUE_SET:
    
    MOV CX, 10
    MOV BX, 0
    
    GET_STRING_LOOP:    
    
    CALL get_char
                                
    MOV [tasks_buffer + SI + BX], AL
    
    INC BX
    
    LOOP GET_STRING_LOOP
    
    RET
get_string ENDP

process_query_start_screen PROC 
    CMP AL, 30H
    JE QUIT
    
    CMP AL, 34H
    JE PLANS
    
    CMP AL, 32H
    JE TODOS
    
    CMP AL, 33H
    JE TASK
    
    CMP AL, 31H
    JE POMODORO
    
    CMP user_mode, 0
    JNE PREMIUM_USER

    CMP AL, 35H
    JE UPGRADE
    
    CMP AL, 36H
    JE ABOUTME
    
    PREMIUM_USER:
    
    CMP AL, 35H
    JE ABOUTME
    
    CALL display_newline
    CALL query_start
    
    QUIT:
    .EXIT
    
    PLANS:
    CALL plans_screen
    JMP DONE
    
    UPGRADE:
    CALL upgrade_screen
    JMP DONE
    
    ABOUTME:
    CALL about_me_screen
    JMP DONE
    
    TODOS:
    CALL todos_screen
    JMP DONE
    
    TASK:
    CALL task_screen
    JMP DONE
    
    POMODORO:
    CALL focus_screen
    
    DONE:
    
    RET
process_query_start_screen ENDP

process_query_plans_screen PROC
    CMP AL, 30H
    JNE PLANS_WRONG
       
    CALL start_screen
    JMP PLANS_END
    
    PLANS_WRONG:
    CALL display_newline
    CALL query_plans
    
    PLANS_END:    
    
    RET
process_query_plans_screen ENDP     

process_query_upgrade_screen PROC
    CMP AL, 30H
    JNE UPGRADE_WRONG
    
    MOV user_mode, 1
    CALL start_screen
    JMP UPGRADE_END
    
    UPGRADE_WRONG:
    CALL display_newline
    CALL query_upgrade
    
    UPGRADE_END:
    
    RET    
process_query_upgrade_screen ENDP

process_query_todos_screen PROC
    CMP AL, 30H
    JE TODOS_BACK
    
    CMP AL, 2BH
    JE TODOS_ADD
    
    CMP AL, 2DH
    JE TODOS_REMOVE 
    
    CMP AL, 43H
    JE TODOS_MARK
    
    CMP AL, 63H
    JE TODOS_MARK

    
    CMP AL, 55H
    JE TODOS_UNMARK
    
    CMP AL, 75H
    JE TODOS_UNMARK
        
    CALL display_newline
    CALL query_todos
    JMP TODOS_END
    
    TODOS_BACK:
    CALL start_screen
    JMP TODOS_END
    
    TODOS_ADD:
    CALL display_newline
    CALL query_addition
    JMP TODOS_END
    
    TODOS_REMOVE:
    CALL display_newline
    CALL query_delition
    JMP TODOS_END
    
    TODOS_MARK:
    CALL display_newline
    CALL query_mark
    JMP TODOS_END
    
    TODOS_UNMARK:
    CALL display_newline
    CALL query_unmark
    JMP TODOS_END    
    
    TODOS_END:
    
    RET
process_query_todos_screen ENDP

process_task_number PROC
    CMP AL, 30H
    JE TASK_NUMBER_BACK
    
    CMP AL, 31H
    JE ONE
    
    CMP AL, 32H
    JE TWO
    
    CMP AL, 33H
    JE THREE
    
    CMP AL, 34H
    JE FOUR
    
    CMP AL, 35H
    JE FIVE
    
    CMP user_mode, 0
    JE WRONG
    
    CMP AL, 36H
    JE SIX
    
    CMP AL, 37H
    JE SEVEN
    
    CMP AL, 38H
    JE EIGHT
    
    CMP AL, 39H
    JE NINE
    
    WRONG:
    MOV current_task, 11
    JMP PROCESS_END
    
    TASK_NUMBER_BACK:
    MOV current_task, 10
    JMP PROCESS_END
   
    ONE:
    MOV current_task, 0
    JMP PROCESS_END
    
    TWO:
    MOV current_task, 1
    JMP PROCESS_END
    
    THREE:
    MOV current_task, 2
    JMP PROCESS_END
    
    FOUR:
    MOV current_task, 3
    JMP PROCESS_END
    
    FIVE:
    MOV current_task, 4
    JMP PROCESS_END
    
    SIX:
    MOV current_task, 5
    JMP PROCESS_END
    
    SEVEN:
    MOV current_task, 6
    JMP PROCESS_END
    
    EIGHT:
    MOV current_task, 7
    JMP PROCESS_END
    
    NINE:
    MOV current_task, 8
    JMP PROCESS_END    
    
    PROCESS_END:
    
    RET
process_task_number ENDP

process_query_addition PROC    
    CMP current_task, 11
    JE ADDITION_ERROR
    
    CMP current_task, 10
    JE ADDITION_RETURN
    
    CALL add_new_task
    JMP ADDITION_END
    
    ADDITION_ERROR:  
    CALL display_newline
    CALL query_addition
    JMP ADDITION_END
    
    ADDITION_RETURN:
    CALL display_newline
    CALL query_todos
    
    ADDITION_END:
    
    RET
process_query_addition ENDP

process_query_delition PROC    
    CMP current_task, 11
    JE DELITION_ERROR
    
    CMP current_task, 10
    JE DELITION_RETURN
    
    CALL remove_task
    JMP DELITION_END
    
    DELITION_ERROR:  
    CALL display_newline
    CALL query_delition
    JMP DELITION_END
    
    DELITION_RETURN:
    CALL display_newline
    CALL query_todos
    
    DELITION_END:
    
    RET
process_query_delition ENDP  

process_query_mark PROC    
    CMP current_task, 11
    JE MARK_ERROR
    
    CMP current_task, 10
    JE MARK_RETURN
    
    CALL mark_task
    JMP MARK_END
    
    MARK_ERROR:  
    CALL display_newline
    CALL query_mark
    JMP MARK_END
    
    MARK_RETURN:
    CALL display_newline
    CALL query_todos
    
    MARK_END:
    
    RET
process_query_mark ENDP


process_query_unmark PROC    
    CMP current_task, 11
    JE UNMARK_ERROR
    
    CMP current_task, 10
    JE UNMARK_RETURN
    
    CALL unmark_task
    JMP UNMARK_END
    
    UNMARK_ERROR:  
    CALL display_newline
    CALL query_unmark
    JMP MARK_END
    
    UNMARK_RETURN:
    CALL display_newline
    CALL query_todos
    
    UNMARK_END:
    
    RET
process_query_unmark ENDP

process_query_about_me PROC    
    CMP AL, 30H
    JE BACK_ABOUT_ME
    
    JMP END_ABOUT_ME
    
    BACK_ABOUT_ME:
    CALL start_screen
    JMP ABOUT_ME_END
    
    END_ABOUT_ME:
    CALL query_about_me 
    
    ABOUT_ME_END:
    
    RET
process_query_about_me ENDP
    
process_task_selection PROC
    CMP current_task, 11
    JE SELECTION_ERROR
    
    CMP current_task, 10
    JE SELECTION_RETURN
    
    MOV SI, current_task    
    
    CMP [tasks_status + SI], 30H
    JE EMPTY_SELECTION
    
    CMP [tasks_status + SI], 32H
    JE DONE_SELECTION
    
    MOV time_mode, 1
    CMP user_mode, 0
    JE TWENTY_TASK
    CALL display_newline     
    CALL query_time
    JMP SELECTION_END
    
    SELECTION_ERROR:
    CALL display_newline
    CALL query_task
    JMP SELECTION_END
    
    SELECTION_RETURN:
    CALL display_newline
    CALL start_screen
    JMP SELECTION_END
    
    EMPTY_SELECTION:
    CALL display_newline
    LEA DX, task_empty
    CALL display_message_nl
    CALL query_task
    JMP SELECTION_END
    
    DONE_SELECTION:
    CALL display_newline
    LEA DX, task_done
    CALL display_message_nl
    CALL query_task
    JMP SELECTION_END
    
    TWENTY_TASK: 
    CALL display_newline
    CALL process_short_timer
    
    SELECTION_END: 
    
    RET
process_task_selection ENDP

process_short_timer PROC
    MOV _m__, 35H
    MOV m___, 32H
    MOV __s_, 30H
    MOV ___s, 30H 
    CALL timer
    
    RET
process_short_timer ENDP   
                           

process_long_timer PROC
    MOV _m__, 30H
    MOV m___, 36H
    MOV __s_, 30H
    MOV ___s, 30H 
    CALL timer
    
    RET
process_long_timer ENDP                            
                           
process_query_time PROC    
    CMP AL, 30H
    JE TIME_BACK
    
    CMP AL, 31H
    JE TWENTY
    
    CMP AL, 32H
    JE HOUR

    CALL display_newline
    CALL query_time
    
    TIME_BACK:
    CMP time_mode, 1
    JE TIME_BACK_TASK
    CALL start_screen
    JMP PROCESS_TIME_FINISH     
    
    TIME_BACK_TASK:
    CALL display_newline
    CALL query_task
    JMP PROCESS_TIME_FINISH
    
    TWENTY:
    CALL display_newline     
    CALL process_short_timer
    JMP PROCESS_TIME_FINISH
    
    HOUR:
    CALL display_newline
    CALL process_long_timer    
    PROCESS_TIME_FINISH:
    
    RET
process_query_time ENDP

timer PROC  
    CALL display_newline
    CALL display_time
    JMP CHECKZERO___s 
    
    CHECKZERO___s:    
    CMP ___s, 30H
    JE CHECKZERO__s_
    DEC ___s
    CALL display_time
    JMP CHECKZERO___s
    
    CHECKZERO__s_:
    CMP __s_, 30H
    JE CHECKZERO_m__
    DEC __s_
    JMP FILL___s   
    
    CHECKZERO_m__:
    CMP _m__, 30H
    JE CHECKZEROm___
    DEC _m__
    JMP FILL__ss
    
    CHECKZEROm___:
    CMP m___, 30H
    JE TIME_FINISH
    DEC m___
    JMP FILL_mss
    
    FILL___s:
    MOV ___s, 39H
    CALL display_time
    JMP CHECKZERO___s
    
    FILL__ss:
    MOV ___s, 39H
    MOV __s_, 35H
    CALL display_time
    JMP CHECKZERO___s
    
    FILL_mss:
    MOV ___s, 39H
    MOV __s_, 35H
    MOV _m__, 39H
    CALL display_time
    JMP CHECKZERO___s     
    
    TIME_FINISH:

    
    CMP time_mode, 1
    JE TASK_MODE
    
    CALL start_screen
    JMP TIME_DONE 
    
    TASK_MODE:
    
    CALL display_newline
    CALL query_extra_time
    
    TIME_DONE:
    
    RET
timer ENDP    


delay_one_second PROC
    MOV CX, 15
    
    A:
    MOV BX, 0
    
    delay_loop:
    INC BX          ; Increment the loop counter
    CMP BX, 65535    ; Adjust this value based on your system speed to achieve roughly a 1-second delay
    JB delay_loop   ; Jump back if the loop counter is less than 183                               
    
    LOOP A   
    
    MOV BX, 0
    
    delay_loop2:
    INC BX          ; Increment the loop counter
    CMP BX, 16383    ; Adjust this value based on your system speed to achieve roughly a 1-second delay
    JB delay_loop2   ; Jump back if the loop counter is less than 183                               
     
        
    RET
delay_one_second ENDP


display_time PROC
    LEA DX, time
    CALL display_message
    
    MOV DL, m___
    CALL display_char
    
    MOV DL, _m__
    CALL display_char
    
    MOV DL, ':'
    CALL display_char
    
    MOV DL, __s_
    CALL display_char
    
    MOV DL, ___s
    CALL display_char
    
    CALL delay_one_second
    
    MOV DL, 0DH
    CALL display_char
    
    RET
display_time ENDP 
    
add_new_task PROC
    
    MOV SI, current_task
    
    CMP [tasks_status + SI], 30h
    JE NEW_TASK
    
    CMP [tasks_status + SI], 31h
    JE EXISTS
    
    CMP [tasks_status + SI], 32h
    JE EXISTS
    
    JMP ADD_FINISH
    
    NEW_TASK:   
    CALL display_newline
    MOV [tasks_status + SI], 31h
    LEA DX, todos_add_name
    CALL display_message
    CALL get_string
    
    CALL display_newline
    LEA DX, todos_added
    CALL display_message_nl
    CALL todos_screen
    JMP ADD_FINISH
    
    EXISTS:
    CALL display_newline
    LEA DX, todos_exist
    CALL display_message_nl
    CALL query_addition
    JMP ADD_FINISH
    
    ADD_FINISH:
    
    RET
add_new_task ENDP   

remove_task PROC    
    MOV SI, current_task
    
    CMP [tasks_status + SI], 30h
    JE NO_TASK_REMOVE
    
    CMP [tasks_status + SI], 31h
    JE TASK_REMOVE
    
    CMP [tasks_status + SI], 32h
    JE TASK_REMOVE
    
    JMP REMOVE_FINISH
    
    TASK_REMOVE:
    MOV [tasks_status + SI], 30h
    CALL display_newline
    LEA DX, todos_removed
    CALL display_message_nl
    CALL todos_screen
    JMP REMOVE_FINISH
    
    NO_TASK_REMOVE:
    CALL display_newline
    LEA DX, todos_no_remove
    CALL display_message_nl
    CALL query_delition
    ;JMP ADD_FINISH
    
    REMOVE_FINISH:
    
    RET
remove_task ENDP

mark_task PROC    
    MOV SI, current_task
    
    CMP [tasks_status + SI], 30h
    JE NO_TASK_MARK
    
    CMP [tasks_status + SI], 31h
    JE TASK_MARK
    
    CMP [tasks_status + SI], 32h
    JE TASK_MARKED_BEFORE
    
    JMP MARK_FINISH
    
    TASK_MARK:
    MOV [tasks_status + SI], 32h
    CALL display_newline
    LEA DX, todos_marked
    CALL display_message_nl
    CALL todos_screen
    JMP MARK_FINISH
    
    TASK_MARKED_BEFORE:
    CALL display_newline
    LEA DX, todos_mark_exist
    CALL display_message_nl
    CALL query_mark    
    
    NO_TASK_MARK:
    CALL display_newline
    LEA DX, todos_no_mark
    CALL display_message_nl
    CALL query_mark
    ;JMP ADD_FINISH
    
    MARK_FINISH:
    
    RET
mark_task ENDP


unmark_task PROC    
    MOV SI, current_task
    
    CMP [tasks_status + SI], 30h
    JE NO_TASK_UNMARK
    
    CMP [tasks_status + SI], 31h
    JE TASK_UNMARKED_BEFORE
    
    CMP [tasks_status + SI], 32h
    JE TASK_UNMARK
    
    JMP UNMARK_FINISH
    
    TASK_UNMARK:
    MOV [tasks_status + SI], 31h
    CALL display_newline
    LEA DX, todos_unmarked
    CALL display_message_nl
    CALL todos_screen
    JMP UNMARK_FINISH
    
    TASK_UNMARKED_BEFORE:
    CALL display_newline
    LEA DX, todos_unmark_exist
    CALL display_message_nl
    CALL query_unmark    
    
    NO_TASK_UNMARK:
    CALL display_newline
    LEA DX, todos_no_unmark
    CALL display_message_nl
    CALL query_unmark
    ;JMP ADD_FINISH
    
    UNMARK_FINISH:
    
    RET
unmark_task ENDP

tasks_section PROC
    
    ;CALL print_array
    
    CMP user_mode, 0
    JE BASIC_CX
    
    MOV CX, 9
    JMP CONTINUE_CX
    
    BASIC_CX:
    MOV CX, 5 
    
    CONTINUE_CX:
    
    MOV DI, CX
    LEA SI, tasks_status
    
    GET_TASKS:
    
    LEA DX, todos_text
    CALL display_message
    
    MOV BX, DI
    SUB BX, CX
    
    ADD BX, 31h
    mov DL, BL
    CALL display_char
    SUB BX, 31h
    
    LEA DX, todos_finalizer
    CALL display_message
    
    CMP BYTE PTR  [SI + BX], 30h
    JE EMPTY
    
    CMP BYTE PTR  [SI + BX], 31h
    JE INIT
    
    CMP BYTE PTR  [SI + BX], 32h
    JE DONE_TASK
    
    JMP LOOP_END
    
    EMPTY:
    LEA DX, todos_empty
    CALL display_message_nl
    JMP LOOP_END
    
    INIT:
    LEA DX, todos_init
    CALL display_message
    CALL print_task_string
        
    JMP LOOP_END
    
    DONE_TASK:
    LEA DX, todos_done
    CALL display_message
    CALL print_task_string
    
    LOOP_END:
    
    LOOP GET_TASKS
    
    RET
tasks_section ENDP

print_array PROC
    MOV CX, 90
    MOV BX, 0
    
    ARR:
    
    MOV DL, [tasks_buffer + BX]
    CALL display_char
    
    INC BX
    
    LOOP ARR
    
    RET
print_array ENDP



print_task_string PROC
    
    MOV SI, 0 
    MOV AX, 0
    ADD AX, BX
    
    CMP AX, 0
    JE VALUE_SET_PRINT
       
    SET_VALUE_PRINT:
        
    ADD SI, 10
        
    DEC AX
        
     CMP AX, 0
     JNE SET_VALUE_PRINT
    
    VALUE_SET_PRINT:
        
    MOV DL, '['
    CALL display_char
    
    MOV DH, 10
    MOV BX, 0
    
    PRINT_CHAR_LOOP:
    
 
        
    MOV DL, [tasks_buffer + SI + BX]
    
    CALL display_char
    
    INC BX
    
    DEC DH
    
    CMP DH, 0
    JNE PRINT_CHAR_LOOP
    
    LEA SI, tasks_status
    
    MOV DL, ']'
    CALL display_char
    
    LEA DX, todos_empty_buffer
    CALL display_message_nl    

    RET    
print_task_string ENDP



clear_screen PROC   
    MOV AH, 00h
    MOV AL, 02h
    INT 10h    
    
    MOV AH, 06h    ; Scroll up function
    XOR AL, AL     ; Clear entire screen
    XOR CX, CX     ; Upper left corner CH=row, CL=column
    MOV DX, 184FH  ; lower right corner DH=row, DL=column 
    MOV BH, 4Fh    ; YellowOnBlue
    INT 10H
    
    RET
clear_screen ENDP
    
    display_char PROC
        MOV AH, 02H
        INT 21H
        
        RET
    display_char ENDP   
    
    display_message PROC
        MOV AH, 09H
        INT 21H    
        
        RET
    display_message ENDP  
    
    display_message_nl PROC
        MOV AH, 09H
        INT 21H
        CALL display_newline    
        
        RET
    display_message_nl ENDP
    
    display_colon PROC
        MOV DL, ':'
        CALL display_char    
        
        RET              
    display_colon ENDP  

    display_space PROC
        MOV DL, ' '
        CALL display_char    
        
        RET 
    display_space ENDP
    
    
    display_dash PROC
        MOV DL, '-'
        CALL display_char
        
        RET
    display_dash ENDP
      
    display_newline PROC
        MOV DL, 0AH
        CALL display_char
        MOV DL, 0DH
        CALL display_char
        RET
    display_newline ENDP  
    


END main
