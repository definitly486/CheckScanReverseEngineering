.class public final Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

.field private changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

.field private final composer:Landroidx/compose/runtime/LinkComposer;

.field private editorCurrentPosition:J

.field private implicitRootStart:Z

.field private moveCount:I

.field private moveFromNodeIndex:I

.field private moveToNodeIndex:I

.field private final pendingDownNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pendingUps:I

.field private removeFromNodeIndex:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/LinkComposer;

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    const/4 p2, 0x0

    invoke-static {p2, p1, p2}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILjh2;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    sget-object p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AbsoluteAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public static final synthetic access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-wide v0
.end method

.method public static final synthetic access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method private final getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/LinkComposer;

    invoke-virtual {p0}, Landroidx/compose/runtime/LinkComposer;->getReader$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object p0

    return-object p0
.end method

.method private final inMode(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;Lll3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object p2, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw p1
.end method

.method public static synthetic includeOperationsIn$default(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    return-void
.end method

.method private final pushApplierOperationPreamble()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    return-void
.end method

.method private final pushPendingUpsAndDowns()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUps(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {v1}, Landroidx/compose/runtime/Stack;->toArray-impl(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushDowns([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private final pushSlotOperationPreamble()V
    .locals 7

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v2

    iget-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->seekTo$default(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;JZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final pushSlotOperationPreambleUnconditionally()V
    .locals 7

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->handle()J

    move-result-wide v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->seekTo$default(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;JZILjava/lang/Object;)V

    return-void
.end method

.method private final realizeMoveNode(III)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushMoveNode(III)V

    return-void
.end method

.method private final realizeNodeMovementOperations()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    if-lez v0, :cond_1

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeRemoveNode(II)V

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    invoke-direct {p0, v1, v3, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeMoveNode(III)V

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    :cond_1
    return-void
.end method

.method private final realizeRemoveNode(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushRemoveNode(II)V

    return-void
.end method

.method public static synthetic seekTo$default(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;JZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->seekTo(JZ)V

    return-void
.end method


# virtual methods
.method public final appendValue(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushAppendValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 0
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

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushCopyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    return-void
.end method

.method public final copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushCopySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final deactivateCurrentGroup()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushDeactivateGroup()V

    return-void
.end method

.method public final determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;J)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushDetermineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;J)V

    iput-wide p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final disposeResolvedMovableState(Landroidx/compose/runtime/MovableContentState;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushDisposeDisposeMovableContentState(Landroidx/compose/runtime/MovableContentState;)V

    :cond_0
    return-void
.end method

.method public final endCompositionScope(Lnl3;Landroidx/compose/runtime/Composition;)V
    .locals 0
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

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushEndCompositionScope(Lnl3;Landroidx/compose/runtime/Composition;)V

    return-void
.end method

.method public final endMovableContentPlacement()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushEndMovableContentPlacement()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    return-void
.end method

.method public final endNodeMovement()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    return-void
.end method

.method public final endNodeMovementAndDeleteNode(II)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->endNodeMovement()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->flagsOf(I)I

    move-result p2

    const/high16 v0, 0x800000

    and-int v1, p2, v0

    if-ne v1, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7fffff

    and-int/2addr p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    return-void
.end method

.method public final endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushEndResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public final finalizeComposition()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushClearAllRecompositionRequiredGroups()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    return-object p0
.end method

.method public final getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    return-object p0
.end method

.method public final getImplicitRootStart()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    return p0
.end method

.method public final inAnchorMode(Lll3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    sget-object v2, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AnchorAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object v3

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v4

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v3, p1, :cond_0

    move-wide v0, v4

    :cond_0
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object v2, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne v3, v2, :cond_1

    move-wide v0, v4

    :cond_1
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw p1
.end method

.method public final inRelativeAddressMode(JLll3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    sget-object p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getAddressMode$runtime()Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    move-result-object p2

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$getEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V

    sget-object p3, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->RelativeAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->access$setEditorCurrentPosition$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;J)V

    throw p1
.end method

.method public final includeOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushExecuteOperationsIn(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    return-void
.end method

.method public final insertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Tried moving from an unspecified position"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushInsertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;J)V

    return-void
.end method

.method public final insertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;JLandroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 31
    const-string v0, "Tried moving from an unspecified position"

    .line 32
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 33
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 34
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    .line 35
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 36
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushInsertSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;JLandroidx/compose/runtime/composer/linkbuffer/changelist/FixupList;)V

    return-void
.end method

.method public final isInAnchorMode()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AnchorAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final moveDown(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method

.method public final moveGroup(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Offset must not be negative"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreambleUnconditionally()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushMoveGroup(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final moveNode(III)V
    .locals 2

    if-lez p3, :cond_1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    if-lez v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    :cond_1
    return-void
.end method

.method public final moveUp()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    return-void
.end method

.method public final releaseMovableGroup(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushReleaseMovableGroup(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final remember(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushRemember(Landroidx/compose/runtime/RememberObserverHolder;)V

    return-void
.end method

.method public final rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushRememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public final removeGroup()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushRemoveGroup()V

    return-void
.end method

.method public final removeNode(II)V
    .locals 1

    if-lez p2, :cond_1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    :cond_1
    return-void
.end method

.method public final removeTailGroupsAndValues(II)V
    .locals 0

    if-gez p1, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushRemoveTailGroupsAndValues(II)V

    return-void
.end method

.method public final resetSlots()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushResetSlots()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final resetTransientState()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final seekTo(JZ)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    sget-object v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getContext(J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->parentOf(I)I

    move-result v2

    :goto_0
    iget-wide v3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    invoke-static {v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "Relative addressing only supports navigating to a child of the current group"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushStartGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->firstChildOf(I)I

    move-result v1

    :goto_2
    if-eq v1, v0, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushSkipGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->nextSiblingOf(I)I

    move-result v1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_7

    sget-object p3, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AbsoluteAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    iput-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    goto :goto_3

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_5
    iget-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;->getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushSeekToAnchor(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;J)V

    goto :goto_3

    :cond_6
    iget-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p3, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushSeekToGroupHandle(J)V

    :cond_7
    :goto_3
    iput-wide p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final setAddressMode$runtime(Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    return-void
.end method

.method public final setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    return-void
.end method

.method public final setImplicitRootStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    return-void
.end method

.method public final sideEffect(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushSideEffect(Lll3;)V

    return-void
.end method

.method public final startComposition()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->removeFromNodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveFromNodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->moveToNodeIndex:I

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;->AbsoluteAddressing:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->addressMode:Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriterAddressMode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->editorCurrentPosition:J

    return-void
.end method

.method public final startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushStartResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public final updateAuxData(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUpdateAuxData(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateNode(Ljava/lang/Object;Lbm3;)V
    .locals 0
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

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUpdateNode(Ljava/lang/Object;Lbm3;)V

    return-void
.end method

.method public final updateRememberOrdering(Landroidx/compose/runtime/LinkRememberObserverHolder;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/runtime/LinkRememberObserverHolder;->getAfter()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v0

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUpdateRememberObserverHolderOrdering(Landroidx/compose/runtime/LinkRememberObserverHolder;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    :cond_0
    return-void
.end method

.method public final updateValue(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushSlotOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUpdateRelativeValue(ILjava/lang/Object;)V

    return-void
.end method

.method public final useNode(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;->pushUseNode(Ljava/lang/Object;)V

    return-void
.end method

.method public final withChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;)V

    throw p1
.end method

.method public final withoutImplicitRootStart(Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    throw p1
.end method
