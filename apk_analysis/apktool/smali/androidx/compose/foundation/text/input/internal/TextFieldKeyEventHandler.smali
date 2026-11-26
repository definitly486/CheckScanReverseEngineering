.class public abstract Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private currentlyConsumedDownKeys:Landroidx/collection/MutableLongSet;

.field private final deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

.field private final keyMapping:Landroidx/compose/foundation/text/KeyMapping;

.field private final preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    new-instance v0, Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-direct {v0}, Landroidx/compose/foundation/text/DeadKeyCombiner;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-static {}, Landroidx/compose/foundation/text/KeyMapping_androidKt;->getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->processKeyDownEvent_q0GpTC0$lambda$0$1(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->processKeyDownEvent_q0GpTC0$lambda$0$0(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final getVisibleTextLayoutHeight(Landroidx/compose/foundation/text/input/internal/TextLayoutState;)F
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v2, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_3
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method private final processKeyDownEvent-q0GpTC0(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Lnl3;Landroidx/compose/ui/platform/SoftwareKeyboardController;ZZLll3;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            "ZZ",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;->isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/DeadKeyCombiner;->consume-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Landroidx/compose/foundation/text/StringsHelpers_jvmAndAndroidKt;->appendCodePointX(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p6, :cond_0

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyCommand;->getEditsText()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p6, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v5

    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->getVisibleTextLayoutHeight(Landroidx/compose/foundation/text/input/internal/TextLayoutState;)F

    move-result v7

    new-instance v3, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v6

    iget-object v8, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V

    move-object p0, v3

    sget-object p3, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p3, p3, v3

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return v1

    :pswitch_0
    invoke-interface {p5}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->show()V

    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->showCharacterPalette()V

    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->redo()V

    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->undo()V

    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deselect()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorRightByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorLeftByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->selectAll()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_16
    if-nez p7, :cond_3

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "\t"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    move v1, v2

    :cond_3
    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_2

    :pswitch_17
    if-nez p7, :cond_4

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "\n"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-interface/range {p8 .. p8}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v1, p1

    :goto_0
    sget-object p1, Lj59;->a:Lj59;

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByCodePointOrEmoji()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->deleteMovement()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_1e
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_1f
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_20
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_21
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_23
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_24
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_25
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_26
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_27
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_28
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_29
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_2a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_2b
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_2c
    new-instance p1, Lt2;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Lt2;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->collapseRightOr(Lnl3;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_2d
    new-instance p1, Leg0;

    invoke-direct {p1, v2}, Leg0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->collapseLeftOr(Lnl3;)Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    goto :goto_1

    :pswitch_2e
    invoke-interface {p4, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;

    :goto_1
    move v1, v2

    :goto_2
    sget-object p1, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    if-eq v0, p1, :cond_5

    sget-object p1, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    if-eq v0, p1, :cond_5

    sget-object p1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    if-eq v0, p1, :cond_5

    sget-object p1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    if-ne v0, p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide p3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {p3, p4, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getSelection-d9O1mEE()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    :cond_7
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getWedgeAffinity()Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getWedgeAffinity()Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getUntransformedText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p0, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;-><init>(Landroidx/compose/foundation/text/input/internal/WedgeAffinity;)V

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->setSelectionWedgeAffinity(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->getInitialWedgeAffinity()Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p0, p3, p1, v2, p3}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;->copy$default(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;Landroidx/compose/foundation/text/input/internal/WedgeAffinity;Landroidx/compose/foundation/text/input/internal/WedgeAffinity;ILjava/lang/Object;)Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->setSelectionWedgeAffinity(Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)V

    :cond_9
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final processKeyDownEvent_q0GpTC0$lambda$0$0(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorLeftByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final processKeyDownEvent_q0GpTC0$lambda$0$1(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;->moveCursorRightByChar()Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public onKeyEvent-8zsqlwg(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lnl3;Landroidx/compose/ui/platform/SoftwareKeyboardController;ZZLll3;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/text/KeyCommand;",
            "+",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            "ZZ",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v9

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v1

    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->currentlyConsumedDownKeys:Landroidx/collection/MutableLongSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v9, v10}, Landroidx/collection/LongSet;->contains(J)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->currentlyConsumedDownKeys:Landroidx/collection/MutableLongSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v9, v10}, Landroidx/collection/MutableLongSet;->remove(J)Z

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getUnknown-CS__XNY()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;->isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->processKeyDownEvent-q0GpTC0(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Lnl3;Landroidx/compose/ui/platform/SoftwareKeyboardController;ZZLll3;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->currentlyConsumedDownKeys:Landroidx/collection/MutableLongSet;

    if-nez v2, :cond_4

    new-instance v2, Landroidx/collection/MutableLongSet;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroidx/collection/MutableLongSet;-><init>(I)V

    iput-object v2, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->currentlyConsumedDownKeys:Landroidx/collection/MutableLongSet;

    :cond_4
    invoke-virtual {v2, v9, v10}, Landroidx/collection/MutableLongSet;->plusAssign(J)V

    :cond_5
    return v1
.end method

.method public onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z
    .locals 0

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p4

    invoke-static {p4, p5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->cancelsTextSelection-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->deselect()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
