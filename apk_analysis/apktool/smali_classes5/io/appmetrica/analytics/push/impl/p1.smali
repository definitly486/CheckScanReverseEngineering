.class public final Lio/appmetrica/analytics/push/impl/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationCustomizer;


# instance fields
.field public final synthetic a:Lbm3;

.field public final synthetic b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# direct methods
.method public constructor <init>(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/p1;->a:Lbm3;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/p1;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/p1;->a:Lbm3;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/p1;->b:Lio/appmetrica/analytics/push/notification/NotificationValueProvider;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/push/notification/NotificationValueProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
