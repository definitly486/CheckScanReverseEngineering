.class public final Lk06;
.super Lio/grpc/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    return-void
.end method

.method public static d(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 13

    const-string v0, "interval"

    invoke-static {v0, p0}, Lpl2;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "baseEjectionTime"

    invoke-static {v1, p0}, Lpl2;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "maxEjectionTime"

    invoke-static {v2, p0}, Lpl2;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "maxEjectionPercentage"

    invoke-static {v3, p0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lj06$f$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-wide v5, 0x2540be400L

    iput-wide v5, v4, Lj06$f$a;->a:J

    const-wide v5, 0x6fc23ac00L

    iput-wide v5, v4, Lj06$f$a;->b:J

    const-wide v5, 0x45d964b800L

    iput-wide v5, v4, Lj06$f$a;->c:J

    const/16 v5, 0xa

    iput v5, v4, Lj06$f$a;->d:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lj06$f$a;->a:J

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v4, Lj06$f$a;->b:J

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v4, Lj06$f$a;->c:J

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lj06$f$a;->d:I

    :cond_3
    const-string v0, "successRateEjection"

    invoke-static {v0, p0}, Lpl2;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "requestVolume"

    const-string v2, "minimumHosts"

    const-string v3, "enforcementPercentage"

    const/4 v5, 0x5

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_b

    new-instance v9, Lj06$f$c$a;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/16 v10, 0x76c

    iput v10, v9, Lj06$f$c$a;->a:I

    iput v6, v9, Lj06$f$c$a;->b:I

    iput v5, v9, Lj06$f$c$a;->c:I

    iput v6, v9, Lj06$f$c$a;->d:I

    const-string v10, "stdevFactor"

    invoke-static {v10, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lj06$f$c$a;->a:I

    :cond_4
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_5

    if-gt v10, v6, :cond_5

    move v11, v8

    goto :goto_0

    :cond_5
    move v11, v7

    :goto_0
    invoke-static {v11}, Lo8;->e(Z)V

    iput v10, v9, Lj06$f$c$a;->b:I

    :cond_6
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_7

    move v11, v8

    goto :goto_1

    :cond_7
    move v11, v7

    :goto_1
    invoke-static {v11}, Lo8;->e(Z)V

    iput v10, v9, Lj06$f$c$a;->c:I

    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    move v10, v8

    goto :goto_2

    :cond_9
    move v10, v7

    :goto_2
    invoke-static {v10}, Lo8;->e(Z)V

    iput v0, v9, Lj06$f$c$a;->d:I

    :cond_a
    new-instance v0, Lj06$f$c;

    invoke-direct {v0, v9}, Lj06$f$c;-><init>(Lj06$f$c$a;)V

    iput-object v0, v4, Lj06$f$a;->e:Lj06$f$c;

    :cond_b
    const-string v0, "failurePercentageEjection"

    invoke-static {v0, p0}, Lpl2;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v9, Lj06$f$b$a;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/16 v10, 0x55

    iput v10, v9, Lj06$f$b$a;->a:I

    iput v6, v9, Lj06$f$b$a;->b:I

    iput v5, v9, Lj06$f$b$a;->c:I

    const/16 v5, 0x32

    iput v5, v9, Lj06$f$b$a;->d:I

    const-string v5, "threshold"

    invoke-static {v5, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0}, Lpl2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_c

    if-gt v1, v6, :cond_c

    move v5, v8

    goto :goto_3

    :cond_c
    move v5, v7

    :goto_3
    invoke-static {v5}, Lo8;->e(Z)V

    iput v1, v9, Lj06$f$b$a;->a:I

    :cond_d
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_e

    if-gt v1, v6, :cond_e

    move v3, v8

    goto :goto_4

    :cond_e
    move v3, v7

    :goto_4
    invoke-static {v3}, Lo8;->e(Z)V

    iput v1, v9, Lj06$f$b$a;->b:I

    :cond_f
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_10

    move v2, v8

    goto :goto_5

    :cond_10
    move v2, v7

    :goto_5
    invoke-static {v2}, Lo8;->e(Z)V

    iput v1, v9, Lj06$f$b$a;->c:I

    :cond_11
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_12

    move v1, v8

    goto :goto_6

    :cond_12
    move v1, v7

    :goto_6
    invoke-static {v1}, Lo8;->e(Z)V

    iput v0, v9, Lj06$f$b$a;->d:I

    :cond_13
    new-instance v0, Lj06$f$b;

    invoke-direct {v0, v9}, Lj06$f$b;-><init>(Lj06$f$b$a;)V

    iput-object v0, v4, Lj06$f$a;->f:Lj06$f$b;

    :cond_14
    const-string v0, "childPolicy"

    invoke-static {v0, p0}, Lpl2;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_7

    :cond_15
    invoke-static {p0}, Lpl2;->a(Ljava/util/List;)V

    :goto_7
    invoke-static {p0}, Lir3;->e(Ljava/util/List;)Lio/grpc/l$b;

    move-result-object p0

    iget-object v0, p0, Lio/grpc/l$b;->a:Lh88;

    if-eqz v0, :cond_16

    sget-object p0, Lh88$a;->UNAVAILABLE:Lh88$a;

    const-string v1, "Failed to parse child in outlier_detection_experimental"

    invoke-static {p0, v1, v0}, Lvs3;->h(Lh88$a;Ljava/lang/String;Lh88;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object v0

    :cond_16
    iget-object p0, p0, Lio/grpc/l$b;->b:Ljava/lang/Object;

    if-eqz p0, :cond_17

    move v0, v8

    goto :goto_8

    :cond_17
    move v0, v7

    :goto_8
    invoke-static {v0}, Lo8;->r(Z)V

    iput-object p0, v4, Lj06$f$a;->g:Ljava/lang/Object;

    if-eqz p0, :cond_18

    move v7, v8

    :cond_18
    invoke-static {v7}, Lo8;->r(Z)V

    new-instance p0, Lj06$f;

    invoke-direct {p0, v4}, Lj06$f;-><init>(Lj06$f$a;)V

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 1

    new-instance p0, Lj06;

    sget-object v0, Ldu8;->a:Ldu8$a;

    invoke-direct {p0, p1, v0}, Lj06;-><init>(Lio/grpc/h$e;Ldu8;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "outlier_detection_experimental"

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
    invoke-static {p1}, Lk06;->d(Ljava/util/Map;)Lio/grpc/l$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lh88;->m:Lh88;

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    const-string p1, "Failed parsing configuration for outlier_detection_experimental"

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/l$b;

    invoke-direct {p1, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object p1
.end method
