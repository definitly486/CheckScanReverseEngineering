.class public final synthetic Landroidx/compose/foundation/gestures/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

.field public final synthetic c:Landroidx/compose/foundation/gestures/AnchoredDragScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/b;->b:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/b;->c:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/b;->c:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/b;->b:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2;->g(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method
