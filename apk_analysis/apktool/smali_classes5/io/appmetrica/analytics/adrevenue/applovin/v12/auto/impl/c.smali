.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

.field public c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;

    new-instance v2, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/b;

    iget-object v3, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/b;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;)V

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v2

    const-string v3, "max_revenue_events"

    invoke-virtual {v2, v0, v3}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v2

    const-string v3, "max_revenue_events"

    invoke-virtual {v2, v0, v3}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
