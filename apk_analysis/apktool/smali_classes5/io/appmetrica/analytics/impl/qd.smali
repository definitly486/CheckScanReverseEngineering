.class public final Lio/appmetrica/analytics/impl/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/hk;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Nl;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:J


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Nl;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Nl;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/nd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qd;->a:Lio/appmetrica/analytics/impl/Nl;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/qd;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/qd;->c:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/qd;->d:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_STATUS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qd;->e:Ljava/lang/String;

    const-wide/32 p1, 0x5265c00

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/qd;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Nl;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;Ljava/util/List;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 42
    new-instance p3, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p3}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/qd;-><init>(Lio/appmetrica/analytics/impl/Nl;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/gk;
    .locals 11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/qd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qd;->d:Ljava/util/List;

    new-instance v2, Lio/appmetrica/analytics/impl/pd;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/pd;-><init>()V

    invoke-static {v0, v2}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qd;->a:Lio/appmetrica/analytics/impl/Nl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/qd;->e:Ljava/lang/String;

    check-cast v2, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v2, v3, v1}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "modulesStatus"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkx6;->n(II)Ly74;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Lw74;->b()Lx74;

    move-result-object v4

    :goto_0
    iget-boolean v7, v4, Lx74;->d:Z

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lx74;->nextInt()I

    move-result v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Lio/appmetrica/analytics/impl/nd;

    const-string v9, "moduleName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "loaded"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v8, v9, v7}, Lio/appmetrica/analytics/impl/nd;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_2
    new-instance v8, Lio/appmetrica/analytics/impl/nd;

    const-string v7, ""

    invoke-direct {v8, v7, v5}, Lio/appmetrica/analytics/impl/nd;-><init>(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "lastSendTime"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lio/appmetrica/analytics/impl/Fd;

    invoke-direct {v4, v6, v2, v3}, Lio/appmetrica/analytics/impl/Fd;-><init>(Ljava/util/List;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    new-instance v4, Lio/appmetrica/analytics/impl/Fd;

    sget-object v2, Lkx2;->b:Lkx2;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v2, v5, v6}, Lio/appmetrica/analytics/impl/Fd;-><init>(Ljava/util/List;J)V

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/qd;->c:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v4, :cond_4

    iget-wide v5, v4, Lio/appmetrica/analytics/impl/Fd;->b:J

    sub-long v5, v2, v5

    iget-wide v7, p0, Lio/appmetrica/analytics/impl/qd;->f:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    iget-object v4, v4, Lio/appmetrica/analytics/impl/Fd;->a:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :goto_4
    new-instance v1, Lio/appmetrica/analytics/impl/Fd;

    invoke-direct {v1, v0, v2, v3}, Lio/appmetrica/analytics/impl/Fd;-><init>(Ljava/util/List;J)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/qd;->a:Lio/appmetrica/analytics/impl/Nl;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qd;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fd;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Kd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    new-instance v0, Lio/appmetrica/analytics/impl/gk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/qd;->b:Ljava/lang/String;

    const-string v3, "_status"

    invoke-static {v2, p0, v3}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/impl/gk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
