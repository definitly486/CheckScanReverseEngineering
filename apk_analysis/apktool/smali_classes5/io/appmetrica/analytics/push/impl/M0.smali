.class public final Lio/appmetrica/analytics/push/impl/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/d2;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/r1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/M0;->a:Lio/appmetrica/analytics/push/impl/r1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/M0;->a:Lio/appmetrica/analytics/push/impl/r1;

    sget-object v0, Lio/appmetrica/analytics/push/impl/Z1;->b:Lio/appmetrica/analytics/push/settings/PushNotificationFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lio/appmetrica/analytics/push/impl/r1;->a(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/PushNotificationFactory;Lio/appmetrica/analytics/push/model/PushMessage;)V

    return-void
.end method
