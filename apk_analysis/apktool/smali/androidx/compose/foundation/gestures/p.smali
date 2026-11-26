.class public final synthetic Landroidx/compose/foundation/gestures/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/Drag2DScope;

.field public final synthetic c:Landroidx/compose/foundation/gestures/Draggable2DNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/Drag2DScope;Landroidx/compose/foundation/gestures/Draggable2DNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/p;->b:Landroidx/compose/foundation/gestures/Drag2DScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/p;->c:Landroidx/compose/foundation/gestures/Draggable2DNode;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/p;->c:Landroidx/compose/foundation/gestures/Draggable2DNode;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/p;->b:Landroidx/compose/foundation/gestures/Drag2DScope;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/gestures/Draggable2DNode$drag$2;->g(Landroidx/compose/foundation/gestures/Drag2DScope;Landroidx/compose/foundation/gestures/Draggable2DNode;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)Lj59;

    move-result-object p0

    return-object p0
.end method
