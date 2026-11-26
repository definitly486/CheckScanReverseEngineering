.class public final Lio/appmetrica/analytics/impl/Q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v5, "io.appmetrica.analytics.billing.internal.BillingServiceModuleEntryPoint"

    const-string v6, "io.appmetrica.analytics.idsync.internal.IdSyncModuleEntryPoint"

    const-string v0, "io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint"

    const-string v1, "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint"

    const-string v2, "io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint"

    const-string v3, "io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoServiceModuleEntryPoint"

    const-string v4, "io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Q7;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fa;->s:Lio/appmetrica/analytics/impl/ed;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q7;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/B5;

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/B5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/appmetrica/analytics/impl/B5;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/impl/B5;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/impl/B5;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/ed;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
