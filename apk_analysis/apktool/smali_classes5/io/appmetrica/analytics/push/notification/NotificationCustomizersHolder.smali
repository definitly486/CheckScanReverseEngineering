.class public Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Lio/appmetrica/analytics/push/notification/ExtraBundleProvider;

.field private c:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

.field private d:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAfterCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->d:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    return-object p0
.end method

.method public getBeforeCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->c:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    return-object p0
.end method

.method public final getCustomizers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcm3;",
            "Lio/appmetrica/analytics/push/notification/NotificationCustomizer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getExtraBundleProvider()Lio/appmetrica/analytics/push/notification/ExtraBundleProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->b:Lio/appmetrica/analytics/push/notification/ExtraBundleProvider;

    return-object p0
.end method

.method public useAfterCustomizer(Lio/appmetrica/analytics/push/notification/NotificationCustomizer;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->d:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    return-object p0
.end method

.method public useBeforeCustomizer(Lio/appmetrica/analytics/push/notification/NotificationCustomizer;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->c:Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    return-object p0
.end method

.method public final useExtraBundleProvider(Lio/appmetrica/analytics/push/notification/ExtraBundleProvider;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->b:Lio/appmetrica/analytics/push/notification/ExtraBundleProvider;

    return-object p0
.end method

.method public final useListProviderFor(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "TT;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;",
            "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    new-instance v1, Lio/appmetrica/analytics/push/impl/p1;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/push/impl/p1;-><init>(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final useProviderFor(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "TT;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;",
            "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
            "TT;>;)",
            "Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    new-instance v1, Lio/appmetrica/analytics/push/impl/m1;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/push/impl/m1;-><init>(Lbm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final useProviderFor(Ldm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldm3<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "TT;TT;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;",
            "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    new-instance v1, Lio/appmetrica/analytics/push/impl/n1;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/push/impl/n1;-><init>(Ldm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final useProviderFor(Lfm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lfm3<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "TT;TT;TT;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;",
            "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->a:Ljava/util/HashMap;

    new-instance v1, Lio/appmetrica/analytics/push/impl/o1;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/push/impl/o1;-><init>(Lfm3;Lio/appmetrica/analytics/push/notification/NotificationValueProvider;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
