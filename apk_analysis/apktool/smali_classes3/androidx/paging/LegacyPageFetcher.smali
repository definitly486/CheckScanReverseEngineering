.class public final Landroidx/paging/LegacyPageFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/LegacyPageFetcher$KeyProvider;,
        Landroidx/paging/LegacyPageFetcher$PageConsumer;,
        Landroidx/paging/LegacyPageFetcher$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final config:Landroidx/paging/PagedList$Config;

.field private final detached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fetchDispatcher:Lr22;

.field private final keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LegacyPageFetcher$KeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

.field private final notifyDispatcher:Lr22;

.field private final pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final pagedListScope:Ly22;

.field private final source:Landroidx/paging/PagingSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly22;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource;Lr22;Lr22;Landroidx/paging/LegacyPageFetcher$PageConsumer;Landroidx/paging/LegacyPageFetcher$KeyProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Landroidx/paging/PagedList$Config;",
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;",
            "Lr22;",
            "Lr22;",
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;",
            "Landroidx/paging/LegacyPageFetcher$KeyProvider<",
            "TK;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->pagedListScope:Ly22;

    iput-object p2, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    iput-object p3, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    iput-object p4, p0, Landroidx/paging/LegacyPageFetcher;->notifyDispatcher:Lr22;

    iput-object p5, p0, Landroidx/paging/LegacyPageFetcher;->fetchDispatcher:Lr22;

    iput-object p6, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    iput-object p7, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/paging/LegacyPageFetcher$loadStateManager$1;

    invoke-direct {p1, p0}, Landroidx/paging/LegacyPageFetcher$loadStateManager$1;-><init>(Landroidx/paging/LegacyPageFetcher;)V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-void
.end method

.method public static final synthetic access$getNotifyDispatcher$p(Landroidx/paging/LegacyPageFetcher;)Lr22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->notifyDispatcher:Lr22;

    return-object p0
.end method

.method public static final synthetic access$onLoadError(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/LoadType;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/LegacyPageFetcher;->onLoadError(Landroidx/paging/LoadType;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onLoadInvalid(Landroidx/paging/LegacyPageFetcher;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->onLoadInvalid()V

    return-void
.end method

.method public static final synthetic access$onLoadSuccess(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void
.end method

.method public static synthetic getLoadStateManager$annotations()V
    .locals 0

    return-void
.end method

.method private final onLoadError(Landroidx/paging/LoadType;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/paging/LoadState$Error;

    invoke-direct {v0, p2}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {p0, p1, v0}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    return-void
.end method

.method private final onLoadInvalid()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    invoke-virtual {v0}, Landroidx/paging/PagingSource;->invalidate()V

    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->detach()V

    return-void
.end method

.method private final onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    invoke-interface {v0, p1, p2}, Landroidx/paging/LegacyPageFetcher$PageConsumer;->onPageResult(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, Landroidx/paging/LegacyPageFetcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    return-void

    :cond_1
    const-string p0, "Can only fetch more during append/prepend"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    return-void

    :cond_3
    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {p2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p2}, Landroidx/paging/LoadState$NotLoading$Companion;->getComplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget-object p2, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p2}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    return-void
.end method

.method private final scheduleAppend()V
    .locals 5

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    invoke-interface {v0}, Landroidx/paging/LegacyPageFetcher$KeyProvider;->getNextKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/PagingSource$LoadResult$Page;->Companion:Landroidx/paging/PagingSource$LoadResult$Page$Companion;

    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadResult$Page$Companion;->empty$paging_common()Landroidx/paging/PagingSource$LoadResult$Page;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v3, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    new-instance v1, Landroidx/paging/PagingSource$LoadParams$Append;

    iget-object v3, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    iget v4, v3, Landroidx/paging/PagedList$Config;->pageSize:I

    iget-boolean v3, v3, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    invoke-direct {v1, v0, v4, v3}, Landroidx/paging/PagingSource$LoadParams$Append;-><init>(Ljava/lang/Object;IZ)V

    invoke-direct {p0, v2, v1}, Landroidx/paging/LegacyPageFetcher;->scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V

    return-void
.end method

.method private final scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingSource$LoadParams<",
            "TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->pagedListScope:Ly22;

    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->fetchDispatcher:Lr22;

    new-instance v2, Landroidx/paging/LegacyPageFetcher$scheduleLoad$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p1, v3}, Landroidx/paging/LegacyPageFetcher$scheduleLoad$1;-><init>(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/PagingSource$LoadParams;Landroidx/paging/LoadType;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final schedulePrepend()V
    .locals 5

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    invoke-interface {v0}, Landroidx/paging/LegacyPageFetcher$KeyProvider;->getPrevKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/PagingSource$LoadResult$Page;->Companion:Landroidx/paging/PagingSource$LoadResult$Page$Companion;

    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadResult$Page$Companion;->empty$paging_common()Landroidx/paging/PagingSource$LoadResult$Page;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    sget-object v3, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    new-instance v1, Landroidx/paging/PagingSource$LoadParams$Prepend;

    iget-object v3, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    iget v4, v3, Landroidx/paging/PagedList$Config;->pageSize:I

    iget-boolean v3, v3, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    invoke-direct {v1, v0, v4, v3}, Landroidx/paging/PagingSource$LoadParams$Prepend;-><init>(Ljava/lang/Object;IZ)V

    invoke-direct {p0, v2, v1}, Landroidx/paging/LegacyPageFetcher;->scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getConfig()Landroidx/paging/PagedList$Config;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    return-object p0
.end method

.method public final getLoadStateManager()Landroidx/paging/PagedList$LoadStateManager;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-object p0
.end method

.method public final getPageConsumer()Landroidx/paging/LegacyPageFetcher$PageConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    return-object p0
.end method

.method public final getSource()Landroidx/paging/PagingSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    return-object p0
.end method

.method public final isDetached()Z
    .locals 0

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final retry()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getStartState()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    :cond_0
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getEndState()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    :cond_1
    return-void
.end method

.method public final setLoadStateManager(Landroidx/paging/PagedList$LoadStateManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-void
.end method

.method public final tryScheduleAppend()V
    .locals 2

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getEndState()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v1, v0, Landroidx/paging/LoadState$NotLoading;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    :cond_0
    return-void
.end method

.method public final trySchedulePrepend()V
    .locals 2

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getStartState()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v1, v0, Landroidx/paging/LoadState$NotLoading;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    :cond_0
    return-void
.end method
