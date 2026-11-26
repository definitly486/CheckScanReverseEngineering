.class public final Lio/appmetrica/analytics/push/impl/Q0;
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
    .locals 8

    const-string p0, "io.appmetrica.analytics.push.extra.ACTION_INFO"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    invoke-static {p2}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const-string v1, "key_text_reply"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    iget-object v1, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Received inline input from action %s with text %s"

    invoke-virtual {p2, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-static {p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p2

    iget-object p2, p2, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/impl/v;->d()Lio/appmetrica/analytics/push/impl/T0;

    move-result-object p2

    iget-object v2, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    iget-object v3, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->actionId:Ljava/lang/String;

    iget-object v4, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->payload:Ljava/lang/String;

    iget-object v6, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->transport:Ljava/lang/String;

    iget-object v7, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->targetActionUri:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lio/appmetrica/analytics/push/impl/u;

    invoke-virtual/range {v1 .. v7}, Lio/appmetrica/analytics/push/impl/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action.ymp.INLINE_PUSH_RECEIVE"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "io.appmetrica.analytics.push.extra.INLINE_ACTION_REPLY"

    invoke-virtual {p0, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_2

    const/16 p2, 0x1c

    invoke-static {p2}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->channelId:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x108009b

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->hideAfterSeconds:J

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p2, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationTag:Ljava/lang/String;

    iget v0, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationId:I

    invoke-virtual {p0, p2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object p2, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationTag:Ljava/lang/String;

    iget v1, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->notificationId:I

    invoke-virtual {p0, p2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/push/intent/NotificationActionInfo;->pushId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/W1;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
