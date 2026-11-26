.class public final Landroidx/paging/PageFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageFetcher$GenerationInfo;,
        Landroidx/paging/PageFetcher$LoadRequest;,
        Landroidx/paging/PageFetcher$PagerHintReceiver;,
        Landroidx/paging/PageFetcher$PagerUiReceiver;,
        Landroidx/paging/PageFetcher$RefreshType;,
        Landroidx/paging/PageFetcher$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final config:Landroidx/paging/PagingConfig;

.field private final flow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field private final initialKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field private final loadRequests:Landroidx/paging/ConflatedEventBus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ConflatedEventBus<",
            "Landroidx/paging/PageFetcher$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final pagingSourceFactory:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final retryEvents:Landroidx/paging/ConflatedEventBus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ConflatedEventBus<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;+",
            "Ljava/lang/Object;",
            ">;TKey;",
            "Landroidx/paging/PagingConfig;",
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcher;->pagingSourceFactory:Lnl3;

    iput-object p2, p0, Landroidx/paging/PageFetcher;->initialKey:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    new-instance p1, Landroidx/paging/ConflatedEventBus;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Landroidx/paging/ConflatedEventBus;-><init>(Ljava/lang/Object;ILjh2;)V

    iput-object p1, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    new-instance p1, Landroidx/paging/ConflatedEventBus;

    invoke-direct {p1, p2, p3, p2}, Landroidx/paging/ConflatedEventBus;-><init>(Ljava/lang/Object;ILjh2;)V

    iput-object p1, p0, Landroidx/paging/PageFetcher;->retryEvents:Landroidx/paging/ConflatedEventBus;

    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    invoke-direct {p1, p4, p0, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(Landroidx/paging/RemoteMediator;Landroidx/paging/PageFetcher;Le02;)V

    invoke-static {p1}, Landroidx/paging/SimpleChannelFlowKt;->simpleChannelFlow(Lbm3;)Lhd3;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PageFetcher;->flow:Lhd3;

    return-void
.end method

.method public synthetic constructor <init>(Lnl3;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/PageFetcher;-><init>(Lnl3;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;)V

    return-void
.end method

.method public static final synthetic access$generateNewPagingSource(Landroidx/paging/PageFetcher;Landroidx/paging/PagingSource;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/PageFetcher;->generateNewPagingSource(Landroidx/paging/PagingSource;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Landroidx/paging/PageFetcher;)Landroidx/paging/PagingConfig;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    return-object p0
.end method

.method public static final synthetic access$getInitialKey$p(Landroidx/paging/PageFetcher;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher;->initialKey:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLoadRequests$p(Landroidx/paging/PageFetcher;)Landroidx/paging/ConflatedEventBus;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    return-object p0
.end method

.method public static final synthetic access$getRetryEvents$p(Landroidx/paging/PageFetcher;)Landroidx/paging/ConflatedEventBus;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcher;->retryEvents:Landroidx/paging/ConflatedEventBus;

    return-object p0
.end method

.method public static final synthetic access$injectRemoteEvents(Landroidx/paging/PageFetcher;Landroidx/paging/PageFetcherSnapshot;Lmb4;Landroidx/paging/RemoteMediatorAccessor;)Lhd3;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/PageFetcher;->injectRemoteEvents(Landroidx/paging/PageFetcherSnapshot;Lmb4;Landroidx/paging/RemoteMediatorAccessor;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invalidate(Landroidx/paging/PageFetcher;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/PageFetcher;->invalidate()V

    return-void
.end method

.method private final generateNewPagingSource(Landroidx/paging/PagingSource;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    iget v1, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcher$generateNewPagingSource$1;-><init>(Landroidx/paging/PageFetcher;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingSource;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PageFetcher;->pagingSourceFactory:Lnl3;

    iput-object p1, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Landroidx/paging/PagingSource;

    instance-of v0, p2, Landroidx/paging/CompatLegacyPagingSource;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Landroidx/paging/CompatLegacyPagingSource;

    iget-object v1, p0, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    iget v1, v1, Landroidx/paging/PagingConfig;->pageSize:I

    invoke-interface {v0, v1}, Landroidx/paging/CompatLegacyPagingSource;->setPageSize(I)V

    :cond_4
    if-eq p2, p1, :cond_8

    new-instance v0, Landroidx/paging/PageFetcher$generateNewPagingSource$3;

    invoke-direct {v0, p0}, Landroidx/paging/PageFetcher$generateNewPagingSource$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/paging/PagingSource;->registerInvalidatedCallback(Lll3;)V

    if-eqz p1, :cond_5

    new-instance v0, Landroidx/paging/PageFetcher$generateNewPagingSource$4;

    invoke-direct {v0, p0}, Landroidx/paging/PageFetcher$generateNewPagingSource$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/paging/PagingSource;->unregisterInvalidatedCallback(Lll3;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/paging/PagingSource;->invalidate()V

    :cond_6
    sget-object p0, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generated new PagingSource "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object p2

    :cond_8
    const-string p0, "An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method

.method private final injectRemoteEvents(Landroidx/paging/PageFetcherSnapshot;Lmb4;Landroidx/paging/RemoteMediatorAccessor;)Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;",
            "Lmb4;",
            "Landroidx/paging/RemoteMediatorAccessor<",
            "TKey;TValue;>;)",
            "Lhd3<",
            "Landroidx/paging/PageEvent<",
            "TValue;>;>;"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroidx/paging/PageFetcherSnapshot;->getPageEventFlow()Lhd3;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/paging/MutableLoadStateCollection;

    invoke-direct {p0}, Landroidx/paging/MutableLoadStateCollection;-><init>()V

    new-instance v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p0, v1}, Landroidx/paging/PageFetcher$injectRemoteEvents$1;-><init>(Landroidx/paging/RemoteMediatorAccessor;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/MutableLoadStateCollection;Le02;)V

    invoke-static {p2, v0}, Landroidx/paging/CancelableChannelFlowKt;->cancelableChannelFlow(Lmb4;Lbm3;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method private final invalidate()V
    .locals 3

    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    new-instance v0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    const/4 v1, 0x0

    sget-object v2, Landroidx/paging/PageFetcher$RefreshType$Anchor;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$Anchor;

    invoke-direct {v0, v1, v2}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/PageFetcher$RefreshType;)V

    invoke-virtual {p0, v0}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic refresh$default(Landroidx/paging/PageFetcher;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcher;->refresh(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/PagingData<",
            "TValue;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageFetcher;->flow:Lhd3;

    return-object p0
.end method

.method public final load(Landroidx/paging/LoadType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/PageFetcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    invoke-static {}, Lme0;->e()V

    return-void

    :cond_0
    const-string p0, "Load only applies to APPEND or PREPEND"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Landroidx/paging/PageFetcher$LoadRequest$Prepend;->INSTANCE:Landroidx/paging/PageFetcher$LoadRequest$Prepend;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/paging/PageFetcher$LoadRequest$Append;->INSTANCE:Landroidx/paging/PageFetcher$LoadRequest$Append;

    :goto_0
    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    invoke-virtual {p0, p1}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public final refresh(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Landroidx/paging/PageFetcher$RefreshType$Anchor;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$Anchor;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcher$RefreshType$Item;

    invoke-direct {v0, p1}, Landroidx/paging/PageFetcher$RefreshType$Item;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    new-instance v0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/PageFetcher$RefreshType;)V

    invoke-virtual {p0, v0}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public final refreshAll()V
    .locals 3

    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Landroidx/paging/ConflatedEventBus;

    new-instance v0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    const/4 v1, 0x1

    sget-object v2, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$All;

    invoke-direct {v0, v1, v2}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/PageFetcher$RefreshType;)V

    invoke-virtual {p0, v0}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public final retry()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/PageFetcher;->retryEvents:Landroidx/paging/ConflatedEventBus;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method
