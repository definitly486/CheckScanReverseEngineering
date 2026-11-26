.class public final synthetic Landroidx/compose/foundation/draganddrop/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/g;->b:Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/g;->b:Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-static {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->a(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
