.class public final Lio/appmetrica/analytics/adrevenue/other/impl/d;
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
.method public final a(Landroid/os/Bundle;)Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;
    .locals 3

    new-instance p0, Lio/appmetrica/analytics/adrevenue/other/impl/e;

    const-string v0, "enabled"

    sget-boolean v1, Lio/appmetrica/analytics/adrevenue/other/impl/f;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "include_source"

    sget-boolean v2, Lio/appmetrica/analytics/adrevenue/other/impl/f;->b:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/e;-><init>(ZZ)V

    sget-object p1, Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper$Companion;->toWrapper$ad_revenue_other_release(Lio/appmetrica/analytics/adrevenue/other/impl/e;)Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/d;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method
