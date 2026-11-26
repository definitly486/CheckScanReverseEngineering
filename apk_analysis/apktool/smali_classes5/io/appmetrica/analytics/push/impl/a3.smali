.class public final synthetic Lio/appmetrica/analytics/push/impl/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationCustomizer;


# instance fields
.field public final synthetic a:Lbm3;

.field public final synthetic b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/push/impl/Z;Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/a3;->a:Lbm3;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/a3;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/a3;->a:Lbm3;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/a3;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-static {v0, p0, p1, p2}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V

    return-void
.end method
