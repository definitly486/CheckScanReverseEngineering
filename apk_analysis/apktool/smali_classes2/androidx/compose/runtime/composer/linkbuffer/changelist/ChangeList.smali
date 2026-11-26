.class public final Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;
.super Landroidx/compose/runtime/Changes;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/Changes;-><init>()V

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    return-void
.end method

.method public static synthetic pushExecuteOperationsIn$default(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushExecuteOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->clear()V

    return-void
.end method

.method public execute(Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotStorage;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/composer/RememberManager;",
            "Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableKt;->asLinkBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->openEditor()Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->close()V

    throw p0
.end method

.method public final executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;",
            "Landroidx/compose/runtime/composer/RememberManager;",
            "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V

    return-void
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->getSize()I

    move-result p0

    return p0
.end method

.method public final hasChangesRequiringApplication()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->getRequiresApplication()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final pushAppendValue(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$AppendValue;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$AppendValue;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushClearAllRecompositionRequiredGroups()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ClearAllRecompositionRequired;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ClearAllRecompositionRequired;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushCopyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/internal/IntRef;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-EykTJF8(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    :cond_0
    return-void
.end method

.method public final pushCopySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 10

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopySlotTableToHandleLocation;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopySlotTableToHandleLocation;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v4

    const/4 v3, 0x3

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v8

    move-object v3, p1

    move-object v5, p2

    move-object v9, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-UOUgNZM(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushDeactivateGroup()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DeactivateGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DeactivateGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushDetermineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;J)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DetermineMovableContentNodeIndex;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v3, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {v1, p1, v2, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setLong-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;IIJ)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushDisposeDisposeMovableContentState(Landroidx/compose/runtime/MovableContentState;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DisposeMovableContentState;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DisposeMovableContentState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushDowns([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Downs;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Downs;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v2

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v1

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    :cond_1
    return-void
.end method

.method public final pushEndCompositionScope(Lnl3;Landroidx/compose/runtime/Composition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/Composition;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composition;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndCompositionScope;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-EykTJF8(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushEndMovableContentPlacement()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndMovableContentPlacement;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndMovableContentPlacement;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushEndResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndResumingScope;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndResumingScope;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushExecuteOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/runtime/Changes;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ApplyChangeList;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-EykTJF8(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->getRequiresApplication()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->requireApplication-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    :cond_1
    return-void
.end method

.method public final pushInsertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;J)V
    .locals 4

    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlots;

    .line 32
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    .line 33
    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v3, v2, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setLong-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;IIJ)V

    .line 35
    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p2

    .line 36
    invoke-static {v1, p2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushInsertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;JLandroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlotsWithFixups;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setLong-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;IIJ)V

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p2

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p3

    invoke-static {v1, p2, p1, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-EykTJF8(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushMoveGroup(I)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    sub-int/2addr v3, v1

    aput p1, v2, v3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushMoveNode(III)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    add-int/lit8 v3, v2, 0x1

    aput p1, v1, v3

    aput p2, v1, v2

    add-int/lit8 v2, v2, 0x2

    aput p3, v1, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushReleaseMovableGroup(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 8

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ReleaseMovableGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ReleaseMovableGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v4

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v6

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-Gn0XI2A(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushRemember(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Remember;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushRememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RememberPausingScope;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RememberPausingScope;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushRemoveGroup()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushRemoveNode(II)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    aput p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput p2, v1, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushRemoveTailGroupsAndValues(II)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveTailGroupsAndValues;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveTailGroupsAndValues;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    aput p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput p2, v1, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushResetSlots()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ResetSlots;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushSeekToAnchor(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;J)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToAnchor;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToAnchor;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->anchorHandle(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;J)Landroidx/compose/runtime/composer/linkbuffer/AnchorHandle;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushSeekToGroupHandle(J)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToGroupHandle;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToGroupHandle;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setLong-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;IIJ)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushSideEffect(Lll3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SideEffect;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SideEffect;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushSkipGroup()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SkipGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SkipGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushStartGroup()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartGroup;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartGroup;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushStartResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartResumingScope;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartResumingScope;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUpdateAuxData(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateAuxData;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUpdateNode(Ljava/lang/Object;Lbm3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lbm3<",
            "-TT;-TV;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    invoke-static {v4, p2}, Lv39;->c(ILjava/lang/Object;)V

    check-cast p2, Lbm3;

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObjects-EykTJF8(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUpdateRelativeValue(ILjava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValueRelative;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValueRelative;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v5, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v4

    sub-int/2addr v3, v4

    aput p1, v2, v3

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p1

    invoke-static {v1, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUpdateRememberObserverHolderOrdering(Landroidx/compose/runtime/LinkRememberObserverHolder;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateRememberObserverHolderOrdering;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateRememberObserverHolderOrdering;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p1

    invoke-static {v1, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUpdateValue(ILjava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValue;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v2, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->setObject-aWHcuVo(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-object p2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    sub-int/2addr v2, v1

    aput p1, p2, v2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUps(I)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Ups;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Ups;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget v3, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v4, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    sub-int/2addr v3, v1

    aput p1, v2, v3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushUseNode(Ljava/lang/Object;)V
    .locals 0

    instance-of p1, p1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    sget-object p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UseCurrentNode;->INSTANCE:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UseCurrentNode;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    :cond_0
    return-void
.end method

.method public toDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ChangeList instance containing "

    invoke-static {v0}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
