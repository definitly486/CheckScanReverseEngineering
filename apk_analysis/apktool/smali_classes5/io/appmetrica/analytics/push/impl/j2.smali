.class public final Lio/appmetrica/analytics/push/impl/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/d2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".action.ymp.SILENT_PUSH_RECEIVE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".extra.payload"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object p0

    iget-boolean p0, p0, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->trackingProcessedAction:Z

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lio/appmetrica/analytics/push/impl/X1;->onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
