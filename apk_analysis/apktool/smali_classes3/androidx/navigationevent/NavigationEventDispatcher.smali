.class public final Landroidx/navigationevent/NavigationEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigationevent/NavigationEventDispatcher$Companion;,
        Landroidx/navigationevent/NavigationEventDispatcher$Priority;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigationevent/NavigationEventDispatcher$Companion;

.field public static final PRIORITY_DEFAULT:I = 0x1

.field public static final PRIORITY_OVERLAY:I


# instance fields
.field private final childDispatchers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final handlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final inputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventInput;",
            ">;"
        }
    .end annotation
.end field

.field private isDisposed:Z

.field private isEnabled:Z

.field private final onBackCompletedFallback:Landroidx/navigationevent/OnBackCompletedFallback;

.field private parent:Landroidx/navigationevent/NavigationEventDispatcher;

.field private final sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigationevent/NavigationEventDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/navigationevent/NavigationEventDispatcher;->Companion:Landroidx/navigationevent/NavigationEventDispatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;)V

    return-void
.end method

.method private constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->onBackCompletedFallback:Landroidx/navigationevent/OnBackCompletedFallback;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Landroidx/navigationevent/NavigationEventProcessor;

    invoke-direct {p1}, Landroidx/navigationevent/NavigationEventProcessor;-><init>()V

    :cond_1
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->handlers:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    iget-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/OnBackCompletedFallback;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, p1}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;)V

    return-void
.end method

.method public static synthetic addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler(Landroidx/navigationevent/NavigationEventHandler;I)V

    return-void
.end method

.method private final checkInvariants()V
    .locals 0

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "This NavigationEventDispatcher has already been disposed and cannot be used."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final isDisposed()Z
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->isDisposed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isDisposed:Z

    return p0
.end method


# virtual methods
.method public final addHandler(Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    return-void
.end method

.method public final addHandler(Landroidx/navigationevent/NavigationEventHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->handlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigationevent/NavigationEventProcessor;->addHandler(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;I)V

    :cond_0
    return-void
.end method

.method public final addInput(Landroidx/navigationevent/NavigationEventInput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    .line 37
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/navigationevent/NavigationEventProcessor;->addInput(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    :cond_0
    return-void
.end method

.method public final addInput(Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported priority value: "

    invoke-static {p2, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigationevent/NavigationEventProcessor;->addInput(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    :cond_2
    return-void
.end method

.method public final dispatchOnCancelled$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0, p1, p2}, Landroidx/navigationevent/NavigationEventProcessor;->dispatchOnCancelled(Landroidx/navigationevent/NavigationEventInput;I)V

    return-void
.end method

.method public final dispatchOnCompleted$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->onBackCompletedFallback:Landroidx/navigationevent/OnBackCompletedFallback;

    invoke-virtual {v0, p1, p2, p0}, Landroidx/navigationevent/NavigationEventProcessor;->dispatchOnCompleted(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/OnBackCompletedFallback;)V

    return-void
.end method

.method public final dispatchOnProgressed$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventProcessor;->dispatchOnProgressed(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventProcessor;->dispatchOnStarted(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final dispose()V
    .locals 6

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isDisposed:Z

    new-instance v1, Lfr;

    invoke-direct {v1}, Lfr;-><init>()V

    invoke-virtual {v1, p0}, Lfr;->addLast(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigationevent/NavigationEventDispatcher;

    iput-boolean v0, v2, Landroidx/navigationevent/NavigationEventDispatcher;->isDisposed:Z

    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigationevent/NavigationEventInput;

    iget-object v5, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v5, v4}, Landroidx/navigationevent/NavigationEventProcessor;->removeInput(Landroidx/navigationevent/NavigationEventInput;)V

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->handlers:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {v4}, Landroidx/navigationevent/NavigationEventHandler;->remove()V

    goto :goto_2

    :cond_1
    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->handlers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getChildDispatchers$navigationevent()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/navigationevent/NavigationEventDispatcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->childDispatchers:Ljava/util/Set;

    return-object p0
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

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->getHistory()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedProcessor$navigationevent()Landroidx/navigationevent/NavigationEventProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

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

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->getTransitionState()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->parent:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled:Z

    return p0
.end method

.method public final removeHandler$navigationevent(Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->handlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventProcessor;->removeHandler(Landroidx/navigationevent/NavigationEventHandler;)V

    :cond_0
    return-void
.end method

.method public final removeInput(Landroidx/navigationevent/NavigationEventInput;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->inputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventProcessor;->removeInput(Landroidx/navigationevent/NavigationEventInput;)V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->checkInvariants()V

    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled:Z

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->sharedProcessor:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    return-void
.end method
