.class public abstract Lyads/jo0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 115
    invoke-static {p0}, Lyads/wo2;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/json/JSONObject;

    move-object v0, v5

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v0, v3

    :goto_1
    sget-object v5, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v6, Lk57$a;

    invoke-direct {v6, v5}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v6

    :goto_3
    invoke-static {v5}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v4, p2}, Lyads/jo0;->b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v3

    :cond_2
    invoke-static {p1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    new-instance v2, Lk57$a;

    invoke-direct {v2, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_4
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    invoke-static {p0, p1, v1, p2}, Lyads/jo0;->b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v3
.end method

.method public static final a(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    xor-int/lit8 p2, p2, 0x1

    .line 116
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge p2, v1, :cond_3

    .line 118
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    return-object p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9

    if-eqz p3, :cond_0

    .line 110
    const-string p3, ""

    goto :goto_0

    :cond_0
    const-string p3, "<dict>, "

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    const-string p1, "("

    .line 112
    invoke-static {p0, p1, p3}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v7, Luf;

    const/4 p0, 0x3

    invoke-direct {v7, p0}, Luf;-><init>(I)V

    const/4 v6, 0x0

    const/16 v8, 0x19

    const/4 v3, 0x0

    const-string v5, ")"

    invoke-static/range {v2 .. v8}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0, p2}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V
    .locals 3

    .line 99
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 101
    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 102
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const-string p3, "Array"

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 104
    :cond_1
    const-string p3, "Dict"

    goto :goto_0

    .line 105
    :cond_2
    const-string p3, "Number"

    goto :goto_0

    .line 106
    :cond_3
    const-string p3, "Null"

    .line 107
    :goto_0
    invoke-virtual {p2}, Lyads/xo2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, ", got "

    const-string v1, "."

    .line 108
    const-string v2, "Incorrect value type: expected "

    invoke-static {v2, p2, v0, p3, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p0, p1, p2, p4}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Missing property \""

    const-string v1, "\" in the dict."

    invoke-static {v0, p2, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method
