.class final Landroidx/compose/foundation/CombinedClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;
    }
.end annotation


# instance fields
.field private final doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableLongObjectMap<",
            "Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;",
            ">;"
        }
    .end annotation
.end field

.field private downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field private firstTapUpTime:J

.field private hapticFeedbackEnabled:Z

.field private ignoreNextUp:Z

.field private indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

.field private indirectFirstTapUpTime:J

.field private indirectIgnoreNextUp:Z

.field private indirectIsSecondTap:Z

.field private indirectLongPressJob:Lmb4;

.field private indirectLongPressTriggered:Z

.field private indirectTapJob:Lmb4;

.field private isSecondTap:Z

.field private final isSuspendingPointerInputEnabled:Z

.field private final longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableLongObjectMap<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private longPressJob:Lmb4;

.field private longPressTriggered:Z

.field private onDoubleClick:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private onLongClick:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private onLongClickLabel:Ljava/lang/String;

.field private tapJob:Lmb4;


# direct methods
.method private constructor <init>(Lll3;Ljava/lang/String;Lll3;Lll3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Ljava/lang/String;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/IndicationNodeFactory;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v7, p1

    move-object v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lll3;Ljh2;)V

    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClickLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    iput-boolean p5, p0, Landroidx/compose/foundation/CombinedClickableNode;->hapticFeedbackEnabled:Z

    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    sget-boolean p1, Landroidx/compose/foundation/ComposeFoundationFlags;->isNonSuspendingPointerInputInCombinedClickableEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSuspendingPointerInputEnabled:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->firstTapUpTime:J

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectFirstTapUpTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lll3;Ljava/lang/String;Lll3;Lll3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljh2;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/CombinedClickableNode;-><init>(Lll3;Ljava/lang/String;Lll3;Lll3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V

    return-void
.end method

.method public static final synthetic access$getDoubleKeyClickStates$p(Landroidx/compose/foundation/CombinedClickableNode;)Landroidx/collection/MutableLongObjectMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    return-object p0
.end method

.method public static final synthetic access$getIndirectTapJob$p(Landroidx/compose/foundation/CombinedClickableNode;)Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    return-object p0
.end method

.method public static final synthetic access$getOnDoubleClick$p(Landroidx/compose/foundation/CombinedClickableNode;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    return-object p0
.end method

.method public static final synthetic access$getOnLongClick$p(Landroidx/compose/foundation/CombinedClickableNode;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    return-object p0
.end method

.method public static final synthetic access$getTapJob$p(Landroidx/compose/foundation/CombinedClickableNode;)Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    return-object p0
.end method

.method public static final synthetic access$setIndirectLongPressJob$p(Landroidx/compose/foundation/CombinedClickableNode;Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    return-void
.end method

.method public static final synthetic access$setIndirectLongPressTriggered$p(Landroidx/compose/foundation/CombinedClickableNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    return-void
.end method

.method public static final synthetic access$setIndirectTapJob$p(Landroidx/compose/foundation/CombinedClickableNode;Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    return-void
.end method

.method public static final synthetic access$setLongPressJob$p(Landroidx/compose/foundation/CombinedClickableNode;Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    return-void
.end method

.method public static final synthetic access$setLongPressTriggered$p(Landroidx/compose/foundation/CombinedClickableNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    return-void
.end method

.method public static final synthetic access$setTapJob$p(Landroidx/compose/foundation/CombinedClickableNode;Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    return-void
.end method

.method private static final applyAdditionalSemantics$lambda$0(Landroidx/compose/foundation/CombinedClickableNode;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final cancelInput(Z)V
    .locals 5

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    if-eqz v4, :cond_0

    invoke-interface {v4, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIsSecondTap:Z

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectFirstTapUpTime:J

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIgnoreNextUp:Z

    goto :goto_0

    :cond_2
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSecondTap:Z

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->firstTapUpTime:J

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->ignoreNextUp:Z

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionCancel(Z)V

    return-void
.end method

.method private final checkForCancellation(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)V
    .locals 4

    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    check-cast v2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 52
    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eq v2, v3, :cond_0

    const/4 p1, 0x1

    .line 53
    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final checkForCancellation(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eq v3, v4, :cond_0

    invoke-direct {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Landroidx/compose/foundation/CombinedClickableNode;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/CombinedClickableNode;->applyAdditionalSemantics$lambda$0(Landroidx/compose/foundation/CombinedClickableNode;)Z

    move-result p0

    return p0
.end method

.method private final handleDeepPress()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->hapticFeedbackEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getLongPress-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    :cond_3
    return-void
.end method

.method private final handleDownEvent(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V
    .locals 9

    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    .line 102
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 103
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmb4;->isActive()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 105
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapMinTimeMillis()J

    move-result-wide v3

    .line 106
    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getUptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectFirstTapUpTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 107
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIgnoreNextUp:Z

    return-void

    .line 108
    :cond_0
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIsSecondTap:Z

    .line 109
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 111
    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    :cond_2
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    .line 113
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isDelayPressesUsingGestureConsumptionEnabled:Z

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionStart(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionStart-3MmeM6k(JZ)V

    .line 116
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p1

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Le02;)V

    const/4 v2, 0x3

    .line 118
    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    .line 119
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    :cond_4
    return-void
.end method

.method private final handleDownEvent(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmb4;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapMinTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/compose/foundation/CombinedClickableNode;->firstTapUpTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->ignoreNextUp:Z

    return-void

    :cond_0
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSecondTap:Z

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    sget-boolean v2, Landroidx/compose/foundation/ComposeFoundationFlags;->isDelayPressesUsingGestureConsumptionEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionStart(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionStart-3MmeM6k(JZ)V

    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p1

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    :cond_4
    return-void
.end method

.method private final handleNonUpEventIfNeeded(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)V
    .locals 9

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v0

    const/4 v6, 0x1

    if-lez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-direct {p0, v6}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    :cond_3
    return-void
.end method

.method private final handleNonUpEventIfNeeded-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)V
    .locals 7

    invoke-virtual {p0, p2, p3}, Landroidx/compose/foundation/AbstractClickableNode;->getExtendedTouchPadding-hWWAJMo(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, p2, p3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    :cond_2
    return-void
.end method

.method private final handleUpEvent(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIgnoreNextUp:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    const/4 p3, 0x1

    invoke-virtual {p0, v2, v3, p3}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionRelease-3MmeM6k(JZ)V

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectFirstTapUpTime:J

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIsSecondTap:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$2;

    invoke-direct {p2, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Le02;)V

    const/4 p3, 0x3

    invoke-static {p1, v1, v1, p2, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectTapJob:Lmb4;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lll3;

    move-result-object p1

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIgnoreNextUp:Z

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectIsSecondTap:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressJob:Lmb4;

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    return-void
.end method

.method private final handleUpEvent(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 5

    .line 82
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->ignoreNextUp:Z

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1}, Landroidx/compose/foundation/AbstractClickableNode;->handlePressInteractionRelease-3MmeM6k(JZ)V

    .line 84
    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->firstTapUpTime:J

    .line 85
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    if-nez p1, :cond_2

    .line 86
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSecondTap:Z

    .line 87
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 88
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$1;

    invoke-direct {p2, p0, v2}, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Le02;)V

    const/4 p3, 0x3

    .line 90
    invoke-static {p1, v2, v2, p2, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    .line 91
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->tapJob:Lmb4;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lll3;

    move-result-object p1

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    .line 93
    :cond_2
    :goto_0
    iput-object v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 94
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->ignoreNextUp:Z

    .line 95
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSecondTap:Z

    .line 96
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    if-eqz p1, :cond_3

    .line 97
    invoke-interface {p1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 98
    :cond_3
    iput-object v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressJob:Lmb4;

    .line 99
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    return-void
.end method

.method private static synthetic isSuspendingPointerInputEnabled$annotations()V
    .locals 0

    return-void
.end method

.method private final resetKeyPressState()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    iget-object v2, v1, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/LongObjectMap;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ltz v4, :cond_3

    move v15, v14

    const-wide/16 v16, 0x80

    :goto_0
    aget-wide v6, v3, v15

    const-wide/16 v18, 0xff

    not-long v8, v6

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    sub-int v8, v15, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    move v9, v14

    :goto_1
    if-ge v9, v8, :cond_1

    and-long v20, v6, v18

    cmp-long v20, v20, v16

    if-gez v20, :cond_0

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v9

    aget-object v20, v2, v20

    move/from16 v21, v10

    move-object/from16 v10, v20

    check-cast v10, Lmb4;

    invoke-interface {v10, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_0
    move/from16 v21, v10

    :goto_2
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v21

    goto :goto_1

    :cond_1
    move/from16 v21, v10

    if-ne v8, v13, :cond_4

    goto :goto_3

    :cond_2
    move/from16 v21, v10

    :goto_3
    if-eq v15, v4, :cond_4

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v21

    goto :goto_0

    :cond_3
    move/from16 v21, v10

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    iget-object v1, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_8

    move v4, v14

    :goto_4
    aget-wide v6, v2, v4

    not-long v8, v6

    shl-long v8, v8, v21

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_7

    sub-int v8, v4, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    move v9, v14

    :goto_5
    if-ge v9, v8, :cond_6

    and-long v22, v6, v18

    cmp-long v10, v22, v16

    if-gez v10, :cond_5

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    invoke-virtual {v10}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->getJob()Lmb4;

    move-result-object v10

    invoke-interface {v10, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    if-ne v8, v13, :cond_8

    :cond_7
    if-eq v4, v3, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroidx/collection/MutableLongObjectMap;->clear()V

    return-void
.end method


# virtual methods
.method public applyAdditionalSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClickLabel:Ljava/lang/String;

    new-instance v1, Landroidx/compose/foundation/d;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/d;-><init>(Landroidx/compose/foundation/CombinedClickableNode;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lll3;)V

    :cond_0
    return-void
.end method

.method public createPointerInputNodeIfNeeded()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSuspendingPointerInputEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode$createPointerInputNodeIfNeeded$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickableNode$createPointerInputNodeIfNeeded$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;)V

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHapticFeedbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->hapticFeedbackEnabled:Z

    return p0
.end method

.method public onCancelIndirectPointerInput()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    return-void
.end method

.method public onCancelKeyInput()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/CombinedClickableNode;->resetKeyPressState()V

    return-void
.end method

.method public onCancelPointerInput()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/foundation/AbstractClickableNode;->onCancelPointerInput()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    return-void
.end method

.method public onClickKeyDownEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;

    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Le02;)V

    const/4 v5, 0x3

    invoke-static {v3, v2, v2, v4, v5}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->getJob()Lmb4;

    move-result-object v4

    invoke-interface {v4}, Lmb4;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->getJob()Lmb4;

    move-result-object v4

    invoke-interface {v4, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {v3}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->getDoubleTapMinTimeMillisElapsed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lll3;

    move-result-object v2

    invoke-interface {v2}, Lll3;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    return p1

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    :cond_2
    return p1
.end method

.method public onClickKeyUpEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmb4;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmb4;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->longKeyPressJobs:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    if-nez v4, :cond_6

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    new-instance v4, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyUpEvent$2;

    invoke-direct {v6, p0, v0, v1, v3}, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyUpEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;JLe02;)V

    const/4 p0, 0x3

    invoke-static {v5, v3, v3, v6, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    invoke-direct {v4, p0}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;-><init>(Lmb4;)V

    invoke-virtual {p1, v0, v1, v4}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    return v2

    :cond_3
    if-nez v4, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->doubleKeyClickStates:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongObjectMap;->remove(J)Ljava/lang/Object;

    return v2

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lll3;

    move-result-object p0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_6
    return v2
.end method

.method public onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->handleDownEvent(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectLongPressTriggered:Z

    if-eqz p2, :cond_5

    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v3}, Landroidx/compose/foundation/ClickableKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {p2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->handleUpEvent(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v3}, Landroidx/compose/foundation/ClickableKt;->access$changedToUp(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->handleNonUpEventIfNeeded(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)V

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->indirectDownEvent:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->handleUpEvent(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_8
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v0, :cond_9

    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->checkForCancellation(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)V

    :cond_9
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->isSuspendingPointerInputEnabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p1, p4, v0, p2, p3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->isChangedToDown$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->handleDownEvent(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/compose/foundation/gestures/TapGestureDetector_androidKt;->isDeepPress(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroidx/compose/foundation/CombinedClickableNode;->handleDeepPress()V

    :cond_2
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->longPressTriggered:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move p4, v0

    :goto_0
    if-ge p4, p3, :cond_4

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->handleUpEvent(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p1, p3, p4}, Landroidx/compose/foundation/CombinedClickableNode;->handleNonUpEventIfNeeded-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;J)V

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->downEvent:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->handleUpEvent(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_8
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p3, :cond_9

    invoke-direct {p0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->checkForCancellation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onReset()V
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onReset()V

    invoke-direct {p0}, Landroidx/compose/foundation/CombinedClickableNode;->resetKeyPressState()V

    return-void
.end method

.method public final setHapticFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->hapticFeedbackEnabled:Z

    return-void
.end method

.method public final update-2tQrsxU(Lll3;Ljava/lang/String;Lll3;Lll3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Ljava/lang/String;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/IndicationNodeFactory;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClickLabel:Ljava/lang/String;

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClickLabel:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_0
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-nez p3, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq p2, v2, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractions()V

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    iput-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lll3;

    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    if-nez p3, :cond_4

    move p3, v0

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    if-nez p4, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    if-eq p3, v2, :cond_6

    move p2, v0

    :cond_6
    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickableNode;->onDoubleClick:Lll3;

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result p3

    if-eq p3, p8, :cond_7

    move p2, v0

    :cond_7
    move-object p3, p0

    move-object p4, p5

    move-object p5, p6

    move p6, p7

    move p7, p8

    move-object p8, p9

    move-object p9, p10

    move-object p10, p1

    invoke-virtual/range {p3 .. p10}, Landroidx/compose/foundation/AbstractClickableNode;->updateCommon-O2vRcR0(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lll3;)V

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Landroidx/compose/foundation/AbstractClickableNode;->resetPointerInputHandler()Lj59;

    invoke-direct {p3, v1}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    invoke-direct {p3, v0}, Landroidx/compose/foundation/CombinedClickableNode;->cancelInput(Z)V

    :cond_8
    return-void
.end method
