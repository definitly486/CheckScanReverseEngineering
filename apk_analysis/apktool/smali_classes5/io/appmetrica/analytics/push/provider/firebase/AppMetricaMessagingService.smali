.class public Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static isNotificationRelatedToSDK(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->fromMapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotificationRelatedToSDK(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    invoke-virtual {p0, p0, p1}, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;->processPush(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v1, "onNewToken: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v0

    const-string v1, "FirebaseInstanceIdService onNewToken"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    const-string v0, "firebase"

    invoke-static {p0, v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->sendTokenOnRefresh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string v0, "Token processing failed"

    invoke-virtual {p1, v0, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public processPush(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v0, "Receive\nfullData: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string v0, "FirebaseMessagingService receive push"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    const-string p0, "firebase"

    invoke-static {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->processPush(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Failed to process firebase push"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public processPush(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->fromMapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;->processPush(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 39
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Failed to process firebase push"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public processToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string v0, "FirebaseInstanceIdService processToken"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    const-string p0, "firebase"

    invoke-static {p1, p0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->sendTokenManually(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Token processing failed"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
