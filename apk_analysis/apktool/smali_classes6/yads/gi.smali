.class public abstract Lyads/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 98
    invoke-static {p0}, Lyads/wo2;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-static {p0, p1, v0}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x1

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    .line 71
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 72
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 73
    :goto_0
    nop

    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Lyads/l20;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 74
    :try_start_0
    invoke-static {p0}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p0

    .line 75
    new-instance v1, Lyads/l20;

    invoke-direct {v1, p0}, Lyads/l20;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 76
    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    instance-of p0, v1, Lk57$a;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 78
    :goto_1
    check-cast v0, Lyads/l20;

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 90
    const-string v0, "array"

    const/4 v1, 0x0

    invoke-static {v0, p0, p2, p1, v1}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8

    if-eqz p4, :cond_0

    .line 91
    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p4, "<"

    const-string v0, ">, "

    .line 92
    invoke-static {p4, p0, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x1

    invoke-interface {p2, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 94
    const-string p2, "("

    .line 95
    invoke-static {p1, p2, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v6, Lyq2;

    const/4 p0, 0x4

    invoke-direct {v6, p0}, Lyq2;-><init>(I)V

    const/4 v5, 0x0

    const/16 v7, 0x19

    const/4 v2, 0x0

    const-string v4, ")"

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V
    .locals 3

    .line 79
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 81
    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 82
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const-string p3, "Array"

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 84
    :cond_1
    const-string p3, "Dict"

    goto :goto_0

    .line 85
    :cond_2
    const-string p3, "Number"

    goto :goto_0

    .line 86
    :cond_3
    const-string p3, "Null"

    .line 87
    :goto_0
    invoke-virtual {p2}, Lyads/xo2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, ", got "

    const-string v1, "."

    .line 88
    const-string v2, "Incorrect value type: expected "

    invoke-static {v2, p2, v0, p3, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    const-string p3, "array"

    invoke-static {p3, p0, p1, p2, p4}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested index ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") out of bounds array size ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "array"

    invoke-static {v1, p0, p1, v0, p2}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONArray;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 33
    :try_start_0
    invoke-static {p0}, Lyads/p46;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance v1, Lyads/q46;

    invoke-direct {v1, p0}, Lyads/q46;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 35
    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    instance-of p0, v1, Lk57$a;

    if-eqz p0, :cond_0

    move-object v1, v0

    .line 37
    :cond_0
    check-cast v1, Lyads/q46;

    if-eqz v1, :cond_1

    .line 38
    iget-object v0, v1, Lyads/q46;->a:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
