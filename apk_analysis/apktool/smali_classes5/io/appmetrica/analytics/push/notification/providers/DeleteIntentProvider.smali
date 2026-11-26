.class public Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/v;->a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->trackingDismissAction:Z

    sget-object v1, Lio/appmetrica/analytics/push/intent/NotificationActionType;->CLEAR:Lio/appmetrica/analytics/push/intent/NotificationActionType;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lio/appmetrica/analytics/push/internal/IntentHelper;->createNotificationActionInfo(Lio/appmetrica/analytics/push/intent/NotificationActionType;Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;)Lio/appmetrica/analytics/push/intent/NotificationActionInfo;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;->a:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lio/appmetrica/analytics/push/internal/IntentHelper;->createWrappedAction(Landroid/content/Context;Lio/appmetrica/analytics/push/intent/NotificationActionInfo;Z)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
