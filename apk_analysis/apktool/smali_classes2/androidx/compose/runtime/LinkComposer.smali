.class public final Landroidx/compose/runtime/LinkComposer;
.super Landroidx/compose/runtime/InternalComposer;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;,
        Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _compositionData:Landroidx/compose/runtime/tooling/CompositionData;

.field private final abandonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation
.end field

.field private final applyCoroutineContext:Lo22;

.field private builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

.field private builderHasAProvider:Z

.field private final changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

.field private changes:Landroidx/compose/runtime/Changes;

.field private childrenComposing:I

.field private compositeKeyHashCode:J

.field private final composition:Landroidx/compose/runtime/CompositionImpl;

.field private compositionToken:I

.field private deferredChanges:Landroidx/compose/runtime/Changes;

.field private final derivedStateObserver:Landroidx/compose/runtime/LinkComposer$derivedStateObserver$1;

.field private final entersStack:Landroidx/compose/runtime/IntStack;

.field private final errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field private forceRecomposeScopes:Z

.field private forciblyRecompose:Z

.field private groupNodeCount:I

.field private insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

.field private inserting:Z

.field private final invalidateStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidations:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isComposing:Z

.field private isDisposed:Z

.field private lastPlacedChildGroup:I

.field private lateChanges:Landroidx/compose/runtime/Changes;

.field private nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

.field private nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field private nodeExpected:Z

.field private nodeIndex:I

.field private final observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;

.field private final parentStateStack:Landroidx/compose/runtime/IntStack;

.field private pending:Landroidx/compose/runtime/LinkPending;

.field private final pendingStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/LinkPending;",
            ">;"
        }
    .end annotation
.end field

.field private providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private providerUpdates:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
            ">;"
        }
    .end annotation
.end field

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field private rGroupIndex:I

.field private reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

.field private reusing:Z

.field private reusingGroup:I

.field private rootProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

.field private final slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

