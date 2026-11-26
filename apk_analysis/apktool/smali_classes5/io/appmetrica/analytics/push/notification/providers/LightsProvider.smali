.class public Lio/appmetrica/analytics/push/notification/providers/LightsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/LightsProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/push/model/PushMessage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushNotification;->getLedLights()Lio/appmetrica/analytics/push/model/LedLights;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/LedLights;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/LedLights;->getColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/LedLights;->getOnMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/LedLights;->getOffMs()Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
