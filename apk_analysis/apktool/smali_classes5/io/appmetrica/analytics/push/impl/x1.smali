.class public final Lio/appmetrica/analytics/push/impl/x1;
.super Lio/appmetrica/analytics/push/impl/w1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/z1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/impl/w1;-><init>(Lio/appmetrica/analytics/push/impl/z1;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/NotificationChannelGroup;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
