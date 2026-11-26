.class public final Lio/appmetrica/analytics/push/impl/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/u2;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/x2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/i1;->a:Lio/appmetrica/analytics/push/impl/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 58
    const-string p0, "minInterval"

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/push/impl/t2;)Z
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/i1;->a:Lio/appmetrica/analytics/push/impl/x2;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/x2;->c:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/push/impl/s2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_3

    iget-object p0, v1, Lio/appmetrica/analytics/push/impl/s2;->a:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-wide v1, v1, Lio/appmetrica/analytics/push/impl/s2;->b:J

    sub-long/2addr p0, v1

    const-wide/32 v1, 0x5265c00

    cmp-long p0, p0, v1

    if-lez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
