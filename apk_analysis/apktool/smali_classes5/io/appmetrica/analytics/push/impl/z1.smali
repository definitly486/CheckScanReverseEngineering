.class public final Lio/appmetrica/analytics/push/impl/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/NotificationManager;

.field public final b:Landroidx/core/app/NotificationManagerCompat;

.field public final c:Lio/appmetrica/analytics/push/impl/y1;

.field public final d:Lio/appmetrica/analytics/push/impl/L1;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;Landroidx/core/app/NotificationManagerCompat;Lio/appmetrica/analytics/push/impl/L1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/z1;->a:Landroid/app/NotificationManager;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/z1;->b:Landroidx/core/app/NotificationManagerCompat;

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    const/16 p1, 0x1c

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lio/appmetrica/analytics/push/impl/x1;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/impl/x1;-><init>(Lio/appmetrica/analytics/push/impl/z1;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/z1;->c:Lio/appmetrica/analytics/push/impl/y1;

    return-void

    :cond_0
    const/16 p1, 0x1a

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lio/appmetrica/analytics/push/impl/w1;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/impl/w1;-><init>(Lio/appmetrica/analytics/push/impl/z1;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/z1;->c:Lio/appmetrica/analytics/push/impl/y1;

    return-void

    :cond_1
    new-instance p1, Lio/appmetrica/analytics/push/impl/y1;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/impl/y1;-><init>(Lio/appmetrica/analytics/push/impl/z1;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/z1;->c:Lio/appmetrica/analytics/push/impl/y1;

    return-void
.end method
