.class public final Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;
.super Landroidx/compose/runtime/CompositionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/LinkComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CompositionContextImpl"
.end annotation


# instance fields
.field private final collectingParameterInformation:Z

.field private final collectingSourceInformation:Z

.field private final composers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/LinkComposer;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeKeyHashCode:J

.field private final compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

.field private inspectionTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

.field final synthetic this$0:Landroidx/compose/runtime/LinkComposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/LinkComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Landroidx/compose/runtime/CompositionObserverHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    iput-wide p2, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->compositeKeyHashCode:J

    iput-boolean p4, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->collectingParameterInformation:Z

    iput-boolean p5, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->collectingSourceInformation:Z

    iput-object p6, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method

.method private final setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public composeInitial$runtime(Landroidx/compose/runtime/ControlledComposition;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime(Landroidx/compose/runtime/ControlledComposition;Lbm3;)V

    return-void
.end method

.method public composeInitialPaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lbm3;)Landroidx/collection/ScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->composeInitialPaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lbm3;)Landroidx/collection/ScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final dispose()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/LinkComposer;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v2}, Landroidx/compose/runtime/LinkComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public doneComposing$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposer;->access$getChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/LinkComposer;->access$setChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;I)V

    return-void
.end method

.method public getCollectingCallByInformation$runtime()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    move-result p0

    return p0
.end method

.method public getCollectingParameterInformation$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->collectingParameterInformation:Z

    return p0
.end method

.method public getCollectingSourceInformation$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->collectingSourceInformation:Z

    return p0
.end method

.method public final getComposers()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/LinkComposer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    return-object p0
.end method

.method public getCompositeKeyHashCode$runtime()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->compositeKeyHashCode:J

    return-wide v0
.end method

.method public getComposition$runtime()Landroidx/compose/runtime/Composition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getCompositionLocalScope$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public getEffectCoroutineContext()Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final getInspectionTables()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-object p0
.end method

.method public getObserverHolder$runtime()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    return-object p0
.end method

.method public getStackTraceEnabled$runtime()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getStackTraceEnabled$runtime()Z

    move-result p0

    return p0
.end method

.method public insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public invalidateScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidateScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public movableContentStateReleased$runtime(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            "Landroidx/compose/runtime/Applier<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p0

    return-object p0
.end method

.method public recomposePaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;)",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->recomposePaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public recordInspectionTable$runtime(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposer$runtime(Landroidx/compose/runtime/Composer;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime(Landroidx/compose/runtime/Composer;)V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    invoke-static {p1}, Landroidx/compose/runtime/LinkComposerKt;->asLinkComposer(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/LinkComposer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->registerComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public reportRemovedComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/CancellationHandle;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    return-object p0
.end method

.method public final setInspectionTables(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-void
.end method

.method public startComposing$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposer;->access$getChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/LinkComposer;->access$setChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;I)V

    return-void
.end method

.method public unregisterComposer$runtime(Landroidx/compose/runtime/Composer;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Landroidx/compose/runtime/LinkComposerKt;->asLinkComposer(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/LinkComposer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/LinkComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->composers:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lv39;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/LinkComposer;

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    return-void
.end method
