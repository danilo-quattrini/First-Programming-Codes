.class public RadiceNumero
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
    .limit locals 11
    .limit stack 6
    ldc "\u0049\u006E\u0073\u0065\u0072\u0069\u0073\u0063\u0069\u0020\u0069\u006C\u0020\u0076\u0061\u006C\u006F\u0072\u0065\u0020\u0070\u0065\u0072\u0020\u006C\u0061\u0020\u0071\u0075\u0061\u006C\u0065\u0020\u006E\u0065\u0020\u0066\u0061\u0063\u0063\u0069\u0061\u006D\u006F\u0020\u006C\u0061\u0020\u0072\u0061\u0064\u0069\u0063\u0065"
    invokestatic StandardLibrary/getDouble(Ljava/lang/String;)D
    dstore 1
    ldc "\u0049\u006E\u0073\u0065\u0072\u0069\u0073\u0063\u0069\u0020\u0069\u006C\u0020\u0076\u0061\u006C\u006F\u0072\u0065"
    invokestatic StandardLibrary/getDouble(Ljava/lang/String;)D
    dstore 3
    ldc2_w 1.0e-7d
    dstore 5
    dload 1
    dstore 7
L17:
    dload 7
    dload 5
    dcmpl
    ifle L16
    ldc2_w 0.5d
    dload 1
    dload 3
    ddiv
    dload 3
    dadd
    dmul
    dstore 9
    dload 9
    dload 1
    dcmpl
    ifne L22
    ldc "\u006C\u0061\u0020\u0072\u0061\u0064\u0069\u0063\u0065\u0020\u0064\u0069\u0020"
    dload 1
    invokestatic StandardLibrary/double_to_String(D)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    ldc "\u0020\u00E8\u0020"
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    dload 9
    invokestatic StandardLibrary/double_to_String(D)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    goto L20
L22:
    dload 3
    dload 9
    dsub
    dstore 7
    dload 9
    dstore 3
    ldc ""
    dload 7
    invokestatic StandardLibrary/double_to_String(D)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
    ldc ""
    dload 3
    invokestatic StandardLibrary/double_to_String(D)Ljava/lang/String;
    invokestatic StandardLibrary/String_concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invokestatic StandardLibrary/println(Ljava/lang/String;)V
L20:
    goto L17
L16:
    return
.end method
