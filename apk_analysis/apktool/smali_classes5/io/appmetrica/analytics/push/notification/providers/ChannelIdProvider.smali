.class public Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushNotification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->b()Lio/appmetrica/analytics/push/impl/l1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x1a

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/appmetrica/analytics/push/impl/l1;->a:Landroid/app/NotificationManager;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/l1;->b:Landroid/app/NotificationChannel;

    invoke-static {p1, p0}, Lio/appmetrica/analytics/push/impl/z;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    const-string p0, "appmetrica_push"

    return-object p0

    :cond_2
    return-object p1
.end method
