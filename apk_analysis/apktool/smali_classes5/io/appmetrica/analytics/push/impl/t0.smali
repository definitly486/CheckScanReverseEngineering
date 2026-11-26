.class public final Lio/appmetrica/analytics/push/impl/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/t0;->a:Ljava/util/LinkedHashMap;

    sget-object v0, Lio/appmetrica/analytics/push/impl/Z;->a:Lio/appmetrica/analytics/push/impl/Z;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lio/appmetrica/analytics/push/impl/Z;Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/k0;->a:Lio/appmetrica/analytics/push/impl/k0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/AutoCancelProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/AutoCancelProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/m0;->a:Lio/appmetrica/analytics/push/impl/m0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/CategoryProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/CategoryProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/n0;->a:Lio/appmetrica/analytics/push/impl/n0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/ChannelIdProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/o0;->a:Lio/appmetrica/analytics/push/impl/o0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ColorProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/ColorProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/p0;->a:Lio/appmetrica/analytics/push/impl/p0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ContentInfoProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/ContentInfoProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/q0;->a:Lio/appmetrica/analytics/push/impl/q0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ContentIntentProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/ContentIntentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/r0;->a:Lio/appmetrica/analytics/push/impl/r0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ContentTextProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/ContentTextProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/s0;->a:Lio/appmetrica/analytics/push/impl/s0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ContentTitleProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/ContentTitleProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/O;->a:Lio/appmetrica/analytics/push/impl/O;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/DefaultsProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/DefaultsProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/P;->a:Lio/appmetrica/analytics/push/impl/P;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/DeleteIntentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/Q;->a:Lio/appmetrica/analytics/push/impl/Q;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/GroupProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/GroupProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/S;->a:Lio/appmetrica/analytics/push/impl/S;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/GroupSummaryProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/GroupSummaryProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/T;->a:Lio/appmetrica/analytics/push/impl/T;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/LargeIconProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/LargeIconProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/U;->a:Lio/appmetrica/analytics/push/impl/U;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/LightsProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/LightsProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lio/appmetrica/analytics/push/impl/U;Lio/appmetrica/analytics/push/notification/providers/LightsProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/V;->a:Lio/appmetrica/analytics/push/impl/V;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/NumberProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/NumberProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/W;->a:Lio/appmetrica/analytics/push/impl/W;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/OngoingProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/OngoingProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/X;->a:Lio/appmetrica/analytics/push/impl/X;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/OnlyAlertOnceProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/OnlyAlertOnceProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/Y;->a:Lio/appmetrica/analytics/push/impl/Y;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/PriorityProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/PriorityProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/a0;->a:Lio/appmetrica/analytics/push/impl/a0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/ShowWhenProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/ShowWhenProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/b0;->a:Lio/appmetrica/analytics/push/impl/b0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/SmallIconProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/SmallIconProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/c0;->a:Lio/appmetrica/analytics/push/impl/c0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/SortKeyProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/SortKeyProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/d0;->a:Lio/appmetrica/analytics/push/impl/d0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/SoundProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/SoundProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/e0;->a:Lio/appmetrica/analytics/push/impl/e0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/StyleProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/StyleProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/f0;->a:Lio/appmetrica/analytics/push/impl/f0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/SubTextProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/SubTextProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/g0;->a:Lio/appmetrica/analytics/push/impl/g0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/TickerProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/notification/providers/TickerProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object v0, Lio/appmetrica/analytics/push/impl/h0;->a:Lio/appmetrica/analytics/push/impl/h0;

    new-instance v1, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object p1, Lio/appmetrica/analytics/push/impl/i0;->a:Lio/appmetrica/analytics/push/impl/i0;

    new-instance v0, Lio/appmetrica/analytics/push/notification/providers/VibrateProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/notification/providers/VibrateProvider;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object p1, Lio/appmetrica/analytics/push/impl/j0;->a:Lio/appmetrica/analytics/push/impl/j0;

    new-instance v0, Lio/appmetrica/analytics/push/notification/providers/VisibilityProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/notification/providers/VisibilityProvider;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    sget-object p1, Lio/appmetrica/analytics/push/impl/l0;->a:Lio/appmetrica/analytics/push/impl/l0;

    new-instance v0, Lio/appmetrica/analytics/push/notification/providers/WhenProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/notification/providers/WhenProvider;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/t0;->a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    return-void
.end method

.method public static final a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 0

    .line 30
    invoke-interface {p1, p3}, Lio/appmetrica/analytics/push/notification/NotificationValueProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 32
    invoke-interface {p0, p2, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final a(Lfm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 2

    invoke-interface {p1, p3}, Lio/appmetrica/analytics/push/notification/NotificationValueProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p3, v0, p1}, Lfm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public static final b(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 0

    invoke-interface {p1, p3}, Lio/appmetrica/analytics/push/notification/NotificationValueProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p2, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V
    .locals 1

    .line 33
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/t0;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Lio/appmetrica/analytics/push/impl/c3;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/push/impl/c3;-><init>(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/push/impl/U;Lio/appmetrica/analytics/push/notification/providers/LightsProvider;)V
    .locals 1

    .line 34
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/t0;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Lio/appmetrica/analytics/push/impl/b3;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/push/impl/b3;-><init>(Lio/appmetrica/analytics/push/impl/U;Lio/appmetrica/analytics/push/notification/providers/LightsProvider;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/push/impl/Z;Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;)V
    .locals 1

    .line 35
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/t0;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Lio/appmetrica/analytics/push/impl/a3;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/push/impl/a3;-><init>(Lio/appmetrica/analytics/push/impl/Z;Lio/appmetrica/analytics/push/notification/providers/AdditionalActionsProvider;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
