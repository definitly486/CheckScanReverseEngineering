.class public Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;
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
        "Landroidx/core/app/NotificationCompat$Action;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/push/model/PushMessage;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/PushNotification;->getAdditionalActions()[Lio/appmetrica/analytics/push/model/AdditionalAction;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1, v5}, Lio/appmetrica/analytics/push/internal/IntentHelper;->createNotificationActionInfo(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/model/AdditionalAction;)Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    move-result-object v6

    iget-object v7, p0, Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;->a:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lio/appmetrica/analytics/push/internal/IntentHelper;->getPendingIntentForAdditionalAction(Landroid/content/Context;Lio/appmetrica/analytics/push/model/AdditionalAction;Lio/appmetrica/analytics/push/intent/NotificationActionInfo;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getIconResId()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getIconResId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    new-instance v8, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9, v6}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getType()Lio/appmetrica/analytics/push/model/AdditionalActionType;

    move-result-object v6

    sget-object v7, Lio/appmetrica/analytics/push/model/AdditionalActionType;->INLINE:Lio/appmetrica/analytics/push/model/AdditionalActionType;

    if-ne v6, v7, :cond_3

    const/16 v6, 0x18

    invoke-static {v6}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Landroidx/core/app/RemoteInput$Builder;

    const-string v7, "key_text_reply"

    invoke-direct {v6, v7}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/appmetrica/analytics/push/model/AdditionalAction;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    :cond_3
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method
