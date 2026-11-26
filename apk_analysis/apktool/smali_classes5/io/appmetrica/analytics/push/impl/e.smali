.class public final Lio/appmetrica/analytics/push/impl/e;
.super Lio/appmetrica/analytics/push/impl/C1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/C1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "io.appmetrica.analytics.push.extra.ACTION_INFO"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    if-eqz p2, :cond_6

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/v;->a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object v0

    iget-object v1, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->isTrackingAdditionalAction(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    iget-object v3, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    iget-object v4, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    iget-object v5, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    iget-object v6, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->targetActionUri:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lio/appmetrica/analytics/push/impl/X1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->doNothing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/C1;->a(Landroid/content/Context;Lio/appmetrica/analytics/push/intent/NotificationActionInfo;)V

    :cond_1
    const/16 p0, 0x1f

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->hideQuickControlPanel:Z

    if-eqz p0, :cond_3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    iget-boolean p0, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->dismissOnAdditionalAction:Z

    if-eqz p0, :cond_5

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_4

    iget-object v0, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationTag:Ljava/lang/String;

    iget v1, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationId:I

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    iget-object p1, p2, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/W1;->b(Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/push/impl/c;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/impl/c;-><init>(Lio/appmetrica/analytics/push/intent/NotificationActionInfo;)V

    const-string p2, "Clear notification by button"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_4
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/push/impl/d;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/impl/d;-><init>(Lio/appmetrica/analytics/push/intent/NotificationActionInfo;)V

    const-string p2, "No notificationManager to clear notification by button"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string p1, "No action info for AdditionalActionProcessingStrategy"

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    return-void
.end method
