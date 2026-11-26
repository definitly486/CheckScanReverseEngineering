.class public final Landroidx/navigationevent/NavigationEventProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _history:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/navigationevent/NavigationEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final _transitionState:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultHandlers:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final defaultInputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventInput;",
            ">;"
        }
    .end annotation
.end field

.field private hasEnabledAnyHandlers:Z

.field private hasEnabledDefaultHandlers:Z

.field private hasEnabledOverlayHandlers:Z

.field private final history:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/navigationevent/NavigationEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private inProgressDirection:I

.field private inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private inProgressInput:Landroidx/navigationevent/NavigationEventInput;

.field private final overlayHandlers:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final overlayInputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventInput;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionState:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field private final unspecifiedInputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->transitionState:Ly68;

    new-instance v0, Landroidx/navigationevent/NavigationEventHistory;

    invoke-direct {v0}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_history:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->history:Ly68;

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Ljava/util/Set;

    return-void
.end method

.method public static synthetic addHandler$default(Landroidx/navigationevent/NavigationEventProcessor;Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventProcessor;->addHandler(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;I)V

    return-void
.end method

.method public static synthetic dispatchOnStarted$default(Landroidx/navigationevent/NavigationEventProcessor;Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventProcessor;->dispatchOnStarted(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method private final findHandler(Lnl3;)Landroidx/navigationevent/NavigationEventHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    if-nez v1, :cond_4

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    :cond_3
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    return-object v2

    :cond_4
    return-object v1
.end method

.method private static synthetic getInProgressDirection$annotations()V
    .locals 0

    return-void
.end method

.method private final resolveCombinedBackInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->getBackInfo()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->getBackInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v1}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/navigationevent/NavigationEventHandler;->getBackInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/navigationevent/NavigationEventHandler;->getBackInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private final resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    if-nez v0, :cond_4

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p1

    :cond_3
    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    const-string p0, "Unsupported direction: \'"

    const-string v0, "\'."

    invoke-static {v0, p0, p1}, Lzc5;->d(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v1

    :cond_6
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_8
    move-object v0, v1

    :cond_9
    :goto_1
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    if-nez v0, :cond_d

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_b
    move-object v1, p1

    :cond_c
    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    return-object v1

    :cond_d
    return-object v0

    :cond_e
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v2}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2

    :cond_10
    move-object v0, v1

    :goto_2
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    if-nez v0, :cond_13

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v1, p1

    :cond_12
    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    return-object v1

    :cond_13
    return-object v0
.end method

.method public static synthetic resolveEnabledHandler$default(Landroidx/navigationevent/NavigationEventProcessor;IILjava/lang/Object;)Landroidx/navigationevent/NavigationEventHandler;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addHandler(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventDispatcher;",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/navigationevent/NavigationEventHandler;->getDispatcher$navigationevent()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-virtual {p3, p2}, Lfr;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported priority value: "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p3, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-virtual {p3, p2}, Lfr;->addFirst(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/navigationevent/NavigationEventHandler;->setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    return-void

    :cond_2
    const-string p0, "Handler \'"

    const-string p1, "\' is already registered with a dispatcher"

    invoke-static {p2, p0, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final addInput(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/navigationevent/NavigationEventInput;->getDispatcher$navigationevent()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_0

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Ljava/util/Set;

    :goto_0
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Landroidx/navigationevent/NavigationEventInput;->setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-virtual {p2, p1}, Landroidx/navigationevent/NavigationEventInput;->doOnAdded$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V

    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->history:Ly68;

    invoke-interface {p1}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigationevent/NavigationEventHistory;

    invoke-virtual {p2, p1}, Landroidx/navigationevent/NavigationEventInput;->doOnHistoryChanged$navigationevent(Landroidx/navigationevent/NavigationEventHistory;)V

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_2

    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    :goto_1
    invoke-virtual {p2, p0}, Landroidx/navigationevent/NavigationEventInput;->doOnHasEnabledHandlersChanged$navigationevent(Z)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Input \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/navigationevent/NavigationEventInput;->getDispatcher$navigationevent()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object p1

    const-string p2, "\' is already added to dispatcher "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dispatchOnCancelled(Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnForwardCancelled$navigationevent()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnBackCancelled$navigationevent()V

    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lxg5;

    sget-object p1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final dispatchOnCompleted(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/OnBackCompletedFallback;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnForwardCompleted$navigationevent()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroidx/navigationevent/OnBackCompletedFallback;->onBackCompletedFallback()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnBackCompleted$navigationevent()V

    :cond_5
    :goto_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lxg5;

    sget-object p1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final dispatchOnProgressed(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Landroidx/navigationevent/NavigationEventHandler;->doOnForwardProgressed$navigationevent(Landroidx/navigationevent/NavigationEvent;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Landroidx/navigationevent/NavigationEventHandler;->doOnBackProgressed$navigationevent(Landroidx/navigationevent/NavigationEvent;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lxg5;

    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    invoke-direct {p1, p3, p2}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final dispatchOnStarted(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    iput p2, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    if-eqz p3, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroidx/navigationevent/NavigationEventHandler;->doOnForwardStarted$navigationevent(Landroidx/navigationevent/NavigationEvent;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroidx/navigationevent/NavigationEventHandler;->doOnBackStarted$navigationevent(Landroidx/navigationevent/NavigationEvent;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lxg5;

    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    invoke-direct {p1, p3, p2}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final getHistory()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/navigationevent/NavigationEventHistory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->history:Ly68;

    return-object p0
.end method

.method public final getTransitionState()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->transitionState:Ly68;

    return-object p0
.end method

.method public final refreshEnabledHandlers()V
    .locals 9

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v3}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v4}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_7
    move v3, v1

    :goto_1
    if-nez v0, :cond_9

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    move v4, v2

    goto :goto_3

    :cond_9
    :goto_2
    move v4, v1

    :goto_3
    iget-boolean v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    if-eq v5, v0, :cond_a

    move v5, v1

    goto :goto_4

    :cond_a
    move v5, v2

    :goto_4
    iget-boolean v6, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    if-eq v6, v3, :cond_b

    move v6, v1

    goto :goto_5

    :cond_b
    move v6, v2

    :goto_5
    iget-boolean v7, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    if-eq v7, v4, :cond_c

    move v7, v1

    goto :goto_6

    :cond_c
    move v7, v2

    :goto_6
    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v8, v0}, Landroidx/navigationevent/NavigationEventInput;->doOnHasEnabledHandlersChanged$navigationevent(Z)V

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_e

    iget-object v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v6, v3}, Landroidx/navigationevent/NavigationEventInput;->doOnHasEnabledHandlersChanged$navigationevent(Z)V

    goto :goto_8

    :cond_e
    if-eqz v7, :cond_f

    iget-object v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v6, v4}, Landroidx/navigationevent/NavigationEventInput;->doOnHasEnabledHandlersChanged$navigationevent(Z)V

    goto :goto_9

    :cond_f
    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    iput-boolean v3, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    iput-boolean v4, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, v2, v1, v0}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler$default(Landroidx/navigationevent/NavigationEventProcessor;IILjava/lang/Object;)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object v0

    :cond_10
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->updateEnabledHandlerInfo$navigationevent(Landroidx/navigationevent/NavigationEventHandler;)V

    return-void
.end method

.method public final removeHandler(Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnForwardCancelled$navigationevent()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventHandler;->doOnBackCancelled$navigationevent()V

    :goto_0
    iput-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    iput-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    :cond_2
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lfr;

    invoke-virtual {v0, p1}, Lfr;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lfr;

    invoke-virtual {v0, p1}, Lfr;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroidx/navigationevent/NavigationEventHandler;->setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    return-void
.end method

.method public final removeInput(Landroidx/navigationevent/NavigationEventInput;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/navigationevent/NavigationEventInput;->setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V

    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventInput;->doOnRemoved$navigationevent()V

    return-void
.end method

.method public final updateEnabledHandlerInfo$navigationevent(Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler$default(Landroidx/navigationevent/NavigationEventProcessor;IILjava/lang/Object;)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object v0

    :cond_0
    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez v0, :cond_2

    new-instance p1, Landroidx/navigationevent/NavigationEventHistory;

    invoke-direct {p1}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventProcessor;->resolveCombinedBackInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->getForwardInfo()Ljava/util/List;

    move-result-object v0

    new-instance v2, Landroidx/navigationevent/NavigationEventHistory;

    invoke-direct {v2, v1, p1, v0}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    move-object p1, v2

    :goto_0
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_history:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigationevent/NavigationEventHistory;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_history:Lxg5;

    invoke-interface {v0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v1, p1}, Landroidx/navigationevent/NavigationEventInput;->doOnHistoryChanged$navigationevent(Landroidx/navigationevent/NavigationEventHistory;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v1, p1}, Landroidx/navigationevent/NavigationEventInput;->doOnHistoryChanged$navigationevent(Landroidx/navigationevent/NavigationEventHistory;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {v0, p1}, Landroidx/navigationevent/NavigationEventInput;->doOnHistoryChanged$navigationevent(Landroidx/navigationevent/NavigationEventHistory;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method
