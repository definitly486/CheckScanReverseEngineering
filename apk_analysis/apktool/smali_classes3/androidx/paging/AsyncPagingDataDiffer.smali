.class public final Landroidx/paging/AsyncPagingDataDiffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final LoadStateListenerHandler$delegate:Lcl4;

.field private final LoadStateListenerRunnable:Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

.field private final childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final inGetItem:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final internalLoadStateListener:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private lastAccessedIndex:I

.field private final loadStateFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final mainDispatcher:Lo22;

.field private final onPagesUpdatedFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field private final presenter:Landroidx/paging/PagingDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field private final workerDispatcher:Lo22;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lo22;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lo22;",
            "Lo22;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->mainDispatcher:Lo22;

    iput-object p4, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lo22;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    invoke-direct {p1, p0, p3}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;Lo22;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroidx/paging/PagingDataPresenter;->getLoadStateFlow()Ly68;

    move-result-object p3

    new-instance v0, Lcf3;

    invoke-direct {v0, p3}, Lcf3;-><init>(Lhd3;)V

    const/4 p3, -0x1

    invoke-static {v0, p3}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object p3

    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;

    invoke-direct {v0, p3, p2, p0}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1;-><init>(Lhd3;Le02;Landroidx/paging/AsyncPagingDataDiffer;)V

    new-instance p3, Ltb7;

    invoke-direct {p3, v0}, Ltb7;-><init>(Lbm3;)V

    sget-object v0, Lqo2;->a:Loi2;

    sget-object v0, Luy4;->a:Lhu3;

    invoke-static {p3, v0}, Lud3;->b(Lhd3;Lo22;)Lhd3;

    move-result-object p3

    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lhd3;

    invoke-virtual {p1}, Landroidx/paging/PagingDataPresenter;->getOnPagesUpdatedFlow()Lhd3;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lhd3;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lxs;

    invoke-direct {p1, p0, p4}, Lxs;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener:Lnl3;

    new-instance p1, Lys;

    invoke-direct {p1, p4}, Lys;-><init>(I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerHandler$delegate:Lcl4;

    new-instance p1, Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

    invoke-direct {p1, p0}, Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;ILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 139
    sget-object p3, Lqo2;->a:Loi2;

    .line 140
    sget-object p3, Luy4;->a:Lhu3;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 141
    sget-object p4, Lqo2;->a:Loi2;

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;)V
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    sget-object v0, Lqo2;->a:Loi2;

    .line 137
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 143
    sget-object p3, Lqo2;->a:Loi2;

    .line 144
    sget-object p3, Luy4;->a:Lhu3;

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;Lr22;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;Lr22;ILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 146
    sget-object p3, Lqo2;->a:Loi2;

    .line 147
    sget-object p3, Luy4;->a:Lhu3;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 148
    sget-object p4, Lqo2;->a:Loi2;

    .line 149
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lr22;Lr22;)V

    return-void
.end method

.method private static final LoadStateListenerHandler_delegate$lambda$0()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic a()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerHandler_delegate$lambda$0()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getChildLoadStateListeners$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getDiffCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object p0
.end method

.method public static final synthetic access$getLastAccessedIndex$p(Landroidx/paging/AsyncPagingDataDiffer;)I
    .locals 0

    iget p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    return p0
.end method

.method public static final synthetic access$getPreviousPresenter$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getSubmitDataId$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-object p0
.end method

.method public static final synthetic access$getWorkerDispatcher$p(Landroidx/paging/AsyncPagingDataDiffer;)Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lo22;

    return-object p0
.end method

.method public static final synthetic access$setLastAccessedIndex$p(Landroidx/paging/AsyncPagingDataDiffer;I)V
    .locals 0

    iput p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    return-void
.end method

.method public static synthetic b(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener$lambda$0(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final getLoadStateListenerHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerHandler$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static final internalLoadStateListener$lambda$0(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/paging/AsyncPagingDataDiffer;->getLoadStateListenerHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;->getLoadState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/paging/AsyncPagingDataDiffer$LoadStateListenerRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final addLoadStateListener(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener:Lnl3;

    invoke-virtual {p0, v0}, Landroidx/paging/AsyncPagingDataDiffer;->addLoadStateListenerInternal$paging_runtime(Lnl3;)V

    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addLoadStateListenerInternal$paging_runtime(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->addLoadStateListener(Lnl3;)V

    return-void
.end method

.method public final addOnPagesUpdatedListener(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->addOnPagesUpdatedListener(Lll3;)V

    return-void
.end method

.method public final getInGetItem$paging_runtime()Lxg5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxg5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    return-object p0
.end method

.method public final getInternalLoadStateListener$paging_runtime()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener:Lnl3;

    return-object p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PlaceholderPaddedList;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Landroidx/paging/AsyncPagingDataDifferKt;->access$get(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataPresenter;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    :cond_2
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :goto_1
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lxg5;

    :goto_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    throw p1
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PlaceholderPaddedList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->getSize()I

    move-result p0

    return p0
.end method

.method public final getLoadStateFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lhd3;

    return-object p0
.end method

.method public final getOnPagesUpdatedFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lhd3;

    return-object p0
.end method

.method public final getPresenter$paging_runtime()Landroidx/paging/PagingDataPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    return-object p0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PlaceholderPaddedList;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/paging/AsyncPagingDataDifferKt;->access$peek(Landroidx/paging/PlaceholderPaddedList;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->peek(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final refresh()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->refresh()V

    return-void
.end method

.method public final removeLoadStateListener(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl3;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->removeLoadStateListener(Lnl3;)V

    :cond_0
    return-void
.end method

.method public final removeOnPagesUpdatedListener(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->removeOnPagesUpdatedListener(Lll3;)V

    return-void
.end method

.method public final retry()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->retry()V

    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PlaceholderPaddedList;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/paging/AsyncPagingDataDifferKt;->access$snapshot(Landroidx/paging/PlaceholderPaddedList;)Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    return-object p0
.end method

.method public final submitData(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 28
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/PagingDataPresenter;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataPresenter;->collectFrom(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final submitData(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    new-instance v1, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;-><init>(Landroidx/paging/AsyncPagingDataDiffer;ILandroidx/paging/PagingData;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method
