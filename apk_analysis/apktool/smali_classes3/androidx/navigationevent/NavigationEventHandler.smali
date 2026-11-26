.class public abstract Landroidx/navigationevent/NavigationEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private backInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private currentInfo:Landroidx/navigationevent/NavigationEventInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

.field private forwardInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private isBackEnabled:Z

.field private isForwardEnabled:Z

.field private transitionState:Landroidx/navigationevent/NavigationEventTransitionState;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Landroidx/navigationevent/NavigationEventInfo;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->backInfo:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->forwardInfo:Ljava/util/List;

    sget-object p1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    iput-boolean p2, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    iput-boolean p3, p0, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled:Z

    return-void
.end method

.method public static synthetic setInfo$default(Landroidx/navigationevent/NavigationEventHandler;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventHandler;->setInfo(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: setInfo"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final doOnBackCancelled$navigationevent()V
    .locals 1

    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->onBackCancelled()V

    return-void
.end method

.method public final doOnBackCompleted$navigationevent()V
    .locals 1

    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->onBackCompleted()V

    return-void
.end method

.method public final doOnBackProgressed$navigationevent(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final doOnBackStarted$navigationevent(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->onBackStarted(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final doOnForwardCancelled$navigationevent()V
    .locals 1

    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->onForwardCancelled()V

    return-void
.end method

.method public final doOnForwardCompleted$navigationevent()V
    .locals 1

    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->onForwardCompleted()V

    return-void
.end method

.method public final doOnForwardProgressed$navigationevent(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->onForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final doOnForwardStarted$navigationevent(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    iput-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->onForwardStarted(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final getBackInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->backInfo:Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentInfo()Landroidx/navigationevent/NavigationEventInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Landroidx/navigationevent/NavigationEventInfo;

    return-object p0
.end method

.method public final getDispatcher$navigationevent()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-object p0
.end method

.method public final getForwardInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->forwardInfo:Ljava/util/List;

    return-object p0
.end method

.method public final getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    return-object p0
.end method

.method public final isBackEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    return p0
.end method

.method public final isForwardEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled:Z

    return p0
.end method

.method public onBackCancelled()V
    .locals 0

    return-void
.end method

.method public onBackCompleted()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "A handler that receives a \'backCompleted\' event must override \'onBackCompleted()\' to handle the callback."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onForwardCancelled()V
    .locals 0

    return-void
.end method

.method public onForwardCompleted()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "A handler that receives a \'forwardCompleted\' event must override \'onForwardCompleted()\' to handle the callback."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onForwardStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/navigationevent/NavigationEventDispatcher;->removeHandler$navigationevent(Landroidx/navigationevent/NavigationEventHandler;)V

    :cond_0
    return-void
.end method

.method public final setBackEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->getSharedProcessor$navigationevent()Landroidx/navigationevent/NavigationEventProcessor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-void
.end method

.method public final setForwardEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->isForwardEnabled:Z

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->getSharedProcessor$navigationevent()Landroidx/navigationevent/NavigationEventProcessor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setInfo(Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/navigationevent/NavigationEventHandler;->setInfo$default(Landroidx/navigationevent/NavigationEventHandler;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final setInfo(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigationevent/NavigationEventHandler;->setInfo$default(Landroidx/navigationevent/NavigationEventHandler;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final setInfo(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Landroidx/navigationevent/NavigationEventInfo;

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventHandler;->backInfo:Ljava/util/List;

    iput-object p3, p0, Landroidx/navigationevent/NavigationEventHandler;->forwardInfo:Ljava/util/List;

    iget-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEventDispatcher;->getSharedProcessor$navigationevent()Landroidx/navigationevent/NavigationEventProcessor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/navigationevent/NavigationEventProcessor;->updateEnabledHandlerInfo$navigationevent(Landroidx/navigationevent/NavigationEventHandler;)V

    :cond_0
    return-void
.end method
