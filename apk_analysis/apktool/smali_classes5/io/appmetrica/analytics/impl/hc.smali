.class public final Lio/appmetrica/analytics/impl/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ec;
.implements Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public c:Lio/appmetrica/analytics/impl/Yn;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hc;->a:Ljava/util/ArrayList;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/hc;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 38
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/hc;->d:Z

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p1}, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;->startLocationTracking()V

    return-void

    .line 40
    :cond_0
    invoke-interface {p1}, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;->stopLocationTracking()V

    :cond_1
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/hc;Z)V
    .locals 1

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/hc;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/hc;->d:Z

    if-eqz p1, :cond_0

    sget-object p1, Lio/appmetrica/analytics/impl/fc;->a:Lio/appmetrica/analytics/impl/fc;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/gc;->a:Lio/appmetrica/analytics/impl/gc;

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->a:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/coreapi/internal/control/Toggle;)V
    .locals 1

    .line 41
    new-instance v0, Lio/appmetrica/analytics/impl/Yn;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Yn;-><init>(Lio/appmetrica/analytics/coreapi/internal/control/Toggle;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/Yn;

    .line 42
    iget-object p1, v0, Lio/appmetrica/analytics/impl/Yn;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;->registerObserver(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;Z)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lzw9;

    invoke-direct {v1, p0, p1, p2}, Lzw9;-><init>(Lio/appmetrica/analytics/impl/hc;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/Yn;

    if-eqz p0, :cond_0

    .line 45
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yn;->b:Lio/appmetrica/analytics/impl/No;

    .line 46
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/No;->a(Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    const-string p0, "togglesHolder"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(Z)V
    .locals 0

    .line 48
    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/Yn;

    if-eqz p0, :cond_0

    .line 49
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yn;->a:Lio/appmetrica/analytics/impl/S3;

    .line 50
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/S3;->a(Z)V

    return-void

    .line 51
    :cond_0
    const-string p0, "togglesHolder"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/Yn;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yn;->b:Lio/appmetrica/analytics/impl/No;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/No;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "togglesHolder"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lyw9;

    invoke-direct {v1, p0, p1}, Lyw9;-><init>(Lio/appmetrica/analytics/impl/hc;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
