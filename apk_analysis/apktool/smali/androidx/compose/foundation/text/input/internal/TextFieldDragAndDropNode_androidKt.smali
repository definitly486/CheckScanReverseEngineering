.class public final Landroidx/compose/foundation/text/input/internal/TextFieldDragAndDropNode_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lll3;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldDragAndDropNode_androidKt;->textFieldDragAndDropNode$lambda$0(Lll3;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    move-result p0

    return p0
.end method

.method public static final textFieldDragAndDropNode(Lll3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+",
            "Ljava/util/Set<",
            "Landroidx/compose/foundation/content/MediaType;",
            ">;>;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/platform/ClipEntry;",
            "-",
            "Landroidx/compose/ui/platform/ClipMetadata;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropEvent;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;"
        }
    .end annotation

    new-instance v0, Lun;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lun;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/foundation/text/input/internal/TextFieldDragAndDropNode_androidKt$textFieldDragAndDropNode$2;

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, p7

    move-object p7, p6

    move-object p6, v2

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/input/internal/TextFieldDragAndDropNode_androidKt$textFieldDragAndDropNode$2;-><init>(Lnl3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V

    invoke-static {v0, p0}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->DragAndDropTargetModifierNode(Lnl3;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic textFieldDragAndDropNode$default(Lll3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;
    .locals 1

    and-int/lit8 p10, p9, 0x8

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_3

    move-object p6, v0

    :cond_3
    and-int/lit16 p10, p9, 0x80

    if-eqz p10, :cond_4

    move-object p7, v0

    :cond_4
    and-int/lit16 p9, p9, 0x100

    if-eqz p9, :cond_5

    move-object p8, v0

    :cond_5
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/text/input/internal/TextFieldDragAndDropNode_androidKt;->textFieldDragAndDropNode(Lll3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    move-result-object p0

    return-object p0
.end method

.method private static final textFieldDragAndDropNode$lambda$0(Lll3;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z
    .locals 4

    invoke-static {p1}, Landroidx/compose/ui/draganddrop/DragAndDrop_androidKt;->toAndroidDragEvent(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Landroid/view/DragEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/content/MediaType;

    sget-object v2, Landroidx/compose/foundation/content/MediaType;->Companion:Landroidx/compose/foundation/content/MediaType$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/content/MediaType$Companion;->getAll()Landroidx/compose/foundation/content/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/content/MediaType;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_2
    return v3

    :cond_3
    return v1
.end method
