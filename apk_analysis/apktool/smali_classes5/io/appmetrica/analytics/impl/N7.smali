.class public final Lio/appmetrica/analytics/impl/N7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/clientcomponents/ClientComponentsInitializer;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v8, "io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint"

    const-string v9, "io.appmetrica.analytics.reporterextension.internal.ReporterExtensionClientModuleEntryPoint"

    const-string v0, "io.appmetrica.analytics.adrevenue.admob.v23.internal.AdMobClientModuleEntryPoint"

    const-string v1, "io.appmetrica.analytics.adrevenue.applovin.v12.internal.AppLovinClientModuleEntryPoint"

    const-string v2, "io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoClientModuleEntryPoint"

    const-string v3, "io.appmetrica.analytics.adrevenue.fyber.v3.internal.FyberClientModuleEntryPoint"

    const-string v4, "io.appmetrica.analytics.adrevenue.ironsource.v7.internal.IronSourceClientModuleEntryPoint"

    const-string v5, "io.appmetrica.analytics.adrevenue.ironsource.v9.internal.IronSourceV9ClientModuleEntryPoint"

    const-string v6, "io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherClientModuleEntryPoint"

    const-string v7, "io.appmetrica.analytics.apphud.internal.ApphudClientModuleEntryPoint"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/N7;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 4

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->a:Lio/appmetrica/analytics/impl/E6;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/E6;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->m:Lio/appmetrica/analytics/impl/ed;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/N7;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lio/appmetrica/analytics/impl/B5;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/B5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/appmetrica/analytics/impl/B5;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/impl/B5;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/impl/B5;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ed;->a:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method
