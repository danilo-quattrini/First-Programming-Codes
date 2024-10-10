.class public Array
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
    .limit locals 3
    .limit stack 4
    ldc 5
    multianewarray [I 1
    dup
    ldc 0
    ldc 1
    nop
    iastore
    dup
    ldc 1
    ldc 3
    nop
    iastore
    dup
    ldc 2
    ldc 5
    nop
    iastore
    dup
    ldc 3
    ldc 7
    nop
    iastore
    dup
    ldc 4
    ldc 9
    nop
    iastore
    astore 1
    ldc 6
    multianewarray [I 1
    dup
    ldc 0
    ldc 0
    nop
    iastore
    dup
    ldc 1
    ldc 2
    nop
    iastore
    dup
    ldc 2
    ldc 4
    nop
    iastore
    dup
    ldc 3
    ldc 6
    nop
    iastore
    dup
    ldc 4
    ldc 8
    nop
    iastore
    dup
    ldc 5
    ldc 10
    nop
    iastore
    astore 2
    ldc "\u006D\u0065\u0064\u0069\u0061\u0020\u003D\u0020"
    aload 1
    invokestatic Array/media([I)D
    invokestatic StandardLibrary/double_to_String(D)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    ldc "\u0049\u006C\u0020\u006E\u006F\u0073\u0074\u0072\u006F\u0020\u0061\u0072\u0072\u0061\u0079\u0020\u0065\u0027\u0020\u006F\u0072\u0064\u0069\u0061\u006E\u0074\u006F\u003F\u0020"
    aload 1
    invokestatic Array/controllo_ordine([I)Z
    invokestatic StandardLibrary/boolean_to_String(Z)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    ldc "\u0043\u0069\u0020\u0073\u006F\u006E\u006F\u0020\u0065\u006C\u0065\u006D\u0065\u006E\u0074\u0069\u0020\u0072\u0069\u0070\u0065\u0074\u0075\u0074\u0069\u003F\u0020"
    aload 1
    invokestatic Array/elementi_ripetuti([I)Z
    invokestatic StandardLibrary/boolean_to_String(Z)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    ldc "\u0049\u006C\u0020\u006E\u0075\u006D\u0065\u0072\u006F\u0020\u0070\u0069\u0075\u0027\u0020\u0070\u0069\u0063\u0063\u006F\u006C\u006F\u0020"
    aload 1
    invokestatic Array/min_array([I)I
    invokestatic StandardLibrary/int_to_String(I)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    ldc "\u0020\u0049\u006C\u0020\u006E\u0075\u006D\u0065\u0072\u006F\u0020\u0070\u0069\u0075\u0027\u0020\u0067\u0072\u0061\u006E\u0064\u0065\u0020\u0065\u0027\u0020"
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    aload 1
    invokestatic Array/max_array([I)I
    invokestatic StandardLibrary/int_to_String(I)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    ldc "\u0049\u006C\u0020\u006E\u0075\u006D\u0065\u0072\u006F\u0020\u0073\u0069\u0020\u0074\u0072\u006F\u0076\u0061\u0020\u006E\u0065\u006C\u006C\u0061\u0020\u0070\u006F\u0073\u0069\u007A\u0069\u006F\u006E\u0065\u0020"
    aload 1
    invokestatic Array/ricerca_ingenua([I)I
    invokestatic StandardLibrary/int_to_String(I)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    aload 1
    aload 2
    invokestatic Array/concatenazione([I[I)V
    return
.end method
.method public static media([I)D
    .limit locals 4
    .limit stack 4
    ldc2_w 0.0d
    dstore 1
    ldc 0
    nop
    istore 3
L22:
    iload 3
    aload 0
    arraylength
    if_icmpge L18
    dload 1
    aload 0
    iload 3
    iaload
    i2d
    dadd
    dstore 1
    iload 3
    dup
    ldc 1
    iadd
    istore 3
    pop
    goto L22
L18:
    dload 1
    aload 0
    arraylength
    i2d
    ddiv
    dreturn
.end method
.method public static controllo_ordine([I)Z
    .limit locals 2
    .limit stack 4
    ldc 0
    nop
    istore 1
L30:
    iload 1
    aload 0
    arraylength
    ldc 1
    nop
    isub
    if_icmpge L26
    aload 0
    iload 1
    iaload
    aload 0
    iload 1
    ldc 1
    nop
    iadd
    iaload
    if_icmpgt L34
    ldc 0
    ireturn
L34:
    iload 1
    dup
    ldc 1
    iadd
    istore 1
    pop
    goto L30
L26:
    ldc 1
    ireturn
.end method
.method public static elementi_ripetuti([I)Z
    .limit locals 3
    .limit stack 3
    ldc 0
    nop
    istore 1
L40:
    iload 1
    aload 0
    arraylength
    if_icmpge L36
    iload 1
    ldc 1
    nop
    iadd
    istore 2
L46:
    iload 2
    aload 0
    arraylength
    if_icmpge L42
    aload 0
    iload 1
    iaload
    aload 0
    iload 2
    iaload
    if_icmpne L50
    ldc 1
    ireturn
L50:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L46
L42:
    iload 1
    dup
    ldc 1
    iadd
    istore 1
    pop
    goto L40
L36:
    ldc 0
    ireturn
.end method
.method public static min_array([I)I
    .limit locals 3
    .limit stack 3
    aload 0
    ldc 0
    nop
    iaload
    istore 1
    ldc 0
    nop
    istore 2
L59:
    iload 2
    aload 0
    arraylength
    if_icmpge L55
    aload 0
    iload 2
    iaload
    iload 1
    if_icmpge L63
    aload 0
    iload 2
    iaload
    istore 1
    goto L61
L63:
L61:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L59
L55:
    iload 1
    ireturn
.end method
.method public static max_array([I)I
    .limit locals 3
    .limit stack 3
    aload 0
    ldc 0
    nop
    iaload
    istore 1
    ldc 0
    nop
    istore 2
L72:
    iload 2
    aload 0
    arraylength
    if_icmpge L68
    aload 0
    iload 2
    iaload
    iload 1
    if_icmple L76
    aload 0
    iload 2
    iaload
    istore 1
    goto L74
L76:
L74:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L72
L68:
    iload 1
    ireturn
.end method
.method public static concatenazione([I[I)V
    .limit locals 5
    .limit stack 4
    aload 0
    arraylength
    aload 1
    arraylength
    iadd
    istore 2
    iload 2
    multianewarray [I 1
    astore 3
    ldc 0
    nop
    istore 4
L89:
    iload 4
    aload 0
    arraylength
    if_icmpge L85
    aload 3
    iload 4
    aload 0
    iload 4
    iaload
    dup_x2
    iastore
    pop
    iload 4
    dup
    ldc 1
    iadd
    istore 4
    pop
    goto L89
L85:
    ldc 0
    nop
    istore 4
L96:
    iload 4
    aload 1
    arraylength
    if_icmpge L92
    aload 3
    iload 4
    aload 0
    arraylength
    iadd
    aload 1
    iload 4
    iaload
    dup_x2
    iastore
    pop
    iload 4
    dup
    ldc 1
    iadd
    istore 4
    pop
    goto L96
L92:
    ldc "\u0056\u0045\u0054\u0054\u004F\u0052\u0045\u0020\u0043\u004F\u004E\u0043\u0041\u0054\u0045\u004E\u0041\u0054\u004F"
    invokestatic StandardLibrary/print(Ljava/lang/String;)V
    ldc 0
    nop
    istore 4
L104:
    iload 4
    aload 3
    arraylength
    if_icmpge L100
    ldc "\u0020"
    aload 3
    iload 4
    iaload
    invokestatic StandardLibrary/int_to_String(I)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/print(Ljava/lang/String;)V
    iload 4
    dup
    ldc 1
    iadd
    istore 4
    pop
    goto L104
L100:
    return
.end method
.method public static ricerca_ingenua([I)I
    .limit locals 3
    .limit stack 3
    ldc "\u0049\u006E\u0073\u0065\u0072\u0069\u0073\u0063\u0069\u0020\u0069\u006C\u0020\u0076\u0061\u006C\u006F\u0072\u0065\u0020\u0063\u0068\u0065\u0020\u0076\u0075\u006F\u0069\u0020\u0072\u0069\u0063\u0065\u0072\u0063\u0061\u0072\u0065"
    invokestatic StandardLibrary/getInt(Ljava/lang/String;)I
    istore 1
    ldc 0
    nop
    istore 2
L115:
    iload 2
    aload 0
    arraylength
    if_icmpge L111
    aload 0
    iload 2
    iaload
    iload 1
    if_icmpne L120
    iload 2
    ireturn
L120:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L115
L111:
    ldc -1
    nop
    ireturn
.end method
