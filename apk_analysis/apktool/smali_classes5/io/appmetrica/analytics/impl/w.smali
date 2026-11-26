.class public final Lio/appmetrica/analytics/impl/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/w;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w;->a:Landroid/content/Context;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p4;->u:Lio/appmetrica/analytics/impl/Z9;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/p4;->u:Lio/appmetrica/analytics/impl/Z9;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/Z9;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/p4;->u:Lio/appmetrica/analytics/impl/Z9;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    const-string p0, "io.appmetrica.analytics.plugin_supported_ad_revenue_sources"

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Z9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z9;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
