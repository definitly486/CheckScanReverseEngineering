.class public abstract Lio/appmetrica/analytics/push/event/PushEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static additionalActionEvent(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withActionId(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p0

    return-object p0
.end method

.method public static dismissEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/DismissPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/DismissPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static expiredEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lio/appmetrica/analytics/push/event/PushEvent;
    .locals 3

    const-string v0, "io.appmetrica.analytics.push.extra.ACTION_INFO"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionType:Lio/appmetrica/analytics/push/intent/NotificationActionType;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lio/appmetrica/analytics/push/impl/S0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    :goto_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/push/event/PushEvent;->inlineAdditionalActionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->targetActionUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/push/event/PushEvent;->additionalActionEvent(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->targetActionUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/push/event/PushEvent;->openEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->targetActionUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/push/event/PushEvent;->dismissEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object p0

    return-object p0
.end method

.method public static ignoredEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withCategory(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withDetails(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p0

    return-object p0
.end method

.method public static inlineAdditionalActionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    invoke-direct {v0, p0, p2}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withActionId(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p0

    return-object p0
.end method

.method public static openEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/OpenPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/OpenPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static processSilentEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static receiveEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReceivePushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static removedEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static replaceEvent(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReplacePushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;->withNewPushId(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    move-result-object p0

    return-object p0
.end method

.method public static shownEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ShownPushEvent;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/event/ShownPushEvent;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/event/ShownPushEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
