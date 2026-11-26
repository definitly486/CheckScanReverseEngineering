.class public Lio/appmetrica/analytics/push/notification/providers/SortKeyProvider;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/SortKeyProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushNotification;->getSortKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
