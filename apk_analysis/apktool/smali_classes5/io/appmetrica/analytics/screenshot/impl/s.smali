.class public final Lio/appmetrica/analytics/screenshot/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/screenshot/impl/B;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/C;

.field public volatile c:Lio/appmetrica/analytics/screenshot/impl/j;

.field public final d:Lio/appmetrica/analytics/screenshot/impl/G;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/s;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    new-instance p2, Lio/appmetrica/analytics/screenshot/impl/G;

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/p;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/screenshot/impl/p;-><init>(Lio/appmetrica/analytics/screenshot/impl/s;)V

    invoke-direct {p2, p1, v0}, Lio/appmetrica/analytics/screenshot/impl/G;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/p;)V

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/s;->d:Lio/appmetrica/analytics/screenshot/impl/G;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/screenshot/impl/s;)Lio/appmetrica/analytics/screenshot/impl/C;
    .locals 0

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/screenshot/impl/s;)Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/screenshot/impl/s;)Lio/appmetrica/analytics/screenshot/impl/j;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/screenshot/impl/s;)Lio/appmetrica/analytics/screenshot/impl/G;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->d:Lio/appmetrica/analytics/screenshot/impl/G;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getActivityLifecycleRegistry()Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/r;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/screenshot/impl/r;-><init>(Lio/appmetrica/analytics/screenshot/impl/s;)V

    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {p0, v2}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/k;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/s;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    .line 26
    iget-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/s;->d:Lio/appmetrica/analytics/screenshot/impl/G;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    .line 27
    iput-object p0, p1, Lio/appmetrica/analytics/screenshot/impl/G;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "ContentObserverScreenshotCaptor"

    return-object p0
.end method
