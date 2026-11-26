.class public abstract Landroidx/navigationevent/NavigationEventInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

.field private isPredictiveBackInProgress:Z

.field private isPredictiveForwardInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchOnBackCancelled()V
    .locals 3

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    invoke-virtual {v0, p0, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnCancelled$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnBackCompleted()V
    .locals 3

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    invoke-virtual {v0, p0, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnCompleted$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnProgressed$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    :cond_0
    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnForwardCancelled()V
    .locals 3

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    invoke-virtual {v0, p0, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnCancelled$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnForwardCompleted()V
    .locals 3

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    invoke-virtual {v0, p0, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnCompleted$navigationevent(Landroidx/navigationevent/NavigationEventInput;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnProgressed$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchOnForwardStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;ILandroidx/navigationevent/NavigationEvent;)V

    iput-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveForwardInProgress:Z

    :cond_0
    return-void

    :cond_1
    const-string p0, "This input is not added to any dispatcher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final doOnAdded$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->onAdded(Landroidx/navigationevent/NavigationEventDispatcher;)V

    return-void
.end method

.method public final doOnHasEnabledHandlersChanged$navigationevent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->onHasEnabledHandlersChanged(Z)V

    return-void
.end method

.method public final doOnHistoryChanged$navigationevent(Landroidx/navigationevent/NavigationEventHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->onHistoryChanged(Landroidx/navigationevent/NavigationEventHistory;)V

    return-void
.end method

.method public final doOnRemoved$navigationevent()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->onRemoved()V

    return-void
.end method

.method public final getDispatcher$navigationevent()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-object p0
.end method

.method public onAdded(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onHasEnabledHandlersChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHistoryChanged(Landroidx/navigationevent/NavigationEventHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onRemoved()V
    .locals 0

    return-void
.end method

.method public final setDispatcher$navigationevent(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-void
.end method
