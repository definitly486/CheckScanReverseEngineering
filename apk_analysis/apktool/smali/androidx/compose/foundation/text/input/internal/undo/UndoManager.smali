.class public final Landroidx/compose/foundation/text/input/internal/undo/UndoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/undo/UndoManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/input/internal/undo/UndoManager$Companion;


# instance fields
.field private final capacity:I

.field private redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->Companion:Landroidx/compose/foundation/text/input/internal/undo/UndoManager$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 63
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;-><init>(Ljava/util/List;Ljava/util/List;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->capacity:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "Capacity must be a positive integer"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p3, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    const-string p3, "Initial list of undo and redo operations have a size greater than the given capacity."

    invoke-static {p3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    new-instance p3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {p3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;IILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    .line 64
    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0x64

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static final synthetic access$getCapacity$p(Landroidx/compose/foundation/text/input/internal/undo/UndoManager;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->capacity:I

    return p0
.end method

.method public static final synthetic access$getRedoStack$p(Landroidx/compose/foundation/text/input/internal/undo/UndoManager;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object p0
.end method

.method public static final synthetic access$getUndoStack$p(Landroidx/compose/foundation/text/input/internal/undo/UndoManager;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object p0
.end method


# virtual methods
.method public final clearHistory()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    return-void
.end method

.method public final getCanRedo$foundation()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getCanUndo$foundation()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final record(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->getSize()I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->capacity:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-le v0, v1, :cond_0

    invoke-static {v2}, Lnn1;->D(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final redo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->getCanRedo$foundation()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "It\'s an error to call redo while there is nothing to redo. Please first check `canRedo` value before calling the `redo` function."

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-static {v0}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final undo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->getCanUndo$foundation()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "It\'s an error to call undo while there is nothing to undo. Please first check `canUndo` value before calling the `undo` function."

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->undoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-static {v0}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/UndoManager;->redoStack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
