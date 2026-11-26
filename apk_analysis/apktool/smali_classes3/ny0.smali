.class public final Lny0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lum5;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lly0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lly0;

    iget v1, v0, Lly0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lly0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lly0;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Lly0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lly0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lly0;->l:Lbu0;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, v0, Lly0;->l:Lbu0;

    iput v3, v0, Lly0;->n:I

    invoke-interface {p0}, Lum5;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-wide v0, p0, Lbu0;->c:J

    invoke-virtual {p0, v0, v1}, Lbu0;->i(J)Lgx0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lz47;)Lvm5;
    .locals 9

    iget v1, p0, Lz47;->e:I

    iget-wide v2, p0, Lz47;->l:J

    iget-wide v4, p0, Lz47;->m:J

    iget-object v0, p0, Lz47;->g:Ljv3;

    new-instance v6, Lpm5$a;

    invoke-direct {v6}, Lpm5$a;-><init>()V

    invoke-virtual {v0}, Ljv3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v7, v0

    check-cast v7, Ljr;

    invoke-virtual {v7}, Ljr;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljr;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb36;

    iget-object v8, v7, Lb36;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Lb36;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Lpm5$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lpm5;

    iget-object v6, v6, Lpm5$a;->a:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v0, v6}, Lpm5;-><init>(Ljava/util/Map;)V

    iget-object v6, p0, Lz47;->h:Lb57;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lb57;->L()Lwu0;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, Lb58;

    invoke-direct {v7, v6}, Lb58;-><init>(Lwu0;)V

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    new-instance v0, Lvm5;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lvm5;-><init>(IJJLpm5;Lb58;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c(Ltm5;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lmy0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmy0;

    iget v1, v0, Lmy0;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmy0;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmy0;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Lmy0;->p:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lmy0;->q:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lmy0;->o:Ljava/lang/String;

    iget-object v1, v0, Lmy0;->n:Lb37$a;

    iget-object v2, v0, Lmy0;->m:Lb37$a;

    iget-object v0, v0, Lmy0;->l:Ltm5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lb37$a;

    invoke-direct {p1}, Lb37$a;-><init>()V

    iget-object v2, p0, Ltm5;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lb37$a;->e(Ljava/lang/String;)V

    iget-object v2, p0, Ltm5;->b:Ljava/lang/String;

    iget-object v5, p0, Ltm5;->d:Lum5;

    if-eqz v5, :cond_5

    iput-object p0, v0, Lmy0;->l:Ltm5;

    iput-object p1, v0, Lmy0;->m:Lb37$a;

    iput-object p1, v0, Lmy0;->n:Lb37$a;

    iput-object v2, v0, Lmy0;->o:Ljava/lang/String;

    iput v3, v0, Lmy0;->q:I

    invoke-static {v5, v0}, Lny0;->a(Lum5;Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v1

    :goto_1
    check-cast p1, Lgx0;

    if-eqz p1, :cond_4

    new-instance v3, Le37;

    invoke-direct {v3, v4, p1}, Le37;-><init>(Lj95;Lgx0;)V

    move-object v4, v3

    goto :goto_3

    :cond_4
    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_2

    :cond_5
    move-object v0, v2

    move-object v2, p1

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, p1

    :goto_3
    invoke-virtual {v1, p0, v4}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    iget-object p0, v0, Ltm5;->c:Lpm5;

    new-instance p1, Ljv3$a;

    invoke-direct {p1}, Ljv3$a;-><init>()V

    iget-object p0, p0, Lpm5;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljv3$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljv3$a;->e()Ljv3;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljv3;->d()Ljv3$a;

    move-result-object p0

    iput-object p0, v2, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v2}, Lb37$a;->a()Lb37;

    move-result-object p0

    return-object p0
.end method
