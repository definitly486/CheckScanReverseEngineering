.class public abstract Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.super Lih5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;",
        ">",
        "Lih5<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final compositeDisposable:Lfu1;

.field private final coroutineContext:Lo22;

.field private final globalContext:Lo22;

.field private final globalScope:Ly22;

.field private final jobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private final presenterScope:Ly22;

.field private requestInProgress:Lcp2;

.field private final taggedDisposablesOnDestroy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcp2;",
            ">;"
        }
    .end annotation
.end field

.field private final taggedDisposablesOnTermination:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcp2;",
            ">;"
        }
    .end annotation
.end field

.field private final taggedJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private final terminationJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private final terminationTaggedJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lih5;-><init>()V

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->compositeDisposable:Lfu1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnDestroy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnTermination:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->jobs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedJobs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->terminationJobs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->terminationTaggedJobs:Ljava/util/HashMap;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    invoke-static {v0, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$b;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;)V

    invoke-interface {v0, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->coroutineContext:Lo22;

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->presenterScope:Ly22;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    invoke-static {v0, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->globalContext:Lo22;

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->globalScope:Ly22;

    return-void
.end method

.method public static synthetic a(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree$lambda$12(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree$lambda$9(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree$lambda$8(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lll3;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree$lambda$11(Lll3;)V

    return-void
.end method

.method public static synthetic disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: disposeOnDestroy"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic disposeOnTermination$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination(Lcp2;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: disposeOnTermination"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static final subscribeIfPayloadIsFree$lambda$11(Lll3;)V
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeIfPayloadIsFree$lambda$12(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeIfPayloadIsFree$lambda$8(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeIfPayloadIsFree$lambda$9(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final disposeOnDestroy(Lcp2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnDestroy:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcp2;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcp2;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnDestroy:Ljava/util/HashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->compositeDisposable:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final disposeOnTermination(Lcp2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnTermination:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcp2;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcp2;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnTermination:Ljava/util/HashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0

    :cond_2
    return-void
.end method

.method public getGlobalScope()Ly22;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->globalScope:Ly22;

    return-object p0
.end method

.method public getPresenterScope()Ly22;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->presenterScope:Ly22;

    return-object p0
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->requestInProgress:Lcp2;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final launchInGlobal(Lhd3;)Lmb4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;)",
            "Lmb4;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getGlobalScope()Ly22;

    move-result-object p0

    invoke-static {p1, p0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    move-result-object p0

    return-object p0
.end method

.method public final launchInPresenter(Lhd3;)Lmb4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;)",
            "Lmb4;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter$a;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Lde3;

    invoke-direct {v1, p1, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    invoke-static {v1, p0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->compositeDisposable:Lfu1;

    invoke-virtual {v0}, Lfu1;->dispose()V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedDisposablesOnDestroy:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp2;

    invoke-interface {v1}, Lcp2;->dispose()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->jobs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb4;

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->taggedJobs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->coroutineContext:Lo22;

    invoke-static {p0}, Lqb4;->d(Lo22;)V

    return-void
.end method

.method public final subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmz7<",
            "TT;>;",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)",
            "Lcp2;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->isRequestInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lyd0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lyd0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lzd0;

    invoke-direct {p2, p3, v1}, Lzd0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, p2}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->requestInProgress:Lcp2;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final subscribeIfPayloadIsFree(Lqp1;Lll3;Lnl3;)Lcp2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqp1;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)",
            "Lcp2;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->isRequestInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lae0;

    invoke-direct {v0, p2}, Lae0;-><init>(Lll3;)V

    new-instance p2, Lbe0;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1}, Lbe0;-><init>(Lnl3;I)V

    new-instance p3, Luy0;

    invoke-direct {p3, p2, v0}, Luy0;-><init>(Lqx1;Lh6;)V

    invoke-virtual {p1, p3}, Lqp1;->b(Lmq1;)V

    iput-object p3, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->requestInProgress:Lcp2;

    return-object p3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
