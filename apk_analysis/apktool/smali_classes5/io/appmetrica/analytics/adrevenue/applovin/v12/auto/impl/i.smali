.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

    const-string v0, "enabled"

    sget-boolean v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/k;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;-><init>(Z)V

    sget-object p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper$Companion;->toWrapper$ad_revenue_applovin_v12_auto_release(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;

    move-result-object p0

    return-object p0
.end method
