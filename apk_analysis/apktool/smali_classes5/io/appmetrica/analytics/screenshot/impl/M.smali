.class public final Lio/appmetrica/analytics/screenshot/impl/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/screenshot/impl/B;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/C;

.field public final c:Landroid/os/Handler;

.field public volatile d:Z

.field public volatile e:Lio/appmetrica/analytics/screenshot/impl/l;

.field public final f:Lio/appmetrica/analytics/screenshot/impl/J;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/M;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getClientExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/M;->c:Landroid/os/Handler;

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/J;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/screenshot/impl/J;-><init>(Lio/appmetrica/analytics/screenshot/impl/M;)V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/M;->f:Lio/appmetrica/analytics/screenshot/impl/J;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/screenshot/impl/M;)Lio/appmetrica/analytics/screenshot/impl/C;
    .locals 0

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    return-object p0
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/screenshot/impl/M;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/M;->d:Z

    return-void
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/screenshot/impl/M;)Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/screenshot/impl/M;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/screenshot/impl/M;)Lio/appmetrica/analytics/screenshot/impl/l;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->e:Lio/appmetrica/analytics/screenshot/impl/l;

    return-object p0
.end method

.method public static final synthetic e(Lio/appmetrica/analytics/screenshot/impl/M;)Lio/appmetrica/analytics/screenshot/impl/J;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->f:Lio/appmetrica/analytics/screenshot/impl/J;

    return-object p0
.end method

.method public static final synthetic f(Lio/appmetrica/analytics/screenshot/impl/M;)Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->d:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getActivityLifecycleRegistry()Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/L;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/screenshot/impl/L;-><init>(Lio/appmetrica/analytics/screenshot/impl/M;)V

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

    .line 25
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/M;->e:Lio/appmetrica/analytics/screenshot/impl/l;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "ServiceScreenshotCaptor"

    return-object p0
.end method
