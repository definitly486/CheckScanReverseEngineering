.class public final Lio/appmetrica/analytics/push/impl/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationCustomizer;


# instance fields
.field public final synthetic a:Ldm3;

.field public final synthetic b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# direct methods
.method public constructor <init>(Ldm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/n1;->a:Ldm3;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/n1;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/n1;->a:Ldm3;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/n1;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/push/notification/NotificationValueProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
