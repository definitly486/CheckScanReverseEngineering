.class public final synthetic Lio/appmetrica/analytics/push/impl/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationCustomizer;


# instance fields
.field public final synthetic a:Lfm3;

.field public final synthetic b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/push/impl/U;Lio/appmetrica/analytics/push/notification/providers/LightsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/b3;->a:Lfm3;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/b3;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/b3;->a:Lfm3;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/b3;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-static {v0, p0, p1, p2}, Lio/appmetrica/analytics/push/impl/t0;->a(Lfm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V

    return-void
.end method
