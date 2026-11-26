.class final Landroidx/paging/RemoteMediatorAccessImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/RemoteMediatorAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/RemoteMediatorAccessImpl$Companion;,
        Landroidx/paging/RemoteMediatorAccessImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/RemoteMediatorAccessor<",
        "TKey;TValue;>;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/RemoteMediatorAccessImpl$Companion;

.field private static final PRIORITY_APPEND_PREPEND:I = 0x1

.field private static final PRIORITY_REFRESH:I = 0x2


# instance fields
.field private final accessorState:Landroidx/paging/AccessorStateHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AccessorStateHolder<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final isolationRunner:Landroidx/paging/SingleRunner;

.field private final remoteMediator:Landroidx/paging/RemoteMediator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final scope:Ly22;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/RemoteMediatorAccessImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/RemoteMediatorAccessImpl;->Companion:Landroidx/paging/RemoteMediatorAccessImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ly22;Landroidx/paging/RemoteMediator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Ly22;

    iput-object p2, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    new-instance p1, Landroidx/paging/AccessorStateHolder;

    invoke-direct {p1}, Landroidx/paging/AccessorStateHolder;-><init>()V

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance p1, Landroidx/paging/SingleRunner;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/paging/SingleRunner;-><init>(Z)V

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->isolationRunner:Landroidx/paging/SingleRunner;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl;->retryFailed$lambda$0(Ljava/util/List;Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    return-object p0
.end method

.method public static final synthetic access$getIsolationRunner$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/SingleRunner;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->isolationRunner:Landroidx/paging/SingleRunner;

    return-object p0
.end method

.method public static final synthetic access$getRemoteMediator$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/RemoteMediator;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    return-object p0
.end method

.method public static final synthetic access$launchBoundary(Landroidx/paging/RemoteMediatorAccessImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchBoundary()V

    return-void
.end method

.method private static final allowRefresh$lambda$0(Landroidx/paging/AccessorState;)Lj59;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/paging/AccessorState;->setRefreshAllowed(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic b(Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->allowRefresh$lambda$0(Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/paging/RemoteMediatorAccessImpl;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl;->requestRefreshIfAllowed$lambda$0(Landroidx/paging/RemoteMediatorAccessImpl;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->initialize$lambda$0$0(Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl;->requestLoad$lambda$0(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Z

    move-result p0

    return p0
.end method

.method private static final initialize$lambda$0$0(Landroidx/paging/AccessorState;)Lj59;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/AccessorState$BlockState;->REQUIRES_REFRESH:Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p0, v0, v1}, Landroidx/paging/AccessorState;->setBlockState(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$BlockState;)V

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p0, v0, v1}, Landroidx/paging/AccessorState;->setBlockState(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$BlockState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final launchBoundary()V
    .locals 3

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Ly22;

    new-instance v1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final launchRefresh()V
    .locals 3

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Ly22;

    new-instance v1, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final requestLoad(Landroidx/paging/AccessorStateHolder;Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AccessorStateHolder<",
            "TKey;TValue;>;",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    new-instance v0, Landroidx/paging/h;

    invoke-direct {v0, p2, p3}, Landroidx/paging/h;-><init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    invoke-virtual {p1, v0}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/paging/RemoteMediatorAccessImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchRefresh()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchBoundary()V

    :cond_1
    return-void
.end method

.method private static final requestLoad$lambda$0(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Landroidx/paging/AccessorState;->add(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)Z

    move-result p0

    return p0
.end method

.method private static final requestRefreshIfAllowed$lambda$0(Landroidx/paging/RemoteMediatorAccessImpl;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Lj59;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/paging/AccessorState;->getRefreshAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/paging/AccessorState;->setRefreshAllowed(Z)V

    iget-object p2, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-direct {p0, p2, v0, p1}, Landroidx/paging/RemoteMediatorAccessImpl;->requestLoad(Landroidx/paging/AccessorStateHolder;Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final retryFailed$lambda$0(Ljava/util/List;Landroidx/paging/AccessorState;)Lj59;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/AccessorState;->computeLoadStates()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v1

    instance-of v1, v1, Landroidx/paging/LoadState$Error;

    invoke-virtual {p1}, Landroidx/paging/AccessorState;->clearErrors()V

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroidx/paging/AccessorState$BlockState;->UNBLOCKED:Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p1, v2, v3}, Landroidx/paging/AccessorState;->setBlockState(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$BlockState;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v2

    instance-of v2, v2, Landroidx/paging/LoadState$Error;

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1, v2}, Landroidx/paging/AccessorState;->clearPendingRequest(Landroidx/paging/LoadType;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1, p0}, Landroidx/paging/AccessorState;->clearPendingRequest(Landroidx/paging/LoadType;)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public allowRefresh()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v0, Landroidx/paging/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    return-void
.end method

.method public getState()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/paging/LoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    invoke-virtual {p0}, Landroidx/paging/AccessorStateHolder;->getLoadStates()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/paging/RemoteMediator$InitializeAction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    iget v1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    iput v3, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/paging/RemoteMediator;->initialize(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v0, p1

    check-cast v0, Landroidx/paging/RemoteMediator$InitializeAction;

    sget-object v1, Landroidx/paging/RemoteMediator$InitializeAction;->LAUNCH_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v0, Landroidx/paging/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method public requestLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    invoke-direct {p0, v0, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl;->requestLoad(Landroidx/paging/AccessorStateHolder;Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    return-void
.end method

.method public requestRefreshIfAllowed(Landroidx/paging/PagingState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v1, Landroidx/paging/j;

    invoke-direct {v1, p0, p1}, Landroidx/paging/j;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Landroidx/paging/PagingState;)V

    invoke-virtual {v0, v1}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    return-void
.end method

.method public retryFailed(Landroidx/paging/PagingState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v2, Landroidx/paging/l;

    invoke-direct {v2, v0}, Landroidx/paging/l;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/LoadType;

    invoke-virtual {p0, v1, p1}, Landroidx/paging/RemoteMediatorAccessImpl;->requestLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
