.class public abstract Lyads/b23;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/u13;Ljava/util/ArrayList;)Lyads/u13;
    .locals 3

    invoke-virtual {p0, p1}, Lyads/u13;->a(Ljava/util/List;)Lyads/s13;

    move-result-object v0

    instance-of v1, v0, Lyads/r13;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lyads/p13;

    if-eqz v1, :cond_2

    new-instance p1, Lyads/vo2;

    invoke-virtual {p0}, Lyads/u13;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "At least"

    goto :goto_0

    :cond_1
    const-string p0, "Exactly"

    :goto_0
    check-cast v0, Lyads/p13;

    invoke-virtual {v0}, Lyads/p13;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " argument(s) expected."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v1, v0, Lyads/q13;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lyads/u13;->b(Ljava/util/List;)Lyads/s13;

    move-result-object p1

    sget-object v1, Lyads/r13;->a:Lyads/r13;

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lyads/vo2;

    check-cast v0, Lyads/q13;

    invoke-virtual {v0}, Lyads/q13;->b()Lyads/xo2;

    move-result-object p1

    invoke-virtual {v0}, Lyads/q13;->a()Lyads/xo2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid argument type: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Ljava/util/ArrayList;)Lyads/vo2;
    .locals 3

    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance p0, Lyads/vo2;

    const-string v0, "Function requires non empty argument list."

    invoke-direct {p0, v0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lyads/vo2;

    invoke-static {p0}, Lyads/wo2;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Function has no matching overload for given argument types: "

    const-string v2, "."

    .line 126
    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-direct {v0, p0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/util/ArrayList;)Lyads/vo2;
    .locals 0

    invoke-static {p0}, Lyads/b23;->a(Ljava/util/ArrayList;)Lyads/vo2;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/ArrayList;)Lyads/vo2;
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p0, Lyads/vo2;

    const-string v0, "Method requires non empty argument list."

    invoke-direct {p0, v0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lyads/vo2;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lyads/wo2;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Method has no matching overload for given argument types: "

    const-string v2, "."

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
