.class public final Lio/appmetrica/analytics/screenshot/impl/g;
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
.method public final a(Landroid/os/Bundle;)Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;
    .locals 8

    const-string p0, "enabled"

    sget-boolean v0, Lio/appmetrica/analytics/screenshot/impl/m;->a:Z

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/i;

    const-string v1, "api_captor_enabled"

    sget-boolean v2, Lio/appmetrica/analytics/screenshot/impl/m;->c:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/screenshot/impl/i;-><init>(Z)V

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/l;

    const-string v2, "service_captor_enabled"

    sget-boolean v3, Lio/appmetrica/analytics/screenshot/impl/m;->d:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "service_captor_delay_seconds"

    sget-wide v4, Lio/appmetrica/analytics/screenshot/impl/m;->e:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/screenshot/impl/l;-><init>(ZJ)V

    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/j;

    const-string v3, "content_observer_enabled"

    sget-boolean v4, Lio/appmetrica/analytics/screenshot/impl/m;->f:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "content_observer_media_store_column_names"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lio/appmetrica/analytics/screenshot/impl/m;->b:Ljava/util/List;

    :goto_0
    const-string v5, "content_observer_detect_window_seconds"

    sget-wide v6, Lio/appmetrica/analytics/screenshot/impl/m;->g:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lio/appmetrica/analytics/screenshot/impl/j;-><init>(ZLjava/util/List;J)V

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/k;

    invoke-direct {p1, p0, v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/k;-><init>(ZLio/appmetrica/analytics/screenshot/impl/i;Lio/appmetrica/analytics/screenshot/impl/l;Lio/appmetrica/analytics/screenshot/impl/j;)V

    sget-object p0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;->Companion:Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;->toWrapper$screenshot_release(Lio/appmetrica/analytics/screenshot/impl/k;)Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/g;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method
