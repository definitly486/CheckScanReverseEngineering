.class public final Landroidx/paging/MutableCombinedLoadStateCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _stateFlow:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Landroidx/paging/internal/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/internal/CopyOnWriteArrayList<",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field private final stateFlow:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-direct {v0}, Landroidx/paging/internal/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->listeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->_stateFlow:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->stateFlow:Ly68;

    return-void
.end method

.method public static synthetic a(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/MutableCombinedLoadStateCollection;->set$lambda$0(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLandroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/paging/MutableCombinedLoadStateCollection;->set$lambda$1(ZLandroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method

.method private final dispatchNewState(Lnl3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Landroidx/paging/CombinedLoadStates;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->_stateFlow:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/paging/CombinedLoadStates;

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/CombinedLoadStates;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1, v3}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_1

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->listeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl3;

    invoke-interface {p1, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final set$lambda$0(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;
    .locals 0

    invoke-static {p2, p0, p1}, Landroidx/paging/MutableCombinedLoadStateCollectionKt;->computeNewState(Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method

.method private static final set$lambda$1(ZLandroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/paging/CombinedLoadStates;->getSource()Landroidx/paging/LoadStates;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {v0}, Landroidx/paging/LoadStates$Companion;->getIDLE()Landroidx/paging/LoadStates;

    move-result-object v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/paging/CombinedLoadStates;->getMediator()Landroidx/paging/LoadStates;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_3

    sget-object p0, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadStates$Companion;->getIDLE()Landroidx/paging/LoadStates;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/paging/LoadStates;->modifyState$paging_common(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)Landroidx/paging/LoadStates;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Landroidx/paging/LoadStates;->modifyState$paging_common(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)Landroidx/paging/LoadStates;

    move-result-object v0

    :goto_1
    invoke-static {p3, v0, v1}, Landroidx/paging/MutableCombinedLoadStateCollectionKt;->computeNewState(Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Lnl3;)V
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

    iget-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->listeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Landroidx/paging/internal/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->_stateFlow:Lxg5;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/CombinedLoadStates;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final get(Landroidx/paging/LoadType;Z)Landroidx/paging/LoadState;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->_stateFlow:Lxg5;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/CombinedLoadStates;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/paging/CombinedLoadStates;->getMediator()Landroidx/paging/LoadStates;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/paging/CombinedLoadStates;->getSource()Landroidx/paging/LoadStates;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/paging/LoadStates;->get$paging_common(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final getStateFlow()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->stateFlow:Ly68;

    return-object p0
.end method

.method public final removeListener(Lnl3;)V
    .locals 0
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

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->listeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Landroidx/paging/internal/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Log5;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Log5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->dispatchNewState(Lnl3;)V

    return-void
.end method

.method public final set(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lng5;

    invoke-direct {v0, p1, p2, p3}, Lng5;-><init>(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V

    invoke-direct {p0, v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->dispatchNewState(Lnl3;)V

    return-void
.end method
