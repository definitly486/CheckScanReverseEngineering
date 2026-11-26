.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/AdRevenueCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->access$getClientConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    sget-boolean v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/k;->a:Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->access$getLibraryAvailable$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public getSourceIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "applovin"

    return-object p0
.end method
