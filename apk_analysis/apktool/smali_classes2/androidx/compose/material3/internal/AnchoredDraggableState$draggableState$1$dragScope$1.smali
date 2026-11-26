.class public final Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1$dragScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/internal/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy(F)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-static {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->access$getAnchoredDragScope$p(Landroidx/compose/material3/internal/AnchoredDraggableState;)Landroidx/compose/material3/internal/AnchoredDragScope;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1$dragScope$1;->this$0:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->newOffsetForDelta$material3(F)F

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Landroidx/compose/material3/internal/AnchoredDragScope;->dragTo$default(Landroidx/compose/material3/internal/AnchoredDragScope;FFILjava/lang/Object;)V

    return-void
.end method
