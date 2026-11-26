.class public final Lio/appmetrica/analytics/push/impl/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/settings/PushFilter;


# instance fields
.field public final a:Landroid/app/NotificationManager;

.field public final b:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;Landroidx/core/app/NotificationManagerCompat;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/u1;->a:Landroid/app/NotificationManager;

    .line 21
    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/u1;->b:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/push/impl/u1;-><init>(Landroid/app/NotificationManager;Landroidx/core/app/NotificationManagerCompat;)V

    return-void
.end method


# virtual methods
.method public final filter(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;
    .locals 4

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/u1;->b:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    const-string v1, "Disabled system notification"

    if-nez v0, :cond_1

    const-string p0, "Disabled all notifications"

    invoke-static {v1, p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushNotification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    :cond_3
    const-string p1, "appmetrica_push"

    :cond_4
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/u1;->a:Landroid/app/NotificationManager;

    invoke-static {v2, p1}, Lio/appmetrica/analytics/push/impl/z;->b(Landroid/app/NotificationManager;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Disabled notifications for \"%s\" channel"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/u1;->a:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/push/impl/A;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/u1;->a:Landroid/app/NotificationManager;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/push/impl/z;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Disabled notifications for \"%s\" group"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0
.end method
