.class public final Lio/appmetrica/analytics/impl/oi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/bb;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C0;

.field public final b:Lio/appmetrica/analytics/impl/Hh;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:Landroid/content/Context;

.field public final e:Lio/appmetrica/analytics/ReporterConfig;

.field public final f:Lio/appmetrica/analytics/impl/yi;

.field public final g:Lio/appmetrica/analytics/impl/cf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hh;Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/yi;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 7

    .line 33
    new-instance v6, Lio/appmetrica/analytics/impl/cf;

    new-instance v0, Lio/appmetrica/analytics/impl/Xh;

    invoke-direct {v0, p3, p1, p5}, Lio/appmetrica/analytics/impl/Xh;-><init>(Lio/appmetrica/analytics/impl/C0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/cf;-><init>(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/oi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hh;Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/yi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/cf;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hh;Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/yi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/cf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/oi;->d:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/oi;->a:Lio/appmetrica/analytics/impl/C0;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/oi;->e:Lio/appmetrica/analytics/ReporterConfig;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/oi;->g:Lio/appmetrica/analytics/impl/cf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/C0;)V
    .locals 6

    .line 30
    new-instance v2, Lio/appmetrica/analytics/impl/Hh;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Hh;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/yi;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/yi;-><init>()V

    .line 31
    invoke-static {p2}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/oi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Hh;Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/yi;Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/C0;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/C0;-><init>()V

    .line 35
    invoke-direct {p0, p1, p3, p2}, Lio/appmetrica/analytics/impl/oi;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/C0;)V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/C0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {p1}, Lio/appmetrica/analytics/impl/B0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    .line 26
    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Qa;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/bi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/bi;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Y;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/ii;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/impl/Y;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/co;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->d:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/gi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/gi;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/impl/co;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ai;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/ai;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/li;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/li;-><init>(Lio/appmetrica/analytics/impl/oi;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->g:Lio/appmetrica/analytics/impl/cf;

    return-object p0
.end method

.method public final pauseSession()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Sh;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Sh;-><init>(Lio/appmetrica/analytics/impl/oi;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ki;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/ki;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->h:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Wh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Wh;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/AdRevenue;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 2

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    .line 24
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->h:Lio/appmetrica/analytics/impl/Sn;

    .line 25
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 26
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ei;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/ei;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->j:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/hi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/hi;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->i:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Yh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Yh;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/oi;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    .line 35
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->c:Lio/appmetrica/analytics/impl/Sn;

    .line 36
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 37
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ph;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Ph;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->b:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    new-instance p2, Lio/appmetrica/analytics/impl/c2;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/c2;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Oh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Oh;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ci;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/ci;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/fi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/fi;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    .line 33
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->a:Lio/appmetrica/analytics/impl/Sn;

    .line 34
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 35
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/mi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/mi;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    .line 28
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->a:Lio/appmetrica/analytics/impl/Sn;

    .line 29
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    .line 30
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ni;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/ni;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->a:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Nh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Nh;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->g:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Vh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Vh;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/Revenue;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->e:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Qh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Qh;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Hh;->f:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Uh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Uh;-><init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/profile/UserProfile;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resumeSession()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Rh;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Rh;-><init>(Lio/appmetrica/analytics/impl/oi;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/ji;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/ji;-><init>(Lio/appmetrica/analytics/impl/oi;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Zh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Zh;-><init>(Lio/appmetrica/analytics/impl/oi;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/di;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/di;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Hh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->f:Lio/appmetrica/analytics/impl/yi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Th;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Th;-><init>(Lio/appmetrica/analytics/impl/oi;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
