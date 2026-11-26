.class public final Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
.super Landroidx/compose/runtime/CompositionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/GapComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CompositionContextImpl"
.end annotation


# instance fields
.field private final collectingParameterInformation:Z

.field private final collectingSourceInformation:Z

.field private final composers:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/GapComposer;",
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

.field final synthetic this$0:Landroidx/compose/runtime/GapComposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Landroidx/compose/runtime/CompositionObserverHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    iput-wide p2, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->compositeKeyHashCode:J

    iput-boolean p4, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->collectingParameterInformation:Z

    iput-boolean p5, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->collectingSourceInformation:Z

    iput-object p6, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method

.method private final setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->composeInitialPaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lbm3;)Landroidx/collection/ScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final dispose()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    aget-wide v6, v1, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v2, v11

    check-cast v11, Landroidx/compose/runtime/GapComposer;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-ne v8, v9, :cond_3

    :cond_2
    if-eq v5, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_4
    return-void
.end method

.method public doneComposing$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {v0}, Landroidx/compose/runtime/GapComposer;->access$getChildrenComposing$p(Landroidx/compose/runtime/GapComposer;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/GapComposer;->access$setChildrenComposing$p(Landroidx/compose/runtime/GapComposer;I)V

    return-void
.end method

.method public getCollectingCallByInformation$runtime()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    move-result p0

    return p0
.end method

.method public getCollectingParameterInformation$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->collectingParameterInformation:Z

    return p0
.end method

.method public getCollectingSourceInformation$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->collectingSourceInformation:Z

    return p0
.end method

.method public final getComposers()Landroidx/collection/MutableScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/GapComposer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public getCompositeKeyHashCode$runtime()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->compositeKeyHashCode:J

    return-wide v0
.end method

.method public getComposition$runtime()Landroidx/compose/runtime/Composition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getCompositionLocalScope$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public getEffectCoroutineContext()Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-object p0
.end method

.method public getObserverHolder$runtime()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    return-object p0
.end method

.method public getStackTraceEnabled$runtime()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getStackTraceEnabled$runtime()Z

    move-result p0

    return p0
.end method

.method public insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {v0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public invalidateScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposer$runtime(Landroidx/compose/runtime/Composer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    invoke-super {p0, v0}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime(Landroidx/compose/runtime/Composer;)V

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->registerComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public reportRemovedComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

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

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-void
.end method

.method public startComposing$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {v0}, Landroidx/compose/runtime/GapComposer;->access$getChildrenComposing$p(Landroidx/compose/runtime/GapComposer;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/GapComposer;->access$setChildrenComposing$p(Landroidx/compose/runtime/GapComposer;I)V

    return-void
.end method

.method public unregisterComposer$runtime(Landroidx/compose/runtime/Composer;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/runtime/GapComposer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->this$0:Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->access$getParentContext$p(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    return-void
.end method
