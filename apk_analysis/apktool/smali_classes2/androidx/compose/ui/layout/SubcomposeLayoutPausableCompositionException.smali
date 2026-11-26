.class final Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field private final operations:Landroidx/collection/IntList;

.field private final slotId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/collection/IntList;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->operations:Landroidx/collection/IntList;

    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->slotId:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0

    return-void
.end method

.method private final operationsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->operations:Landroidx/collection/IntList;

    iget v1, v1, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_12

    iget-object v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->operations:Landroidx/collection/IntList;

    invoke-virtual {v2, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/layout/SLOperation;->constructor-impl(I)I

    move-result v3

    sget-object v4, Landroidx/compose/ui/layout/SLOperation;->Companion:Landroidx/compose/ui/layout/SLOperation$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getCancelPausedPrecomposition-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "CancelPausedPrecomposition"

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getReuseForceSyncDeactivation-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "ReuseForceSyncDeactivation"

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getReuseScheduleOutOfFrameDeactivation-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "ReuseScheduleOutOfFrameDeactivation"

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getReuseSyncDeactivation-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "ReuseSyncDeactivation"

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getReuseDeactivationViaHost-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "ReuseDeactivationViaHost"

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getTookFromPrecomposeMap-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "TookFromPrecomposeMap"

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSubcompose-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "Subcompose"

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSubcomposeNew-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v2, "SubcomposeNew"

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSubcomposePausable-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v2, "SubcomposePausable"

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSubcomposeForceReuse-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v2, "SubcomposeForceReuse"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getDeactivateOutOfFrame-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v2, "DeactivateOutOfFrame"

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getDeactivateOutOfFrameCancelled-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v2, "DeactivateOutOfFrameCancelled"

    goto :goto_1

    :cond_b
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSlotToReusedFromOnDeactivate-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v2, "SlotToReusedFromOnDeactivate"

    goto :goto_1

    :cond_c
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getSlotToReusedFromOnReuse-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v2, "SlotToReusedFromOnReuse"

    goto :goto_1

    :cond_d
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getReused-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v2, "Reused"

    goto :goto_1

    :cond_e
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getResumePaused-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v2, "ResumePaused"

    goto :goto_1

    :cond_f
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getPausePaused-NjRlDlw()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v2, "PausePaused"

    goto :goto_1

    :cond_10
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SLOperation$Companion;->getApplyPaused-NjRlDlw()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/SLOperation;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v2, "ApplyPaused"

    goto :goto_1

    :cond_11
    const-string v3, "Unexpected "

    invoke-static {v2, v3}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_12
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            |slotid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->slotId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Last operations:\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;->operationsList()Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
