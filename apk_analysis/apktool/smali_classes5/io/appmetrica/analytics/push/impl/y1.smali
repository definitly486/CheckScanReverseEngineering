.class public Lio/appmetrica/analytics/push/impl/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/impl/z1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/z1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/appmetrica/analytics/push/impl/s1;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/z1;->b:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    const-string v2, "app_notification_status"

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {p0, v2, v0}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/push/impl/L1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Lio/appmetrica/analytics/push/impl/s1;

    invoke-direct {v1, v0, p0}, Lio/appmetrica/analytics/push/impl/s1;-><init>(ZZ)V

    return-object v1
.end method