.field private sourceMarkersEnabled:Z


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Ljava/util/Set;Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable;",
            "Landroidx/compose/runtime/Changes;",
            "Landroidx/compose/runtime/Changes;",
            "Landroidx/compose/runtime/CompositionObserverHolder;",
            "Landroidx/compose/runtime/CompositionImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/InternalComposer;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->applier:Landroidx/compose/runtime/Applier;

    iput-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/LinkComposer;->abandonSet:Ljava/util/Set;

    iput-object p4, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    iput-object p6, p0, Landroidx/compose/runtime/LinkComposer;->lateChanges:Landroidx/compose/runtime/Changes;

    iput-object p7, p0, Landroidx/compose/runtime/LinkComposer;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    iput-object p8, p0, Landroidx/compose/runtime/LinkComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p3, p1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILjh2;)Landroidx/collection/MutableScatterMap;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {p1, p3, p1}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILjh2;)Ljava/util/ArrayList;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->rootProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p5, -0x1

    iput p5, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    invoke-virtual {p4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    iput-object p6, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    new-instance p6, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object p4

    const/4 p7, 0x0

    invoke-direct {p6, p4, p7, p7}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;ZZ)V

    invoke-virtual {p6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->close()V

    iput-object p6, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    new-instance p4, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object p6, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-static {p6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeListKt;->asLinkBufferChangeList(Landroidx/compose/runtime/Changes;)Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object p6

    invoke-direct {p4, p0, p6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    iput-object p4, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iput p5, p0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    new-instance p4, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-direct {p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;-><init>()V

    iput-object p4, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    move p7, p3

    :cond_1
    iput-boolean p7, p0, Landroidx/compose/runtime/LinkComposer;->sourceMarkersEnabled:Z

    new-instance p4, Landroidx/compose/runtime/LinkComposer$derivedStateObserver$1;

    invoke-direct {p4, p0}, Landroidx/compose/runtime/LinkComposer$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/LinkComposer;)V

    iput-object p4, p0, Landroidx/compose/runtime/LinkComposer;->derivedStateObserver:Landroidx/compose/runtime/LinkComposer$derivedStateObserver$1;

    invoke-static {p1, p3, p1}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILjh2;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;-><init>(Landroidx/compose/runtime/InternalComposer;)V

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lo22;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lgx2;->b:Lgx2;

    :goto_0
    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->applyCoroutineContext:Lo22;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/LinkComposer;->insertMovableContentGuarded$lambda$0$0$0$0(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final abortRoot()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->cleanUpCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->childrenComposing:I

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->inserting:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->resetInsertBuilder(Z)V

    return-void
.end method

.method public static final synthetic access$getChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/LinkComposer;->childrenComposing:I

    return p0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/CompositionContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    return-object p0
.end method

.method public static final synthetic access$setChildrenComposing$p(Landroidx/compose/runtime/LinkComposer;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/LinkComposer;->childrenComposing:I

    return-void
.end method

.method private final addRecomposeScope()V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->enterRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-static {v1, v0}, Landroidx/compose/runtime/LinkComposerKt;->getRecomposeScopeOrNull(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;I)Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v2, v1}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->recomposeRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->removeFlag(I)V

    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getForcedRecompose()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v4

    :goto_3
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Landroidx/compose/runtime/LinkComposer;->enterRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setPaused(Z)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResuming(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-nez v0, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getReusing()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResetReusing(Z)V

    :cond_7
    return-void
.end method

.method public static synthetic b(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->invokeMovableContentLambda$lambda$1(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/LinkComposer;->stackTraceForValue$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final cleanUpCompose()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->clearUpdatedNodeCounts()V

    return-void
.end method

.method private final clearUpdatedNodeCounts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method private final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method private final currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    const/16 v1, 0xca

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->builderHasAProvider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupKey(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    if-ltz p1, :cond_5

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_3
    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->parentOf(I)I

    move-result p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->rootProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1
.end method

.method private final currentStackTrace()Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilderKt;->buildTrace(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lar4;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReaderKt;->buildTrace(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lar4;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->parentStackTrace$runtime()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lar4;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result p0

    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    invoke-direct {v1, v0, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/LinkComposer;->insertMovableContentGuarded$lambda$0$0$1$0$0$0$0$0(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lbm3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Reentrant composition is not supported"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->current()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    const-string v2, "Compose:recompose"

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    iput v3, p0, Landroidx/compose/runtime/LinkComposer;->compositionToken:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/tooling/CompositionObserver;->onBeginComposition(Landroidx/compose/runtime/tooling/ObservableComposition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v4, 0x2

    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->startRoot()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p2, :cond_2

    if-eqz p2, :cond_2

    move-object v6, p2

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v6, p0, Landroidx/compose/runtime/LinkComposer;->derivedStateObserver:Landroidx/compose/runtime/LinkComposer$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc8

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lbm3;)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_3

    :cond_3
    iget-boolean p2, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    if-eqz p2, :cond_5

    :cond_4
    if-eqz v5, :cond_5

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v6, p2}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Lv39;->c(ILjava/lang/Object;)V

    check-cast v5, Lbm3;

    invoke-static {p0, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lbm3;)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->skipCurrentGroup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endRoot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object p2

    invoke-interface {v0, p2}, Landroidx/compose/runtime/tooling/CompositionObserver;->onEndComposition(Landroidx/compose/runtime/tooling/ObservableComposition;)V

    :cond_6
    iput-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->resetInsertBuilder(Z)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :goto_3
    :try_start_5
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    new-instance v1, Lff;

    invoke-direct {v1, p0, v4}, Lff;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->attachComposeStackTrace(Ljava/lang/Throwable;Lll3;)Ljava/lang/Throwable;

    move-result-object p2

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p2

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/tooling/CompositionObserver;->onEndComposition(Landroidx/compose/runtime/tooling/ObservableComposition;)V

    :cond_7
    iput-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->abortRoot()V

    invoke-direct {p0, v3}, Landroidx/compose/runtime/LinkComposer;->resetInsertBuilder(Z)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0
.end method

.method private static final doCompose_aFTiNEg$lambda$1$1(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentStackTrace()Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/LinkComposer;->invokeMovableContentLambda$lambda$0$0(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final end(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->peek2()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v3

    const/16 v4, 0xcf

    const/4 v5, 0x3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v3

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupKey(I)I

    move-result v6

    iget-object v7, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupAux(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_1

    if-eqz v3, :cond_0

    if-ne v6, v4, :cond_0

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v6

    int-to-long v8, v1

    xor-long/2addr v6, v8

    invoke-static {v6, v7, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    int-to-long v3, v3

    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v3

    int-to-long v7, v1

    xor-long/2addr v3, v7

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    int-to-long v6, v6

    :goto_0
    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto/16 :goto_4

    :cond_1
    instance-of v1, v7, Ljava/lang/Enum;

    if-eqz v1, :cond_2

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v3

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    int-to-long v6, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v3

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result v6

    iget-object v7, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_5

    if-eqz v3, :cond_4

    if-ne v6, v4, :cond_4

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v6

    int-to-long v8, v1

    xor-long/2addr v6, v8

    invoke-static {v6, v7, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    int-to-long v3, v3

    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v3

    int-to-long v7, v1

    xor-long/2addr v3, v7

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    int-to-long v6, v6

    :goto_2
    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_4

    :cond_5
    instance-of v1, v7, Ljava/lang/Enum;

    if-eqz v1, :cond_6

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v3

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    int-to-long v6, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :goto_4
    iget v1, v0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getKeyInfos()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getKeyInfos()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getUsed()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastToSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v7

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v11, v10, :cond_c

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;

    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/LinkPending;->nodePositionOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v15

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v17

    add-int v15, v15, v17

    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getNodes()I

    move-result v4

    invoke-virtual {v2, v15, v4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getHandle()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/LinkPending;->updateNodeCount(II)Z

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getHandle()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(J)V

    invoke-direct {v0}, Landroidx/compose/runtime/LinkComposer;->recordDelete()V

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipGroup()I

    :goto_6
    add-int/lit8 v11, v11, 0x1

    :cond_7
    :goto_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    if-ge v12, v9, :cond_7

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;

    if-eq v2, v14, :cond_b

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/LinkPending;->nodePositionOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v4

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v4, v13, :cond_a

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/LinkPending;->updatedNodeCountOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v14

    iget-object v15, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v18

    move-object/from16 v19, v5

    add-int v5, v4, v18

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v18

    move-object/from16 v20, v6

    add-int v6, v13, v18

    invoke-virtual {v15, v5, v6, v14}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveNode(III)V

    invoke-virtual {v3, v4, v13, v14}, Landroidx/compose/runtime/LinkPending;->registerMoveNode(III)V

    goto :goto_8

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_8

    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    add-int/lit8 v11, v11, 0x1

    :goto_8
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/LinkPending;->updatedNodeCountOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v2

    add-int/2addr v13, v2

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_7

    :cond_c
    move-object/from16 v19, v5

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    move-object/from16 v5, v19

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipToGroupEnd()V

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v2

    if-nez v2, :cond_f

    iget v3, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    iget-object v4, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getPreviousSibling()I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v5

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v5

    :goto_9
    move/from16 v21, v6

    move v6, v4

    move/from16 v4, v21

    if-ltz v4, :cond_e

    iget-object v7, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v7

    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->makeGroupHandle(III)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent(J)V

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nodeCount(I)I

    move-result v6

    iget-object v7, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v7, v3, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    add-int/lit8 v6, v4, 0x1

    aget v6, v5, v6

    goto :goto_9

    :cond_e
    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v4, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v4

    iget-object v5, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getRemainingSlots()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeTailGroupsAndValues(II)V

    :cond_f
    if-eqz v2, :cond_11

    if-eqz p1, :cond_10

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->endNodeInsert()V

    const/4 v1, 0x1

    :cond_10
    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v3

    iput v3, v0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->endEmpty()V

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->endGroup()I

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getInEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->lastRoot()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/LinkComposer;->recordInsert(J)V

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroidx/compose/runtime/LinkComposer;->inserting:Z

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-static {v3, v4}, Landroidx/compose/runtime/LinkComposerKt;->access$toInsertAddress(J)J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v5}, Landroidx/compose/runtime/LinkComposer;->updateChildNodeCount(JI)V

    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/runtime/LinkComposer;->updateNodeCountOverrides(JI)V

    goto :goto_b

    :cond_11
    if-eqz p1, :cond_12

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_12
    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentHandle()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v5

    if-eq v1, v5, :cond_13

    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/runtime/LinkComposer;->updateNodeCountOverrides(JI)V

    :cond_13
    if-eqz p1, :cond_14

    const/16 v16, 0x1

    goto :goto_a

    :cond_14
    move/from16 v16, v1

    :goto_a
    invoke-static {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v1

    iput v1, v0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->endGroup()V

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    move/from16 v1, v16

    :cond_15
    :goto_b
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/LinkComposer;->exitGroup(IZ)V

    return-void
.end method

.method private final endGroup()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    return-void
.end method

.method private final endRoot()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime()V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->finalizeCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    return-void
.end method

.method private final ensureBuilder()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRecordSourceInformation()Z

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRecordCallByInformation()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;ZZ)V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->buildStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->builderHasAProvider:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_0
    return-void
.end method

.method private final enterGroup(ZLandroidx/compose/runtime/LinkPending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    invoke-static {v0, v1}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    :cond_0
    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    return-void
.end method

.method private final enterRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->compositionToken:I

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionObserverHolder;->current()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeEnter(Landroidx/compose/runtime/RecomposeScope;)V

    :cond_0
    return-void
.end method

.method private final executeChangesImmediatelyWithoutApplier()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openEditor()Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeListKt;->asLinkBufferChangeList(Landroidx/compose/runtime/Changes;)Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/ThrowingApplierStub;->INSTANCE:Landroidx/compose/runtime/ThrowingApplierStub;

    sget-object v3, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->INSTANCE:Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object p0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->close()V

    throw p0
.end method

.method private final exitGroup(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/LinkPending;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkPending;->getGroupIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/LinkPending;->setGroupIndex(I)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    return-void
.end method

.method private final exitRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)Lnl3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ")",
            "Lnl3<",
            "Landroidx/compose/runtime/Composition;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->current()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeExit(Landroidx/compose/runtime/RecomposeScope;)V

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/LinkComposer;->compositionToken:I

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lnl3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/LinkComposer;->doCompose_aFTiNEg$lambda$1$1(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method

.method private final finalizeCompose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->finalizeComposition()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Start/end imbalance"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->cleanUpCompose()V

    return-void
.end method

.method public static synthetic getApplyCoroutineContext$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCompositeKeyHashCode$annotations()V
    .locals 0

    return-void
.end method

.method private final insertMovableContentGuarded(Ljava/util/List;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb36<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget-object v10, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->lateChanges:Landroidx/compose/runtime/Changes;

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeListKt;->asLinkBufferChangeList(Landroidx/compose/runtime/Changes;)Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v11

    :try_start_0
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->resetSlots()V

    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_8

    :try_start_1
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v2, v0, Lb36;->b:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    new-instance v15, Landroidx/compose/runtime/internal/IntRef;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v15, v13, v7, v8}, Landroidx/compose/runtime/internal/IntRef;-><init>(IILjh2;)V

    iget-object v7, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v7, v15, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    iget-object v4, v1, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v4

    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {v1, v13}, Landroidx/compose/runtime/LinkComposer;->resetInsertBuilder(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v11

    goto/16 :goto_12

    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide/from16 v30, v2

    move-object v3, v4

    move-wide/from16 v4, v30

    :try_start_4
    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-direct {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;-><init>()V

    new-instance v0, Lkq4;

    invoke-direct/range {v0 .. v6}, Lkq4;-><init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v0

    move-object v0, v2

    move-object/from16 v16, v3

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_5
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/LinkComposer;->recomposeMovableContent$default(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;ILjava/util/List;Lll3;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v2, v0, v15}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move/from16 v19, v12

    move/from16 v18, v14

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :try_start_7
    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_16

    if-eqz v7, :cond_2

    :try_start_8
    invoke-virtual {v7}, Landroidx/compose/runtime/MovableContentState;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_3

    :cond_2
    :try_start_9
    invoke-virtual {v0}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_16

    :cond_3
    if-eqz v7, :cond_4

    :try_start_a
    invoke-virtual {v7}, Landroidx/compose/runtime/MovableContentState;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    move-wide/from16 v16, v4

    goto :goto_4

    :cond_4
    :try_start_b
    invoke-virtual {v0}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v3

    goto :goto_3

    :goto_4
    invoke-static {v2, v3}, Landroidx/compose/runtime/LinkComposerKt;->access$collectNodesFrom(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    if-nez v5, :cond_5

    :try_start_c
    iget-object v5, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v5, v4, v15}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v5

    iget-object v13, v1, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-static {v5, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v5

    int-to-long v8, v5

    and-long v8, v8, v16

    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v5

    move/from16 v18, v14

    int-to-long v13, v5

    and-long v13, v13, v16

    invoke-direct {v1, v13, v14}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v5, v4

    invoke-direct {v1, v8, v9, v5}, Landroidx/compose/runtime/LinkComposer;->updateChildNodeCount(JI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :cond_5
    move/from16 v18, v14

    :goto_5
    :try_start_d
    iget-object v4, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v5, v1, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v4, v7, v5, v0, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_16

    :try_start_e
    iget-object v9, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v13, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iget-object v14, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v2, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_15

    :try_start_f
    iput-object v8, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(I)V

    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-direct {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;-><init>()V

    iget-object v3, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_14

    :try_start_10
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    iget-object v5, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    move-object/from16 v16, v8

    :try_start_11
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    move-result v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    move-object/from16 v17, v0

    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    move v0, v12

    iget-object v12, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    move/from16 v19, v0

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :try_start_13
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v2

    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    invoke-virtual {v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object v2

    invoke-static {v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v22

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    const-wide/16 v24, -0x1

    :try_start_14
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/MovableContentStateReference;->transferPendingInvalidations$runtime()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    move-object v3, v2

    :try_start_15
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object/from16 v26, v3

    :try_start_16
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    move-object/from16 v27, v2

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime()Ljava/util/List;

    move-result-object v17

    move/from16 v28, v2

    new-instance v2, Llq4;

    invoke-direct {v2, v1, v6}, Llq4;-><init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move-object v6, v14

    move-object v14, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v13

    move-object v13, v6

    move-object v6, v2

    move-object/from16 v29, v10

    move-object/from16 v10, v20

    move-object/from16 v2, v27

    move-object/from16 v20, v7

    move-object v7, v4

    move/from16 v4, v28

    :try_start_17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/LinkComposer;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;ILjava/util/List;Lll3;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    if-ne v13, v0, :cond_6

    move-wide/from16 v2, v22

    goto :goto_6

    :cond_6
    move-wide/from16 v2, v24

    :goto_6
    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v10, v15}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :try_start_1b
    iput-object v9, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-object/from16 v2, v26

    iput-object v2, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    move-object/from16 v3, v21

    iput-object v3, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->disposeResolvedMovableState(Landroidx/compose/runtime/MovableContentState;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :goto_7
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v9, p1

    move-object/from16 v11, v17

    move/from16 v12, v19

    move-object/from16 v10, v29

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_8
    move-object/from16 v2, v17

    move-object/from16 v1, v29

    goto/16 :goto_12

    :catchall_5
    move-exception v0

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v2, v26

    goto/16 :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v2, v26

    goto/16 :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v2, v26

    goto/16 :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v2, v26

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object v7, v4

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v11, v21

    move-object/from16 v13, v26

    :goto_9
    move-object v14, v5

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object v7, v4

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object/from16 v11, v21

    move-object v13, v3

    move-object v3, v14

    goto :goto_9

    :catchall_c
    move-exception v0

    move-object v3, v13

    move-object v13, v2

    move-object v2, v3

    move-object v7, v4

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v3, v14

    move-object/from16 v11, v21

    goto :goto_9

    :goto_a
    :try_start_1d
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object v4, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v13, v4, :cond_7

    move-wide/from16 v4, v22

    goto :goto_b

    :cond_7
    move-wide/from16 v4, v24

    :goto_b
    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_d

    :catchall_e
    move-exception v0

    move-object v7, v4

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v11, v21

    :goto_c
    move-object v14, v5

    goto :goto_d

    :catchall_f
    move-exception v0

    move-object v7, v4

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object v11, v3

    move-object v3, v14

    goto :goto_c

    :goto_d
    :try_start_1e
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_f

    :catchall_11
    move-exception v0

    move-object v7, v4

    :goto_e
    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object v11, v3

    move-object v3, v14

    goto :goto_f

    :catchall_12
    move-exception v0

    move-object v7, v4

    move-object/from16 v16, v8

    goto :goto_e

    :goto_f
    :try_start_1f
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    :catchall_13
    move-exception v0

    goto :goto_10

    :catchall_14
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move-object v2, v13

    move-object v3, v14

    :goto_10
    :try_start_20
    iput-object v9, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-object v2, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v3, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :catchall_15
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    :goto_11
    :try_start_21
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    throw v0

    :catchall_16
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v17, v11

    goto/16 :goto_8

    :cond_8
    move-object/from16 v29, v10

    move-object/from16 v17, v11

    move v0, v13

    invoke-direct {v1, v0}, Landroidx/compose/runtime/LinkComposer;->resetInsertBuilder(Z)V

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endMovableContentPlacement()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object/from16 v2, v17

    move-object/from16 v1, v29

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    return-void

    :goto_12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    throw v0
.end method

.method private static final insertMovableContentGuarded$lambda$0$0$0$0(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)Lj59;
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v3

    move-object/from16 v0, p1

    :try_start_0
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    iget-object v4, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v5, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iget-object v6, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v0, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    :try_start_1
    iput-object v0, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v7, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    iget-object v9, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    move-wide/from16 v10, p3

    invoke-static {v9, v10, v11}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    invoke-virtual {v9}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object v10

    invoke-static {v9}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v11

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    move-result-object v15

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/MovableContentStateReference;->getLocals$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime()Ljava/lang/Object;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-wide/from16 p3, v11

    const/4 v11, 0x1

    :try_start_4
    invoke-direct {v1, v15, v13, v14, v11}, Landroidx/compose/runtime/LinkComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    if-ne v10, v0, :cond_0

    move-wide/from16 v11, p3

    goto :goto_0

    :cond_0
    const-wide/16 v11, -0x1

    :goto_0
    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iput-object v4, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-object v5, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v6, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-wide/from16 p3, v11

    :goto_1
    :try_start_8
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object v11, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v10, v11, :cond_1

    move-wide/from16 v11, p3

    goto :goto_2

    :cond_1
    const-wide/16 v11, -0x1

    :goto_2
    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    :try_start_a
    iput-object v4, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-object v5, v1, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v6, v1, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    throw v0
.end method

.method private static final insertMovableContentGuarded$lambda$0$0$1$0$0$0$0$0(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getLocals$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Landroidx/compose/runtime/LinkComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    const v2, 0x78cc281

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/LinkComposer;->startMovableGroup(ILjava/lang/Object;)V

    invoke-direct {v1, v4}, Landroidx/compose/runtime/LinkComposer;->updateSlot(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v11

    const-wide/32 v5, 0x78cc281

    const/4 v13, 0x0

    :try_start_0
    iput-wide v5, v1, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addFlags(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v5, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-direct {v1, v0}, Landroidx/compose/runtime/LinkComposer;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v7

    const/16 v8, 0xca

    invoke-direct {v1, v8, v2, v7, v0}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    iput-object v13, v1, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    iput-boolean v6, v1, Landroidx/compose/runtime/LinkComposer;->builderHasAProvider:Z

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent(I)I

    move-result v0

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v7

    new-instance v2, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v5

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v6

    sget-object v8, Lkx2;->b:Lkx2;

    invoke-direct {v1}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V

    iget-object v0, v1, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    goto :goto_2

    :cond_4
    iget-boolean v0, v1, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    iput-boolean v5, v1, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v5, v1, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->seekTo(JZ)V

    iget-object v2, v1, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    const-wide/16 v7, -0x1

    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    sget-object v5, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AnchorAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object v9

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v14

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Lnq4;

    invoke-direct {v5, v3, v4}, Lnq4;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    const v3, -0x49fb8967

    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lbm3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object v3, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v9, v3, :cond_5

    move-wide v7, v14

    :cond_5
    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    iput-boolean v0, v1, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-direct {v1}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    iput-object v13, v1, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-wide v11, v1, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->endMovableGroup()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object v3, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v9, v3, :cond_6

    move-wide v7, v14

    :cond_6
    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    new-instance v2, Lds1;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lds1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->attachComposeStackTrace(Ljava/lang/Throwable;Lll3;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-direct {v1}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    iput-object v13, v1, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-wide v11, v1, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer;->endMovableGroup()V

    throw v0
.end method

.method private static final invokeMovableContentLambda$lambda$0$0(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lj59;
    .locals 4

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.LinkComposer.invokeMovableContentLambda.<anonymous>.<anonymous> (LinkComposer.kt:2031)"

    const v3, -0x49fb8967

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/MovableContent;->getContent()Ldm3;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeMovableContentLambda$lambda$1(Landroidx/compose/runtime/LinkComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentStackTrace()Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method

.method private final isGroupAfterCurrentReaderPosition(J)Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/LinkComposerKt;->access$firstGroupInTopologicalOrder(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;JJ)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final rGroupIndexOf(I)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->parentOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ltz v0, :cond_3

    if-ne v0, p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasObjectKey(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    goto :goto_1

    :cond_3
    :goto_2
    return v2
.end method

.method private final recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;ILjava/util/List;Lll3;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ControlledComposition;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lll3<",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    move-object v3, p4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb36;

    iget-object v5, v4, Lb36;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v4, v4, Lb36;->c:Ljava/lang/Object;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/LinkComposer;->tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/LinkComposer;->tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p2, p3, p5}, Landroidx/compose/runtime/ControlledComposition;->delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILll3;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    invoke-interface {p5}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    return-object p1

    :goto_2
    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    throw p1
.end method

.method public static synthetic recomposeMovableContent$default(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;ILjava/util/List;Lll3;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/4 p3, -0x1

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    sget-object p4, Lkx2;->b:Lkx2;

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/LinkComposer;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;ILjava/util/List;Lll3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final recomposeToGroupEnd()V
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v4

    iget v5, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v6

    iget v8, v0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iget v9, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    const/4 v15, -0x1

    if-eq v10, v15, :cond_17

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->recomposeRequired(I)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(I)V

    move/from16 v16, v2

    invoke-direct {v0, v10}, Landroidx/compose/runtime/LinkComposer;->requireRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    const-wide v17, 0xffffffffL

    iget-object v13, v0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v13, v2}, Landroidx/compose/runtime/collection/ScopeMap;->get-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->isInvalidFor(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x0

    iput-object v12, v0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-direct {v0, v10}, Landroidx/compose/runtime/LinkComposer;->rGroupIndexOf(I)I

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->compose(Landroidx/compose/runtime/Composer;)V

    iput-object v12, v0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move/from16 v2, v16

    move v12, v2

    goto :goto_3

    :cond_0
    iget-object v13, v0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v13, v2}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    iget-object v13, v0, Landroidx/compose/runtime/LinkComposer;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v13}, Landroidx/compose/runtime/CompositionObserverHolder;->current()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13, v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeEnter(Landroidx/compose/runtime/RecomposeScope;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v13, v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeExit(Landroidx/compose/runtime/RecomposeScope;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v13, v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeExit(Landroidx/compose/runtime/RecomposeScope;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V

    :goto_1
    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v2}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    move/from16 v16, v2

    const-wide v17, 0xffffffffL

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v13

    if-nez v2, :cond_d

    if-eq v13, v15, :cond_d

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasRecomposeRequired(I)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/MovableContent;

    if-eqz v15, :cond_3

    move v15, v12

    const-wide/32 v11, 0x78cc281

    iput-wide v11, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    move/from16 v23, v2

    move/from16 v24, v15

    goto/16 :goto_6

    :cond_3
    move v15, v12

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result v11

    iget v12, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v23, v2

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v14, :cond_5

    if-eqz v2, :cond_4

    const/16 v14, 0xcf

    if-ne v11, v14, :cond_4

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move/from16 v24, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v14

    const/4 v11, 0x3

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    move-wide/from16 v25, v14

    int-to-long v14, v2

    xor-long v14, v25, v14

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    int-to-long v11, v12

    xor-long/2addr v11, v14

    iput-wide v11, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_6

    :cond_4
    move/from16 v24, v15

    const/4 v2, 0x3

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v14

    invoke-static {v14, v15, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    move-wide/from16 v25, v14

    int-to-long v14, v11

    xor-long v14, v25, v14

    invoke-static {v14, v15, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    int-to-long v11, v12

    xor-long/2addr v11, v14

    :goto_4
    iput-wide v11, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_6

    :cond_5
    move/from16 v24, v15

    const/4 v2, 0x3

    instance-of v11, v14, Ljava/lang/Enum;

    if-eqz v11, :cond_6

    check-cast v14, Ljava/lang/Enum;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v14

    invoke-static {v14, v15, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    int-to-long v11, v11

    xor-long/2addr v11, v14

    invoke-static {v11, v12, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_5

    :goto_6
    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/IntStack;->push(I)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isNode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->node(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput v2, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput v2, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    goto :goto_9

    :cond_8
    move/from16 v23, v2

    move/from16 v24, v12

    const/4 v2, 0x0

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isNode(I)Z

    move-result v12

    if-eqz v12, :cond_9

    move/from16 v12, v16

    goto :goto_8

    :cond_9
    int-to-long v14, v10

    and-long v14, v14, v17

    invoke-direct {v0, v14, v15}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v12

    :goto_8
    add-int/2addr v11, v12

    iput v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasObjectKey(I)Z

    move-result v11

    if-nez v11, :cond_a

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    :cond_a
    :goto_9
    if-eqz v20, :cond_c

    move v10, v13

    :cond_b
    move/from16 v2, v16

    move/from16 v12, v24

    goto/16 :goto_0

    :cond_c
    const/4 v11, -0x1

    goto :goto_a

    :cond_d
    move/from16 v23, v2

    move/from16 v24, v12

    const/4 v2, 0x0

    move v11, v15

    :goto_a
    if-ne v13, v11, :cond_f

    if-nez v23, :cond_f

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isNode(I)Z

    move-result v12

    if-eqz v12, :cond_e

    move/from16 v12, v16

    goto :goto_b

    :cond_e
    int-to-long v12, v10

    and-long v12, v12, v17

    invoke-direct {v0, v12, v13}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v12

    :goto_b
    add-int/2addr v11, v12

    iput v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasObjectKey(I)Z

    move-result v11

    if-nez v11, :cond_f

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    :cond_f
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v11

    move v12, v11

    move v11, v10

    move v10, v12

    :goto_c
    const/4 v12, -0x1

    if-ne v10, v12, :cond_b

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->parentOf(I)I

    move-result v11

    if-eq v11, v12, :cond_16

    if-ne v11, v4, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isNode(I)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_11
    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v10}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v10

    iput v10, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v10}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v10

    int-to-long v13, v11

    and-long v13, v13, v17

    invoke-direct {v0, v13, v14}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v13

    add-int/2addr v10, v13

    iput v10, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result v10

    iget v13, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_13

    const/16 v14, 0xcf

    if-eqz v15, :cond_12

    if-ne v10, v14, :cond_12

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v22

    int-to-long v12, v13

    xor-long v12, v22, v12

    const/4 v15, 0x3

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    move-wide/from16 v21, v12

    int-to-long v12, v2

    xor-long v12, v21, v12

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    :goto_d
    move/from16 v22, v14

    goto :goto_f

    :cond_12
    const/4 v15, 0x3

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v21

    int-to-long v12, v13

    xor-long v12, v21, v12

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    move-wide/from16 v21, v12

    int-to-long v12, v10

    xor-long v12, v21, v12

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_d

    :cond_13
    const/4 v15, 0x3

    const/16 v22, 0xcf

    instance-of v2, v14, Ljava/lang/Enum;

    if-eqz v2, :cond_14

    check-cast v14, Ljava/lang/Enum;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v12

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    move-wide/from16 v25, v12

    int-to-long v12, v2

    xor-long v12, v25, v12

    invoke-static {v12, v13, v15}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_f

    :cond_14
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :goto_f
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasObjectKey(I)Z

    move-result v2

    if-nez v2, :cond_15

    iget v2, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    :cond_15
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v10

    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_16
    :goto_10
    move/from16 v12, v24

    goto :goto_11

    :cond_17
    const-wide v17, 0xffffffffL

    :goto_11
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->restoreParent(I)V

    if-eqz v12, :cond_18

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipToGroupEnd()V

    int-to-long v2, v4

    and-long v2, v2, v17

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v2

    add-int/2addr v5, v2

    iput v5, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    add-int/2addr v8, v2

    iput v8, v0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iput v9, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    goto :goto_12

    :cond_18
    invoke-direct {v0}, Landroidx/compose/runtime/LinkComposer;->skipReaderToGroupEnd()V

    :goto_12
    iput-wide v6, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    iput-boolean v1, v0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    return-void
.end method

.method private final recordDelete()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent(J)V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeGroup()V

    return-void
.end method

.method private final recordInsert(J)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;J)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {v1, v0, p1, p2, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;JLandroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;)V

    new-instance p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    return-void
.end method

.method private final recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void
.end method

.method private final reportAllMovableContent()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->containsFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->updateMovingInvalidations$runtime()V

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/LinkComposer;->setDeferredChanges$runtime(Landroidx/compose/runtime/Changes;)V

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v1

    :try_start_0
    iput-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->rootHandle()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    throw p0

    :cond_0
    return-void
.end method

.method private final reportFreeMovableContent(J)V
    .locals 5

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0, p1, p2, v1, v3}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/LinkComposer;JZI)I

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_2
    return-void
.end method

.method private static final reportFreeMovableContent$createMovableContentReferenceForGroup(Landroidx/compose/runtime/LinkComposer;ILjava/util/List;)Landroidx/compose/runtime/MovableContentStateReference;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/LinkComposer;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;)",
            "Landroidx/compose/runtime/MovableContentStateReference;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/MovableContent;

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->get(II)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/LinkComposerKt;->findInvalidations-Vpaz1Sg(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;ILandroidx/collection/MutableScatterMap;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v6

    new-instance v1, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v5

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V

    return-object v1
.end method

.method private static final reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/LinkComposer;I)Landroidx/compose/runtime/MovableContentStateReference;
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v0

    const/high16 v1, 0x10000000

    and-int v2, v0, v1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_7

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v4

    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget-object v6, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v6

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_2

    invoke-static {p0, v4}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/LinkComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v7

    if-nez v6, :cond_3

    if-eq v7, v5, :cond_3

    iget-object v6, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v6

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v6

    move v8, v6

    move v6, v4

    move v4, v8

    :goto_2
    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->parentOf(I)I

    move-result v6

    if-eq v6, v5, :cond_5

    if-ne v6, p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v4

    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object v3

    :cond_6
    invoke-static {p0, p1, v3}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent$createMovableContentReferenceForGroup(Landroidx/compose/runtime/LinkComposer;ILjava/util/List;)Landroidx/compose/runtime/MovableContentStateReference;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v3
.end method

.method private static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/LinkComposer;JZI)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-object v4, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v4

    const/high16 v5, 0x10000000

    and-int v6, v4, v5

    const v7, 0x7fffff

    const/high16 v8, 0x800000

    const/4 v9, 0x1

    if-ne v6, v5, :cond_4

    invoke-static {v0, v2}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/LinkComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v10

    iget-object v11, v0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v6, v10, v11, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->releaseMovableGroup(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovementAndDeleteNode(II)V

    goto/16 :goto_a

    :cond_2
    iget-object v0, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v0

    and-int v1, v0, v8

    if-ne v1, v8, :cond_3

    :goto_0
    move v3, v9

    goto/16 :goto_a

    :cond_3
    and-int/2addr v0, v7

    move v3, v0

    goto/16 :goto_a

    :cond_4
    const/high16 v5, 0x40000000    # 2.0f

    and-int v6, v4, v5

    if-ne v6, v5, :cond_9

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->get(II)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroidx/compose/runtime/RememberObserverHolder;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_1

    :cond_5
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    instance-of v3, v1, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;

    if-eqz v3, :cond_7

    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;->getRef()Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->getComposers()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/LinkComposer;

    invoke-direct {v3}, Landroidx/compose/runtime/LinkComposer;->reportAllMovableContent()V

    iget-object v5, v0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v3}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_3

    :cond_8
    iget-object v0, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v0

    and-int v1, v0, v8

    if-ne v1, v8, :cond_3

    goto :goto_0

    :cond_9
    const/high16 v5, 0x20000000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_a

    goto :goto_4

    :cond_a
    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_12

    :goto_4
    iget-object v5, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v2

    int-to-long v6, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    const-wide v12, -0x100000000L

    or-long/2addr v6, v12

    move v2, v3

    :goto_5
    invoke-static {v6, v7}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_11

    invoke-static {v6, v7}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v12

    iget-object v13, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v13

    and-int/2addr v13, v8

    if-ne v13, v8, :cond_b

    move v13, v9

    goto :goto_6

    :cond_b
    move v13, v3

    :goto_6
    if-eqz v13, :cond_c

    iget-object v14, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    iget-object v14, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    iget-object v15, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->node(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    :cond_c
    if-nez v13, :cond_e

    if-eqz p3, :cond_d

    goto :goto_7

    :cond_d
    move v12, v3

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v9

    :goto_8
    if-eqz v13, :cond_f

    move v14, v3

    goto :goto_9

    :cond_f
    add-int v14, v1, v2

    :goto_9
    invoke-static {v0, v6, v7, v12, v14}, Landroidx/compose/runtime/LinkComposer;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/LinkComposer;JZI)I

    move-result v12

    add-int/2addr v2, v12

    if-eqz v13, :cond_10

    iget-object v12, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    iget-object v12, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v12}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_10
    invoke-static {v6, v7}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v12

    invoke-static {v6, v7}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v6

    int-to-long v12, v12

    const/16 v7, 0x20

    shl-long/2addr v12, v7

    int-to-long v6, v6

    and-long/2addr v6, v10

    or-long/2addr v6, v12

    goto :goto_5

    :cond_11
    move v3, v2

    goto :goto_a

    :cond_12
    iget-object v0, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v0

    and-int v1, v0, v8

    if-ne v1, v8, :cond_3

    goto/16 :goto_0

    :goto_a
    and-int v0, v4, v8

    if-ne v0, v8, :cond_13

    return v9

    :cond_13
    return v3
.end method

.method private final requireRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->get(II)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Cannot obtain RecomposeScope. Group does not have a corresponding slot."

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    instance-of p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected a RecomposeScope in the first non-utility slot, found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object p0
.end method

.method private final requiresRecomposition(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->hasRecomposeRequired(I)Z

    move-result p0

    return p0
.end method

.method private final resetInsertBuilder(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->build()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->dispose()V

    :cond_0
    new-instance p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;ZZ)V

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->close()V

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    return-void
.end method

.method private final skipGroup()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipGroup()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    return-void
.end method

.method private final skipReaderToGroupEnd()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentNodeCount()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipToGroupEnd()V

    return-void
.end method

.method private final stackTraceForGroup(ILjava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReaderKt;->traceForGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    throw p1
.end method

.method private static final stackTraceForValue$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_3

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserverHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v1

    :cond_1
    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private final start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0}, Landroidx/compose/runtime/LinkComposer;->validateNodeNotExpected()V

    iget v4, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    const/4 v6, 0x3

    if-nez v1, :cond_1

    if-eqz v5, :cond_0

    const/16 v8, 0xcf

    if-ne v2, v8, :cond_0

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v9

    invoke-static {v9, v10, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v11, v8

    xor-long v8, v9, v11

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v4

    xor-long/2addr v8, v10

    iput-wide v8, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v2

    xor-long/2addr v8, v10

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v4

    xor-long/2addr v8, v10

    :goto_0
    iput-wide v8, v0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_2

    :cond_1
    instance-of v4, v1, Ljava/lang/Enum;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v4

    xor-long/2addr v8, v10

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :goto_2
    const/4 v4, 0x1

    if-nez v1, :cond_3

    iget v6, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    :cond_3
    sget-object v6, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v8

    if-eq v3, v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v10

    const/high16 v12, 0x3000000

    const/high16 v13, 0x2000000

    const/high16 v14, 0x1800000

    const/high16 v15, 0x800000

    const/4 v9, 0x0

    if-eqz v10, :cond_d

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->beginEmpty()V

    move-object v10, v1

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    if-eqz v8, :cond_6

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_5

    move v3, v15

    goto :goto_4

    :cond_5
    move v3, v14

    :goto_4
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_6
    if-eqz v5, :cond_9

    if-nez v10, :cond_7

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto :goto_5

    :cond_7
    move-object v4, v10

    :goto_5
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_8

    move v3, v13

    goto :goto_6

    :cond_8
    move v3, v12

    :goto_6
    const/4 v6, 0x0

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_9
    if-nez v10, :cond_a

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto :goto_7

    :cond_a
    move-object v4, v10

    :goto_7
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_b

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    const/high16 v3, 0x1000000

    :goto_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    if-eqz v10, :cond_c

    move-object v2, v1

    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/runtime/LinkComposerKt;->access$toInsertAddress(J)J

    move-result-wide v4

    const/4 v6, -0x1

    move-object v3, v7

    const/4 v7, 0x0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;-><init>(ILjava/lang/Object;JII)V

    iget v2, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v10}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v1, v2}, Landroidx/compose/runtime/LinkPending;->registerInsert(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/LinkPending;->recordUsed(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)Z

    :cond_c
    invoke-direct {v0, v8, v9}, Landroidx/compose/runtime/LinkComposer;->enterGroup(ZLandroidx/compose/runtime/LinkPending;)V

    return-void

    :cond_d
    move-object v10, v1

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getNode-9udXigM()I

    move-result v1

    if-eq v3, v1, :cond_e

    goto :goto_a

    :cond_e
    iget-boolean v1, v0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v1, 0x0

    :goto_b
    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    if-nez v3, :cond_11

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupKey()I

    move-result v3

    if-nez v1, :cond_10

    if-ne v3, v2, :cond_10

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {v0, v8, v5}, Landroidx/compose/runtime/LinkComposer;->startReaderGroup(ZLjava/lang/Object;)V

    goto :goto_c

    :cond_10
    new-instance v3, Landroidx/compose/runtime/LinkPending;

    iget-object v6, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->extractKeys()Ljava/util/List;

    move-result-object v6

    iget v11, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-direct {v3, v6, v11}, Landroidx/compose/runtime/LinkPending;-><init>(Ljava/util/List;I)V

    iput-object v3, v0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    :cond_11
    :goto_c
    iget-object v11, v0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    if-eqz v11, :cond_1c

    invoke-virtual {v11, v2, v10}, Landroidx/compose/runtime/LinkPending;->getNext(ILjava/lang/Object;)Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/LinkPending;->recordUsed(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)Z

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getHandle()J

    move-result-wide v1

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/LinkPending;->nodePositionOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/LinkPending;->slotPositionOf(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/LinkPending;->getGroupIndex()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/LinkPending;->getGroupIndex()I

    move-result v7

    invoke-virtual {v11, v4, v7}, Landroidx/compose/runtime/LinkPending;->registerMoveSlot(II)V

    if-lez v6, :cond_12

    iget-object v4, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v11}, Landroidx/compose/runtime/LinkPending;->groupHandleOfNextUnmovedGroup()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(J)V

    iget-object v4, v0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveGroup(I)V

    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getIndex()I

    move-result v3

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/LinkPending;->markGroupLocationReconciled(I)V

    iget-object v3, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->reposition(J)V

    invoke-direct {v0, v8, v5}, Landroidx/compose/runtime/LinkComposer;->startReaderGroup(ZLjava/lang/Object;)V

    goto/16 :goto_15

    :cond_13
    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->beginEmpty()V

    iput-boolean v4, v0, Landroidx/compose/runtime/LinkComposer;->inserting:Z

    iput-object v9, v0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-direct {v0}, Landroidx/compose/runtime/LinkComposer;->ensureBuilder()V

    iget-object v1, v0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    if-eqz v8, :cond_15

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_14

    move v3, v15

    goto :goto_d

    :cond_14
    move v3, v14

    :goto_d
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    move-object v2, v1

    goto :goto_13

    :cond_15
    if-eqz v5, :cond_18

    if-nez v10, :cond_16

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto :goto_f

    :cond_16
    move-object v4, v10

    :goto_f
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_17

    move v3, v13

    goto :goto_10

    :cond_17
    move v3, v12

    :goto_10
    const/4 v6, 0x0

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_18
    if-nez v10, :cond_19

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto :goto_11

    :cond_19
    move-object v4, v10

    :goto_11
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_1a

    const/4 v3, 0x0

    goto :goto_12

    :cond_1a
    const/high16 v3, 0x1000000

    :goto_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :goto_13
    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/runtime/LinkComposerKt;->access$toInsertAddress(J)J

    move-result-wide v4

    const/4 v6, -0x1

    move-object v3, v7

    const/4 v7, 0x0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;-><init>(ILjava/lang/Object;JII)V

    iget v2, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-virtual {v11}, Landroidx/compose/runtime/LinkPending;->getStartIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v11, v1, v2}, Landroidx/compose/runtime/LinkPending;->registerInsert(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/LinkPending;->recordUsed(Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;)Z

    new-instance v9, Landroidx/compose/runtime/LinkPending;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_1b

    const/4 v2, 0x0

    goto :goto_14

    :cond_1b
    iget v2, v0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    :goto_14
    invoke-direct {v9, v1, v2}, Landroidx/compose/runtime/LinkPending;-><init>(Ljava/util/List;I)V

    :cond_1c
    :goto_15
    invoke-direct {v0, v8, v9}, Landroidx/compose/runtime/LinkComposer;->enterGroup(ZLandroidx/compose/runtime/LinkPending;)V

    return-void
.end method

.method private final startGroup(I)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 11
    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startReaderGroup(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->startNode()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->updateAuxData(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->startGroup()V

    return-void
.end method

.method private final startRoot()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v3}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime()V

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v4, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    invoke-static {v4}, Landroidx/compose/runtime/LinkComposerKt;->access$asInt(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/LinkComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    iput-object v3, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/LinkComposer;->setSourceMarkersEnabled$runtime(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->getLocalCompositionErrorContext()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/compose/runtime/StaticValueHolder;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Landroidx/compose/runtime/LinkComposer;->rootProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime(Ljava/util/Set;)V

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompositeKeyHashCode$runtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    invoke-direct {p0, v1, v3, v0, v3}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final unwrapRememberObserverHolder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private final updateChildNodeCount(JI)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v0

    if-eq v0, p3, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$isInsertHandle(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0, v3, v2, v1}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p0

    invoke-virtual {v0, p0, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0, v3, v2, v1}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$isInsertHandle(J)Z

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p0

    invoke-virtual {v0, p0, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_3
    return-void
.end method

.method private final updateCompositeKeyWhenWeEnterGroup(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const/16 p3, 0xcf

    if-ne p1, p3, :cond_0

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p3

    invoke-static {p3, p4, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p3

    int-to-long v1, p1

    xor-long/2addr p3, v1

    invoke-static {p3, p4, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p3

    int-to-long p1, p2

    xor-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p3

    invoke-static {p3, p4, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p3

    int-to-long v1, p1

    xor-long/2addr p3, v1

    invoke-static {p3, p4, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p3

    int-to-long p1, p2

    xor-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_1
    instance-of p1, p3, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p2

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p2

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void
.end method

.method private final updateCompositeKeyWhenWeEnterGroupKeyHash(II)V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    int-to-long v3, p1

    xor-long/2addr v0, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    int-to-long p1, p2

    xor-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void
.end method

.method private final updateCompositeKeyWhenWeExitGroup(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const/16 p3, 0xcf

    if-ne p1, p3, :cond_0

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p3

    int-to-long v1, p2

    xor-long p2, p3, v1

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p3

    int-to-long v1, p2

    xor-long p2, p3, v1

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_1
    instance-of p1, p3, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p2

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide p2

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p2

    int-to-long v1, p1

    xor-long p1, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void
.end method

.method private final updateCompositeKeyWhenWeExitGroupKeyHash(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v0

    int-to-long v2, p2

    xor-long/2addr v0, v2

    const/4 p2, 0x3

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    int-to-long v2, p1

    xor-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void
.end method

.method private final updateNodeCountOverrides(JI)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v0

    if-eq v0, p3, :cond_4

    sub-int/2addr p3, v0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->getSize-impl(Ljava/util/ArrayList;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/LinkComposer;->updatedNodeCount(J)I

    move-result v1

    add-int/2addr v1, p3

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/runtime/LinkComposer;->updateChildNodeCount(JI)V

    move v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Landroidx/compose/runtime/Stack;->peek-impl(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/LinkPending;

    if-eqz v4, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroidx/compose/runtime/LinkPending;->updateNodeCount(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$isInsertHandle(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentHandle()J

    move-result-wide p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p1

    add-int/lit8 p2, p1, 0x4

    aget p2, v1, p2

    const/high16 v2, 0x800000

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x2

    aget p1, v1, p1

    int-to-long p1, p1

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 2

    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;->build()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    const/16 v0, 0xcc

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderMaps()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateSlot(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Landroidx/compose/runtime/LinkComposer;->updateSlot(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    return-object p1
.end method

.method private final updateSlot(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updatedNodeCount(J)I
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$isInsertHandle(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroidx/collection/IntIntMap;->getOrDefault(II)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$isInsertHandle(J)Z

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroidx/collection/IntIntMap;->getOrDefault(II)I

    move-result p2

    if-ltz p2, :cond_2

    return p2

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    const p1, 0x7fffff

    and-int/2addr p0, p1

    return p0
.end method

.method private final validateNodeExpected()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    return-void
.end method

.method private final validateNodeNotExpected()V
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    if-eqz p0, :cond_0

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final withReader(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;Lll3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;",
            "Lll3<",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v3, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    :try_start_0
    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-object v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v2, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-object v1, p0, Landroidx/compose/runtime/LinkComposer;->nodeCountOverrides:Landroidx/collection/MutableIntIntMap;

    iput-object v2, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    throw p1
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lbm3<",
            "-TT;-TV;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->updateNode(Ljava/lang/Object;Lbm3;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->updateNode(Ljava/lang/Object;Lbm3;)V

    return-void
.end method

.method public buildContext()Landroidx/compose/runtime/CompositionContext;
    .locals 9

    const/16 v0, 0xce

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/ReusableLinkRememberObserverHolder;

    new-instance v1, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;

    new-instance v2, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v4

    iget-boolean v6, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v7

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl;->getObserverHolder$runtime()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;-><init>(Landroidx/compose/runtime/LinkComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V

    invoke-direct {v1, v2}, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;-><init>(Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;)V

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->getNullAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/ReusableLinkRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;->getRef()Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;

    move-result-object v0

    invoke-direct {v3}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;->updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    invoke-direct {v3}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer$CompositionContextHolder;->getRef()Landroidx/compose/runtime/LinkComposer$CompositionContextImpl;

    move-result-object p0

    return-object p0
.end method

.method public changed(B)Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 34
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(C)Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 30
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(D)Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 51
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(F)Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 46
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-static {p1, v0}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(I)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 55
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(J)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public changed(S)Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 38
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 39
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(Z)Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 44
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlot$runtime()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public changesApplied$runtime()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public collectParameterInformation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/LinkComposer;->setSourceMarkersEnabled$runtime(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->collectSourceInformation()V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->collectSourceInformation()V

    return-void
.end method

.method public composeContent--ZbOJvo$runtime(Landroidx/collection/MutableScatterMap;Lbm3;Landroidx/compose/runtime/ShouldPauseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-virtual {v0}, Landroidx/compose/runtime/Changes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected applyChanges() to have been called"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iput-object p3, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/LinkComposer;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lbm3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p3, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    return-void

    :catchall_0
    move-exception p1

    iput-object p3, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    throw p1
.end method

.method public consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createNode(Lll3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->validateNodeExpected()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "createNode() can only be called when inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentHandle()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->isInAnchorMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v3

    invoke-static {v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->createAndInsertNodeByAnchor(Lll3;ILandroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->insertFixups:Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentHandle()J

    move-result-wide v2

    invoke-virtual {v1, p1, v0, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;->createAndInsertNode(Lll3;IJ)V

    return-void
.end method

.method public deactivate$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-virtual {v0}, Landroidx/compose/runtime/Changes;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public deactivateToEndGroup(Z)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "No nodes can be emitted before calling deactivateToEndGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->skipReaderToGroupEnd()V

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->deactivateCurrentGroup()V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipToGroupEnd()V

    :cond_3
    return-void
.end method

.method public disableReusing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    return-void
.end method

.method public disableSourceInformation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/LinkComposer;->setSourceMarkersEnabled$runtime(Z)V

    return-void
.end method

.method public dispose$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->dispose()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime(Landroidx/compose/runtime/Composer;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->deactivate$runtime()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isDisposed:Z

    return-void
.end method

.method public enableReusing()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    return-void
.end method

.method public endDefaults()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInScope(Z)V

    :cond_0
    return-void
.end method

.method public endMovableGroup()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    return-void
.end method

.method public endNode()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    return-void
.end method

.method public endProvider()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public endProviders()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/LinkComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public endReplaceGroup()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    return-void
.end method

.method public endReplaceableGroup()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->endGroup()V

    return-void
.end method

.method public endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->exitRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)Lnl3;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endCompositionScope(Lnl3;Landroidx/compose/runtime/Composition;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getResuming()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResuming(Z)V

    iget-object v3, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setReusing(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getResetReusing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResetReusing(Z)V

    const/4 v3, -0x1

    iput v3, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setAnchor(Landroidx/compose/runtime/Anchor;)V

    :cond_5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    move-object v1, v0

    :cond_6
    invoke-direct {p0, v2}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    return-object v1
.end method

.method public endReusableGroup()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    iput-boolean v1, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    return-void
.end method

.method public endReuseFromRoot$runtime()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    const/16 v1, 0x64

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Cannot disable reuse from root if it was caused by other groups"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    iput-boolean v3, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    return-void
.end method

.method public endToMarker(I)V
    .locals 7

    const-string v0, "Traversing parent of group not in the slot table: "

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez p1, :cond_3

    neg-int p1, p1

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    new-instance v5, Landroidx/collection/MutableIntSet;

    invoke-direct {v5, v3, v2, v1}, Landroidx/collection/MutableIntSet;-><init>(IILjh2;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    move v6, p1

    :goto_0
    if-lez v6, :cond_0

    invoke-virtual {v5, v6}, Landroidx/collection/MutableIntSet;->add(I)Z

    add-int/lit8 v6, v6, 0x2

    aget v6, v1, v6

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    invoke-static {p1, v0}, Lh2;->b(ILjava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result p1

    invoke-virtual {v5, p1}, Landroidx/collection/IntSet;->contains(I)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isNode()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isNode()Z

    move-result v5

    invoke-direct {p0, v5}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    goto :goto_3

    :cond_4
    new-instance v4, Landroidx/collection/MutableIntSet;

    invoke-direct {v4, v3, v2, v1}, Landroidx/collection/MutableIntSet;-><init>(IILjh2;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    move v5, p1

    :goto_4
    if-lez v5, :cond_5

    invoke-virtual {v4, v5}, Landroidx/collection/MutableIntSet;->add(I)Z

    add-int/lit8 v5, v5, 0x2

    aget v5, v1, v5

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    if-nez v1, :cond_7

    invoke-static {p1, v0}, Lh2;->b(ILjava/lang/String;)V

    :cond_7
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    :goto_6
    invoke-virtual {v4, v0}, Landroidx/collection/IntSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->end(Z)V

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    goto :goto_6

    :cond_9
    return-void
.end method

.method public forceRecomposeScopes$runtime()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forceRecomposeScopes:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getApplier()Landroidx/compose/runtime/Applier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->applier:Landroidx/compose/runtime/Applier;

    return-object p0
.end method

.method public getApplyCoroutineContext()Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->applyCoroutineContext:Lo22;

    return-object p0
.end method

.method public getAreChildrenComposing$runtime()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/LinkComposer;->childrenComposing:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCompositeKeyHashCode()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-wide v0
.end method

.method public getComposition()Landroidx/compose/runtime/CompositionImpl;
    .locals 0

    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    return-object p0
.end method

.method public bridge synthetic getComposition()Landroidx/compose/runtime/ControlledComposition;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->_compositionData:Landroidx/compose/runtime/tooling/CompositionData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/LinkCompositionDataImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getComposition()Landroidx/compose/runtime/CompositionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/LinkCompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->_compositionData:Landroidx/compose/runtime/tooling/CompositionData;

    :cond_0
    return-object v0
.end method

.method public getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMarker()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result p0

    return p0
.end method

.method public getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    iget p0, p0, Landroidx/compose/runtime/LinkComposer;->childrenComposing:I

    if-nez p0, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->peek-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultsInvalid()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSkipping()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInvalid()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getDeferredChanges$runtime()Landroidx/compose/runtime/Changes;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->deferredChanges:Landroidx/compose/runtime/Changes;

    return-object p0
.end method

.method public getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHasPendingChanges$runtime()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-virtual {p0}, Landroidx/compose/runtime/Changes;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public final getInsertTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    return-object p0
.end method

.method public getInserting()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->inserting:Z

    return p0
.end method

.method public final getReader$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    return-object p0
.end method

.method public final getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    return-object p0
.end method

.method public getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getRecomposeScopeIdentity()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSkipping()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRequiresRecompose()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSourceMarkersEnabled$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->sourceMarkersEnabled:Z

    return p0
.end method

.method public insertMovableContent(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/LinkComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method

.method public insertMovableContentReferences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb36<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->insertMovableContentGuarded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->cleanUpCompose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->abortRoot()V

    throw p1
.end method

.method public isComposing$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    return p0
.end method

.method public final isDisposed$runtime()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->isDisposed:Z

    return p0
.end method

.method public joinKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/LinkComposerKt;->access$getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Landroidx/compose/runtime/JoinedKey;

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final nextSlot$runtime()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->validateNodeNotExpected()V

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final nextSlotForCache$runtime()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->validateNodeNotExpected()V

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez v1, :cond_1

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-static {v1}, Landroidx/compose/runtime/LinkComposerKt;->asLinkRememberObserverHolder(Landroidx/compose/runtime/RememberObserverHolder;)Landroidx/compose/runtime/LinkRememberObserverHolder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v3

    iget p0, p0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->updateRememberOrdering(Landroidx/compose/runtime/LinkRememberObserverHolder;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    :cond_2
    return-object v0
.end method

.method public parentKey$runtime()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupKey(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupKey(I)I

    move-result p0

    return p0
.end method

.method public parentStackTrace$runtime()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getComposition$runtime()Landroidx/compose/runtime/Composition;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-static {v1, p0}, Landroidx/compose/runtime/LinkComposerKt;->findSubcompositionContextGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Landroidx/compose/runtime/CompositionContext;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReaderKt;->traceForGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->getComposer$runtime()Landroidx/compose/runtime/InternalComposer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/InternalComposer;->parentStackTrace$runtime()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->close()V

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public prepareCompose$runtime(Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Preparing a composition while composing is not supported"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->isComposing:Z

    throw p1
.end method

.method public recompose-aFTiNEg$runtime(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/ShouldPauseCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-virtual {v0}, Landroidx/compose/runtime/Changes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected applyChanges() to have been called"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->requiresRecomposition(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->forciblyRecompose:Z

    if-eqz v0, :cond_4

    :cond_2
    iput-object p2, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->startComposition()V

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/LinkComposer;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lbm3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeListKt;->asLinkBufferChangeList(Landroidx/compose/runtime/Changes;)Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->hasChangesRequiringApplication()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changes:Landroidx/compose/runtime/Changes;

    invoke-virtual {p1}, Landroidx/compose/runtime/Changes;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->executeChangesImmediatelyWithoutApplier()V

    :cond_4
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    iput-object p2, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    throw p1
.end method

.method public recordSideEffect(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->sideEffect(Lll3;)V

    return-void
.end method

.method public recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 0

    instance-of p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    :cond_1
    return-void
.end method

.method public rememberedValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->nextSlotForCache$runtime()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->unwrapRememberObserverHolder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    return-object p0
.end method

.method public setDeferredChanges$runtime(Landroidx/compose/runtime/Changes;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->deferredChanges:Landroidx/compose/runtime/Changes;

    return-void
.end method

.method public final setReader$runtime(Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    return-void
.end method

.method public setSourceMarkersEnabled$runtime(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->sourceMarkersEnabled:Z

    return-void
.end method

.method public shouldExecute(ZI)Z
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-eqz p2, :cond_3

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/ShouldPauseCallback;->shouldPause()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getResuming()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    iget-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setReusing(Z)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setPaused(Z)V

    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/CompositionContext;->reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return v1

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method public skipCurrentGroup()V
    .locals 12
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->requiresRecomposition(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->skipGroup()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    const/16 v5, 0xcf

    const/4 v6, 0x3

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_1

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v7

    xor-long v7, v8, v10

    invoke-static {v7, v8, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    int-to-long v9, v4

    xor-long/2addr v7, v9

    iput-wide v7, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    int-to-long v9, v1

    xor-long/2addr v7, v9

    invoke-static {v7, v8, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    int-to-long v9, v4

    xor-long/2addr v7, v9

    :goto_0
    iput-wide v7, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    goto :goto_2

    :cond_2
    instance-of v7, v2, Ljava/lang/Enum;

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    int-to-long v10, v7

    xor-long v7, v8, v10

    invoke-static {v7, v8, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isNode()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroidx/compose/runtime/LinkComposer;->startReaderGroup(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->recomposeToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->endGroup()V

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    if-ne v1, v5, :cond_4

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v1

    int-to-long v3, v4

    xor-long/2addr v1, v3

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v2

    int-to-long v4, v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    int-to-long v0, v1

    xor-long/2addr v0, v2

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_5
    instance-of v0, v2, Ljava/lang/Enum;

    if-eqz v0, :cond_6

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v1

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v1

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    return-void
.end method

.method public skipToGroupEnd()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->scopeSkipped()V

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->requiresRecomposition(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->recomposeToGroupEnd()V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->skipReaderToGroupEnd()V

    :cond_5
    return-void
.end method

.method public sourceInformation(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordGroupSourceInformation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sourceInformationMarkerEnd()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordGrouplessCallSourceInformationEnd()V

    :cond_0
    return-void
.end method

.method public sourceInformationMarkerStart(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stackTraceForValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lkx2;->b:Lkx2;

    if-nez v0, :cond_0

    new-instance p0, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    invoke-direct {p0, v2, v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    new-instance v3, Lmq4;

    invoke-direct {v3, p1, v1}, Lmq4;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->findLocation(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Lnl3;)Landroidx/compose/runtime/tooling/ObjectLocation;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/tooling/ObjectLocation;->component1()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/tooling/ObjectLocation;->component2()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/LinkComposer;->stackTraceForGroup(ILjava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->parentStackTrace$runtime()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSourceMarkersEnabled$runtime()Z

    move-result p0

    new-instance p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    invoke-direct {p1, v2, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public stacksSize$runtime()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->entersStack:Landroidx/compose/runtime/IntStack;

    iget v0, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v1}, Landroidx/compose/runtime/Stack;->getSize-impl(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget v0, v0, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->getSize-impl(Ljava/util/ArrayList;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget p0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    add-int/2addr v0, p0

    return v0
.end method

.method public startDefaults()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/16 v1, -0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startMovableGroup(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startNode()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getNode-9udXigM()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    return-void
.end method

.method public startProvider(Landroidx/compose/runtime/ProvidedValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/compose/runtime/ValueHolder;

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1, v1}, Landroidx/compose/runtime/CompositionLocal;->updatedStateOf$runtime(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    move-result-object v3

    invoke-static {v3, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/LinkComposer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCanOverride()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->contains(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    :cond_3
    iput-boolean v5, p0, Landroidx/compose/runtime/LinkComposer;->builderHasAProvider:Z

    goto :goto_5

    :cond_4
    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSkipping()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCanOverride()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v0, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->contains(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    iget-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    :goto_1
    move-object v0, v4

    goto :goto_3

    :cond_9
    :goto_2
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    :goto_3
    iget-boolean p1, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-nez p1, :cond_b

    if-eq v4, v0, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    :cond_b
    :goto_4
    move v6, v5

    :goto_5
    if-eqz v6, :cond_c

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-direct {p0, v0}, Landroidx/compose/runtime/LinkComposer;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_c
    iget-object p1, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/LinkComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput-boolean v6, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    iput-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v1

    const/16 v2, 0xca

    invoke-direct {p0, v2, p1, v1, v0}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/LinkComposer;->startGroup(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-static {p1, v0, v4, v1, v4}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap$default([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;ILjava/lang/Object;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/LinkComposer;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->builderHasAProvider:Z

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v4, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {p1, v0, v4}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getSkipping()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-nez v5, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->skipGroup()V

    move-object p1, v1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/LinkComposer;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-nez v0, :cond_4

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Landroidx/compose/runtime/LinkComposer;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/LinkComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput-boolean v3, p0, Landroidx/compose/runtime/LinkComposer;->providersInvalid:Z

    iput-object p1, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v1

    const/16 v2, 0xca

    invoke-direct {p0, v2, v0, v1, p1}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReplaceGroup(I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->pending:Landroidx/compose/runtime/LinkPending;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    invoke-direct {p0, p1, v6, v0, v6}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->validateNodeNotExpected()V

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getCompositeKeyHashCode()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    int-to-long v7, p1

    xor-long/2addr v2, v7

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    int-to-long v4, v0

    xor-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/compose/runtime/LinkComposer;->compositeKeyHashCode:J

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->rGroupIndex:I

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v3

    const/high16 v4, 0x1000000

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->beginEmpty()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7, v6}, Landroidx/compose/runtime/LinkComposer;->enterGroup(ZLandroidx/compose/runtime/LinkPending;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupKey()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getHasObjectKey()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->startGroup()V

    invoke-direct {p0, v7, v6}, Landroidx/compose/runtime/LinkComposer;->enterGroup(ZLandroidx/compose/runtime/LinkPending;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->isGroupEnd()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Landroidx/compose/runtime/LinkComposer;->nodeIndex:I

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->recordDelete()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->skipGroup()I

    move-result v5

    iget-object v8, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v8, v3, v5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->beginEmpty()V

    iput-boolean v2, p0, Landroidx/compose/runtime/LinkComposer;->inserting:Z

    iput-object v6, p0, Landroidx/compose/runtime/LinkComposer;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->ensureBuilder()V

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_5

    move v2, v7

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7, v6}, Landroidx/compose/runtime/LinkComposer;->enterGroup(ZLandroidx/compose/runtime/LinkPending;)V

    return-void
.end method

.method public startReplaceableGroup(I)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->startReplaceGroup(I)V

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->addRecomposeScope()V

    return-object p0
.end method

.method public startReusableGroup(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getCurrentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    :cond_0
    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getGroup-9udXigM()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReusableNode()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->Companion:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/GroupKind$Companion;->getReusableNode-9udXigM()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/LinkComposer;->start-AzEfcrM(ILjava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->nodeExpected:Z

    return-void
.end method

.method public startReuseFromRoot$runtime()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->slotTable:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/LinkComposer;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    return-void
.end method

.method public tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/LinkComposer;->isGroupAfterCurrentReaderPosition(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->addFlag(II)V

    if-eqz p2, :cond_4

    sget-object v0, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, p2, Landroidx/collection/ScatterSet;

    iget-object v2, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    if-eqz v1, :cond_3

    check-cast p2, Landroidx/collection/ScatterSet;

    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->addAll-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Landroidx/collection/ScatterSet;)V

    goto :goto_1

    :cond_3
    invoke-static {v2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->get-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    sget-object p2, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public final updateCachedValue$runtime(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/LinkRememberObserverHolder;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReaderTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/LinkComposer;->lastPlacedChildGroup:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/LinkRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->remember(Landroidx/compose/runtime/RememberObserverHolder;)V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->abandonSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_7

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_5

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v13, v2, v12

    aget-object v12, v3, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v13

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-static {v14}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->asLinkAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v14

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getValid()Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v14

    iget-object v15, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    const/high16 v5, 0x4000000

    invoke-virtual {v15, v14, v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->addFlag(II)V

    sget-object v15, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    invoke-static {v12, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v12, v0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v12, v13, v15}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v16, v10

    goto :goto_3

    :cond_2
    instance-of v15, v12, Landroidx/collection/MutableScatterSet;

    move/from16 v16, v10

    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->invalidations:Landroidx/collection/MutableScatterMap;

    if-eqz v15, :cond_3

    check-cast v12, Landroidx/collection/ScatterSet;

    invoke-static {v10, v13, v12}, Landroidx/compose/runtime/collection/ScopeMap;->addAll-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Landroidx/collection/ScatterSet;)V

    goto :goto_3

    :cond_3
    invoke-static {v10, v13, v12}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v10, v0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v10, v14, v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->addFlag(II)V

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v16, v10

    :goto_5
    shr-long v7, v7, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v16

    goto :goto_1

    :cond_5
    move v5, v10

    if-ne v9, v5, :cond_7

    :cond_6
    if-eq v6, v4, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public updateRememberedValue(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/LinkComposer;->updateCachedValue$runtime(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->builder:Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->append(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getHadNext()Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentCurrentSlotOffset()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->updateValue(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->appendValue(Ljava/lang/Object;)V

    return-void
.end method

.method public useNode()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/LinkComposer;->validateNodeExpected()V

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "useNode() called while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LinkComposer;->reader:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getParentNode()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    iget-boolean v1, p0, Landroidx/compose/runtime/LinkComposer;->reusing:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/LinkComposer;->changeListWriter:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->useNode(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public verifyConsistent$runtime()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->isComposing$runtime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getInsertTable$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->verifyWellFormed()V

    :cond_0
    return-void
.end method
