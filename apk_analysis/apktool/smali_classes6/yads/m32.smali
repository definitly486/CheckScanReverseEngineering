.class public abstract Lyads/m32;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lyads/n32;
    .locals 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    rem-int/2addr v0, v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v6, p0}, Lkx6;->n(II)Ly74;

    move-result-object p0

    invoke-static {v5, p0}, Lkx6;->m(ILy74;)Lw74;

    move-result-object p0

    iget v0, p0, Lw74;->b:I

    iget v5, p0, Lw74;->c:I

    iget p0, p0, Lw74;->d:I

    if-lez p0, :cond_0

    if-le v0, v5, :cond_1

    :cond_0
    if-gez p0, :cond_2

    if-gt v5, v0, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lb36;

    invoke-direct {v8, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v0, v5, :cond_2

    add-int/2addr v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Lyads/n32;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;Z)V

    return-object v0

    :cond_3
    new-instance v0, Lyads/pt4;

    const-string v1, "Must be even number of states in path: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/pt4;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lyads/pt4;

    const-string v2, "Top level id must be number: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lyads/pt4;-><init>(Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    throw v1
.end method

.method public static a(Lyads/cb1;)Lyads/n32;
    .locals 6

    .line 115
    iget-wide v1, p0, Lyads/cb1;->b:J

    iget-object p0, p0, Lyads/cb1;->a:Lyads/br0;

    .line 116
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lyads/br0;->a()Lyads/p41;

    move-result-object p0

    instance-of v3, p0, Lyads/z22;

    if-eqz v3, :cond_0

    check-cast p0, Lyads/z22;

    .line 118
    invoke-static {p0}, Lyads/du1;->a(Lyads/z22;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p0}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 120
    invoke-static {p0}, Lyads/bz;->a(I)V

    .line 121
    sget-object v3, Lyads/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 122
    :cond_1
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 124
    new-instance v0, Lyads/n32;

    sget-object v3, Lkx2;->b:Lkx2;

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    return-object v0
.end method
