.class public final Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final androidMatrix:Landroid/graphics/Matrix;

.field private final builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final composeImm:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

.field private hasPendingImmediateRequest:Z

.field private includeCharacterBounds:Z

.field private includeEditorBounds:Z

.field private includeInsertionMarker:Z

.field private includeLineBounds:Z

.field private final matrix:[F

.field private monitorEnabled:Z

.field private monitorJob:Lmb4;

.field private final monitorScope:Ly22;

.field private final textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field private final textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->composeImm:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorScope:Ly22;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILjh2;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->matrix:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static final synthetic access$calculateCursorAnchorInfo(Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->calculateCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getComposeImm$p(Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->composeImm:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    return-object p0
.end method

.method private final calculateCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getCoreNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textLayoutState:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v11

    if-nez v11, :cond_6

    return-object v2

    :cond_6
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->textFieldState:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v7

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->matrix:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->matrix:[F

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformToScreen-58bKbWc([F)V

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->matrix:[F

    invoke-static {v2, v5}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    invoke-static {v3}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v8

    invoke-interface {v1, v3, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v13

    invoke-static {v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-interface {v1, v4, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v14

    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v10

    iget-object v12, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-boolean v15, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeInsertionMarker:Z

    iget-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeCharacterBounds:Z

    iget-boolean v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeEditorBounds:Z

    iget-boolean v0, v0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeLineBounds:Z

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-static/range {v6 .. v18}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoBuilder_androidKt;->build-vxqZcH0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Landroidx/compose/ui/text/TextLayoutResult;Landroid/graphics/Matrix;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ZZZZ)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_3
    return-object v2
.end method

.method private final requestUpdates(ZZZZZZ)V
    .locals 0

    .line 88
    iput-boolean p3, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeInsertionMarker:Z

    .line 89
    iput-boolean p4, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeCharacterBounds:Z

    .line 90
    iput-boolean p5, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeEditorBounds:Z

    .line 91
    iput-boolean p6, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->includeLineBounds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->hasPendingImmediateRequest:Z

    .line 93
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->calculateCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->composeImm:Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    invoke-interface {p3, p1}, Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 94
    :cond_0
    iput-boolean p2, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorEnabled:Z

    .line 95
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->startOrStopMonitoring()V

    return-void
.end method

.method private final startOrStopMonitoring()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorEnabled:Z

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorJob:Lmb4;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmb4;->isActive()Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorScope:Ly22;

    sget-object v3, Lc32;->UNDISPATCHED:Lc32;

    new-instance v4, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController$startOrStopMonitoring$1;

    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController$startOrStopMonitoring$1;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;Le02;)V

    invoke-static {v1, v2, v3, v4, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorJob:Lmb4;

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->monitorJob:Lmb4;

    return-void
.end method


# virtual methods
.method public final requestUpdates(I)V
    .locals 10

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_8

    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v1

    :goto_4
    const/16 v8, 0x22

    if-lt v0, v8, :cond_5

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    move-object v3, p0

    if-lt v0, v8, :cond_6

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    goto :goto_5

    :cond_6
    move v9, v1

    move v6, v2

    move v7, v6

    move v8, v7

    goto :goto_5

    :cond_7
    move v9, v1

    move v8, v7

    move v7, v6

    move v6, v3

    move-object v3, p0

    goto :goto_5

    :cond_8
    move-object v3, p0

    move v8, v1

    move v9, v8

    move v6, v2

    move v7, v6

    :goto_5
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoController;->requestUpdates(ZZZZZZ)V

    return-void
.end method
