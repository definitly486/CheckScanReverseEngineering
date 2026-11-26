.class public final Lio/appmetrica/analytics/push/impl/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p2, p0, Lio/appmetrica/analytics/push/impl/r;->d:Lio/appmetrica/analytics/push/impl/b2;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lio/appmetrica/analytics/push/impl/b2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/push/provider/api/PushServiceController;

    invoke-interface {v2}, Lio/appmetrica/analytics/push/provider/api/PushServiceController;->register()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lio/appmetrica/analytics/push/impl/b2;->a:Landroid/content/Context;

    invoke-interface {v2}, Lio/appmetrica/analytics/push/provider/api/PushServiceController;->getTransportId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->initToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PushServiceController is null"

    invoke-virtual {p2, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->sendSystemInfo(Landroid/content/Context;Ljava/lang/Long;)V

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->e:Lio/appmetrica/analytics/push/impl/x2;

    if-eqz p0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/push/impl/x2;->c:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/x2;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TokenManager is null"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
