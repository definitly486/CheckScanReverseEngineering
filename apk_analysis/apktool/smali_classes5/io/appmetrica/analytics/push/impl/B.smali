.class public final Lio/appmetrica/analytics/push/impl/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/k1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "io.appmetrica.analytics.push.extra.ACTION_INFO"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p2

    iget-object p2, p2, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/impl/v;->a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object p2

    iget-boolean p2, p2, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->trackingDismissAction:Z

    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lio/appmetrica/analytics/push/impl/X1;->onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/push/impl/W1;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
