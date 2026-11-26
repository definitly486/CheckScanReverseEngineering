.class public final Lio/appmetrica/analytics/push/impl/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/T0;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/settings/PushMessageTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onPushOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationAdditionalAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface/range {p0 .. p5}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationInlineAdditionalAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface/range {p0 .. p5}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotificationReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotificationShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onNotificationShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPushTokenInited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onPushTokenInited(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPushTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onPushTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface/range {p0 .. p5}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y1;->a:Lio/appmetrica/analytics/push/settings/PushMessageTracker;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/settings/PushMessageTracker;->onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
