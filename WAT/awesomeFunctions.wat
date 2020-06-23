(module
    (func $square(param $num i32) (result i32)
        get_local $num
        get_local $num
        i32.mul
    )
    (export "square" (func $square))


    (func $fib (param $num i32) (result i32)
        (local $fib1 i32)
        (local $fib2 i32)

        (if (result i32) (i32.eq (get_local $num) (i32.const 0))
            (then (i32.const 0))
            (else
                (if (result i32) (i32.eq (get_local $num) (i32.const 1))
                    (then (i32.const 1))
                    (else 
                        get_local $num
                        i32.const 1
                        i32.sub 
                        call $fib
                        set_local $fib1
                    
                        
                        get_local $num
                        i32.const 2
                        i32.sub 
                        call $fib 
                        set_local $fib2

                        get_local $fib1 
                        get_local $fib2
                        i32.add
                    )
                )
            )
        )
    )
    (export "fib" (func $fib))
)