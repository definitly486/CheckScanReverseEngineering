.class public final Landroidx/compose/foundation/text/input/UndoState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final state:Landroidx/compose/foundation/text/input/TextFieldState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    return-void
.end method

.method public static synthetic getCanRedo$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCanUndo$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final clearHistory()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldState;->getTextUndoManager$foundation()Landroidx/compose/foundation/text/input/TextUndoManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextUndoManager;->clearHistory()V

    return-void
.end method

.method public final getCanRedo()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldState;->getTextUndoManager$foundation()Landroidx/compose/foundation/text/input/TextUndoManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextUndoManager;->getCanRedo()Z

    move-result p0

    return p0
.end method

.method public final getCanUndo()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldState;->getTextUndoManager$foundation()Landroidx/compose/foundation/text/input/TextUndoManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextUndoManager;->getCanUndo()Z

    move-result p0

    return p0
.end method

.method public final redo()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getTextUndoManager$foundation()Landroidx/compose/foundation/text/input/TextUndoManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/text/input/TextUndoManager;->redo(Landroidx/compose/foundation/text/input/TextFieldState;)V

    return-void
.end method

.method public final undo()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getTextUndoManager$foundation()Landroidx/compose/foundation/text/input/TextUndoManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/UndoState;->state:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/text/input/TextUndoManager;->undo(Landroidx/compose/foundation/text/input/TextFieldState;)V

    return-void
.end method
