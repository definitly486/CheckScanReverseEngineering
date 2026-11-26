.class public final Lio/appmetrica/analytics/push/impl/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/T0;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/event/PushEventListener;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/event/PushEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->openEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/OpenPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationOpened(Lio/appmetrica/analytics/push/event/OpenPushEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    .line 24
    invoke-static {p1, p2}, Lio/appmetrica/analytics/push/event/PushEvent;->additionalActionEvent(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p5}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationAdditionalAction(Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    .line 30
    invoke-static {p1, p2, p4}, Lio/appmetrica/analytics/push/event/PushEvent;->inlineAdditionalActionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p5}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p6}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withTargetActionUri(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationInlineAdditionalAction(Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;)V

    return-void
.end method

.method public final onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->receiveEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onPushReceived(Lio/appmetrica/analytics/push/event/ReceivePushEvent;)V

    return-void
.end method

.method public final onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->dismissEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/DismissPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationDismissed(Lio/appmetrica/analytics/push/event/DismissPushEvent;)V

    return-void
.end method

.method public final onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->expiredEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->withCategory(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationExpired(Lio/appmetrica/analytics/push/event/ExpiredPushEvent;)V

    return-void
.end method

.method public final onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lio/appmetrica/analytics/push/event/PushEvent;->ignoredEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p5}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withCategory(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->withDetails(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationIgnored(Lio/appmetrica/analytics/push/event/IgnoredPushEvent;)V

    return-void
.end method

.method public final onNotificationReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1, p2}, Lio/appmetrica/analytics/push/event/PushEvent;->replaceEvent(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationReplace(Lio/appmetrica/analytics/push/event/ReplacePushEvent;)V

    return-void
.end method

.method public final onNotificationShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->shownEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ShownPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/ShownPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ShownPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/ShownPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ShownPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationShown(Lio/appmetrica/analytics/push/event/ShownPushEvent;)V

    return-void
.end method

.method public final onPushTokenInited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPushTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->removedEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    move-result-object p1

    invoke-virtual {p1, p5}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->withCategory(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->withDetails(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onNotificationRemoved(Lio/appmetrica/analytics/push/event/RemovedPushEvent;)V

    return-void
.end method

.method public final onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/O1;->a:Lio/appmetrica/analytics/push/event/PushEventListener;

    invoke-static {p1}, Lio/appmetrica/analytics/push/event/PushEvent;->processSilentEvent(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/event/PushEventListener;->onSilentPushProcessed(Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;)V

    return-void
.end method
