.class public final Landroidx/paging/LivePagedList;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/paging/PagedList<",
        "TValue;>;>;"
    }
.end annotation


# instance fields
.field private final boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;"
        }
    .end annotation
.end field

.field private final callback:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Landroidx/paging/PagedList$Config;

.field private final coroutineScope:Ly22;

.field private currentData:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TValue;>;"
        }
    .end annotation
.end field

.field private currentJob:Lmb4;

.field private final fetchDispatcher:Lr22;

.field private final notifyDispatcher:Lr22;

.field private final pagingSourceFactory:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private final refreshRetryCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ly22;Ljava/lang/Object;Landroidx/paging/PagedList$Config;Landroidx/paging/PagedList$BoundaryCallback;Lll3;Lr22;Lr22;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "TKey;",
            "Landroidx/paging/PagedList$Config;",
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;",
            "Lr22;",
            "Lr22;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/InitialPagedList;

    move-object v1, p1

    move-object v5, p2

    move-object v4, p3

    move-object v2, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Landroidx/paging/InitialPagedList;-><init>(Ly22;Lr22;Lr22;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/paging/LivePagedList;->coroutineScope:Ly22;

    iput-object v4, p0, Landroidx/paging/LivePagedList;->config:Landroidx/paging/PagedList$Config;

    iput-object p4, p0, Landroidx/paging/LivePagedList;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    iput-object p5, p0, Landroidx/paging/LivePagedList;->pagingSourceFactory:Lll3;

    iput-object v2, p0, Landroidx/paging/LivePagedList;->notifyDispatcher:Lr22;

    iput-object v3, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lr22;

    new-instance p1, Lzg0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lzg0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/paging/LivePagedList;->callback:Lll3;

    new-instance p1, Lcs4;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcs4;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/paging/LivePagedList;->refreshRetryCallback:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/paging/PagedList;

    iput-object p2, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    invoke-virtual {p2, p1}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Landroidx/paging/LivePagedList;)V
    .locals 0

    invoke-static {p0}, Landroidx/paging/LivePagedList;->refreshRetryCallback$lambda$0(Landroidx/paging/LivePagedList;)V

    return-void
.end method

.method public static final synthetic access$getBoundaryCallback$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$BoundaryCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Landroidx/paging/LivePagedList;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->callback:Lll3;

    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$Config;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->config:Landroidx/paging/PagedList$Config;

    return-object p0
.end method

.method public static final synthetic access$getCoroutineScope$p(Landroidx/paging/LivePagedList;)Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->coroutineScope:Ly22;

    return-object p0
.end method

.method public static final synthetic access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    return-object p0
.end method

.method public static final synthetic access$getFetchDispatcher$p(Landroidx/paging/LivePagedList;)Lr22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lr22;

    return-object p0
.end method

.method public static final synthetic access$getNotifyDispatcher$p(Landroidx/paging/LivePagedList;)Lr22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->notifyDispatcher:Lr22;

    return-object p0
.end method

.method public static final synthetic access$getPagingSourceFactory$p(Landroidx/paging/LivePagedList;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LivePagedList;->pagingSourceFactory:Lll3;

    return-object p0
.end method

.method public static final synthetic access$onItemUpdate(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/LivePagedList;->onItemUpdate(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V

    return-void
.end method

.method public static final synthetic access$postValue(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setCurrentData$p(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    return-void
.end method

.method public static synthetic b(Landroidx/paging/LivePagedList;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/paging/LivePagedList;->callback$lambda$0(Landroidx/paging/LivePagedList;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final callback$lambda$0(Landroidx/paging/LivePagedList;)Lj59;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/paging/LivePagedList;->invalidate(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final invalidate(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/paging/LivePagedList;->currentJob:Lmb4;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p0, Landroidx/paging/LivePagedList;->coroutineScope:Ly22;

    iget-object v1, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lr22;

    new-instance v2, Landroidx/paging/LivePagedList$invalidate$1;

    invoke-direct {v2, p0, p1}, Landroidx/paging/LivePagedList$invalidate$1;-><init>(Landroidx/paging/LivePagedList;Le02;)V

    const/4 v3, 0x2

    invoke-static {v0, v1, p1, v2, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/LivePagedList;->currentJob:Lmb4;

    return-void
.end method

.method private final onItemUpdate(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TValue;>;",
            "Landroidx/paging/PagedList<",
            "TValue;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/paging/LivePagedList;->refreshRetryCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final refreshRetryCallback$lambda$0(Landroidx/paging/LivePagedList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/paging/LivePagedList;->invalidate(Z)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/LivePagedList;->invalidate(Z)V

    return-void
.end method
