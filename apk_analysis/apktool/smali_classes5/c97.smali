.class public final Lc97;
.super Lgy0$a;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lgy0;
    .locals 10

    invoke-static {p1}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lqp1;

    if-ne p0, p2, :cond_0

    new-instance v0, Lb97;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lb97;-><init>(Ljava/lang/reflect/Type;ZZZZZZ)V

    return-object v0

    :cond_0
    const-class p2, Lgg3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    const-class p2, Lmz7;

    if-ne p0, p2, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    const-class p2, La75;

    if-ne p0, p2, :cond_3

    move v8, v0

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    const-class p2, Ltq5;

    const/4 v2, 0x0

    if-eq p0, p2, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v8, :cond_4

    return-object v2

    :cond_4
    instance-of p0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p0, :cond_8

    if-nez v6, :cond_7

    if-nez v7, :cond_6

    if-eqz v8, :cond_5

    const-string p0, "Maybe"

    goto :goto_3

    :cond_5
    const-string p0, "Observable"

    goto :goto_3

    :cond_6
    const-string p0, "Single"

    goto :goto_3

    :cond_7
    const-string p0, "Flowable"

    :goto_3
    const-string p1, " return type must be parameterized as "

    const-string p2, "<Foo> or "

    invoke-static {p0, p1, p0, p2, p0}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<? extends Foo>"

    invoke-static {p1, p0}, Leq;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v2

    :cond_8
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, La57;

    if-ne p1, p2, :cond_a

    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_9

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p0}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    move-object v3, p0

    move v4, v1

    move v5, v4

    goto :goto_4

    :cond_9
    const-string p0, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_a
    const-class p2, Lm57;

    if-ne p1, p2, :cond_c

    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p0}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    move-object v3, p0

    move v4, v0

    move v5, v1

    goto :goto_4

    :cond_b
    const-string p0, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_c
    move-object v3, p0

    move v5, v0

    move v4, v1

    :goto_4
    new-instance v2, Lb97;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lb97;-><init>(Ljava/lang/reflect/Type;ZZZZZZ)V

    return-object v2
.end method
