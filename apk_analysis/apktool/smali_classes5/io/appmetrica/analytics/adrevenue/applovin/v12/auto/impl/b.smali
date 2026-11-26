.class public final synthetic Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/b;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;)V
    .locals 7

    const-string v5, "onIlrdReceived(Ljava/lang/String;Landroid/os/Bundle;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

    const-string v4, "onIlrdReceived"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->c:Lfr;

    invoke-virtual {v0, p1}, Lfr;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->c:Lfr;

    invoke-virtual {v0}, Ld1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->c:Lfr;

    invoke-virtual {v0}, Lfr;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->c:Lfr;

    invoke-virtual {v0, p1}, Lfr;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_1
    monitor-exit p0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;->reportAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_3
    monitor-exit p0

    throw p1
.end method
