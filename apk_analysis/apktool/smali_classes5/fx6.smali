.class public final Lfx6;
.super Lio/grpc/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    return-void
.end method

.method public static d(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 9

    const-string v0, "subsetSize"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    long-to-double v5, v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-nez v0, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Number expected to be long: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v3, v1, Ljava/lang/String;

    const-string v4, "value \'%s\' for key \'%s\' is not a long integer"

    if-eqz v3, :cond_8

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lh88;->m:Lh88;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subset size missing in random_subsetting_experimental, LB policy config="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object v0

    :cond_3
    const-string v1, "childPolicy"

    invoke-static {v1, p0}, Lpl2;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lpl2;->a(Ljava/util/List;)V

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lir3;->e(Ljava/util/List;)Lio/grpc/l$b;

    move-result-object v1

    iget-object v2, v1, Lio/grpc/l$b;->a:Lh88;

    if-eqz v2, :cond_5

    sget-object v0, Lh88;->m:Lh88;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse child in random_subsetting_experimental, LB policy config="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-virtual {v2}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-lez p0, :cond_6

    move p0, v6

    goto :goto_2

    :cond_6
    move p0, v0

    :goto_2
    const-string v7, "Subset size must be greater than 0"

    invoke-static {p0, v7}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-static {v2, v3}, Lfa4;->Y(J)I

    move-result p0

    iget-object v1, v1, Lio/grpc/l$b;->b:Ljava/lang/Object;

    const-string v2, "childConfig"

    invoke-static {v1, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    int-to-long v2, p0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v6

    :cond_7
    const-string v2, "Subset size must be set before building the config"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    new-instance v0, Lex6$c;

    invoke-direct {v0, p0, v1}, Lex6$c;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lio/grpc/l$b;

    invoke-direct {p0, v0}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_8
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 0

    new-instance p0, Lex6;

    invoke-direct {p0, p1}, Lex6;-><init>(Lio/grpc/h$e;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "random_subsetting_experimental"

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lfx6;->d(Ljava/util/Map;)Lio/grpc/l$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lh88;->m:Lh88;

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    const-string p1, "Failed parsing configuration for random_subsetting_experimental"

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/l$b;

    invoke-direct {p1, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object p1
.end method
