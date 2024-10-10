.class public ContaGiorni
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
    .limit locals 6
    .limit stack 4
    ldc 12
    multianewarray [Ljava/lang/String; 1
    dup
    ldc 0
    ldc "\u0047\u0065\u006E\u006E\u0061\u0069\u006F"
    aastore
    dup
    ldc 1
    ldc "\u0046\u0065\u0062\u0062\u0072\u0061\u0069\u006F"
    aastore
    dup
    ldc 2
    ldc "\u004D\u0061\u0072\u007A\u006F"
    aastore
    dup
    ldc 3
    ldc "\u0041\u0070\u0072\u0069\u006C\u0065"
    aastore
    dup
    ldc 4
    ldc "\u004D\u0061\u0067\u0067\u0069\u006F"
    aastore
    dup
    ldc 5
    ldc "\u0047\u0069\u0075\u0067\u006E\u006F"
    aastore
    dup
    ldc 6
    ldc "\u004C\u0075\u0067\u006C\u0069\u006F"
    aastore
    dup
    ldc 7
    ldc "\u0041\u0067\u006F\u0073\u0074\u006F"
    aastore
    dup
    ldc 8
    ldc "\u0053\u0065\u0074\u0074\u0065\u006D\u0062\u0072\u0065"
    aastore
    dup
    ldc 9
    ldc "\u004F\u0074\u0074\u006F\u0062\u0072\u0065"
    aastore
    dup
    ldc 10
    ldc "\u004E\u006F\u0076\u0065\u006D\u0062\u0072\u0065"
    aastore
    dup
    ldc 11
    ldc "\u0044\u0069\u0063\u0065\u006D\u0062\u0072\u0065"
    aastore
    astore 1
    ldc 12
    nop
    istore 2
    iload 2
    invokestatic ContaGiorni/GiorniDeiMesi(I)[I
    astore 3
    ldc "\u0049\u006E\u0073\u0065\u0072\u0069\u0073\u0063\u0069\u0020\u0069\u006C\u0020\u006D\u0065\u0073\u0065\u0020\u0069\u006E\u0020\u0063\u0075\u0069\u0020\u0074\u0069\u0020\u0074\u0072\u006F\u0076\u0069"
    invokestatic StandardLibrary/getString(Ljava/lang/String;)Ljava/lang/String;
    astore 4
    ldc ""
    aload 4
    aload 1
    invokestatic ContaGiorni/controllomese(Ljava/lang/String;[Ljava/lang/String;)Z
    invokestatic StandardLibrary/boolean_to_String(Z)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    aload 4
    aload 1
    invokestatic ContaGiorni/controllomese(Ljava/lang/String;[Ljava/lang/String;)Z
    nop
    ifeq L17
    ldc "\u0049\u006E\u0073\u0065\u0072\u0069\u0073\u0063\u0069\u0020\u0069\u006C\u0020\u0067\u0069\u006F\u0072\u006E\u006F\u0020\u0069\u006E\u0020\u0063\u0075\u0069\u0020\u0074\u0069\u0020\u0074\u0072\u006F\u0076\u0069"
    invokestatic StandardLibrary/getInt(Ljava/lang/String;)I
    istore 5
    goto L15
L17:
L15:
    return
.end method
.method public static GiorniDeiMesi(I)[I
    .limit locals 3
    .limit stack 4
    iload 0
    multianewarray [I 1
    astore 1
    ldc 0
    nop
    istore 2
L28:
    iload 2
    aload 1
    arraylength
    if_icmpge L24
    iload 2
    ldc 2
    nop
    irem
    ldc 0
    nop
    if_icmpne L33
    aload 1
    iload 2
    ldc 31
    nop
    dup_x2
    iastore
    pop
    goto L31
L33:
    aload 1
    iload 2
    ldc 30
    nop
    dup_x2
    iastore
    pop
L31:
    iload 2
    ldc 7
    nop
    if_icmpne L38
    aload 1
    iload 2
    ldc 31
    nop
    dup_x2
    iastore
    pop
    goto L36
L38:
L36:
    iload 2
    ldc 1
    nop
    if_icmpne L41
    aload 1
    iload 2
    ldc 29
    nop
    dup_x2
    iastore
    pop
    goto L39
L41:
L39:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L28
L24:
    aload 1
    areturn
.end method
.method public static controllomese(Ljava/lang/String;[Ljava/lang/String;)Z
    .limit locals 3
    .limit stack 3
    ldc 0
    nop
    istore 2
L47:
    iload 2
    aload 1
    arraylength
    if_icmpge L43
    aload 1
    iload 2
    aaload
    aload 0
    if_acmpne L51
    ldc 1
    ireturn
L51:
    iload 2
    dup
    ldc 1
    iadd
    istore 2
    pop
    goto L47
L43:
    ldc 0
    ireturn
.end method
