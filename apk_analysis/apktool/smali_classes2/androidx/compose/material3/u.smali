.class public final synthetic Landroidx/compose/material3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ClockDialNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ClockDialNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/u;->b:Landroidx/compose/material3/ClockDialNode;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-object p0, p0, Landroidx/compose/material3/u;->b:Landroidx/compose/material3/ClockDialNode;

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ClockDialNode$pointerInputDragNode$1;->b(Landroidx/compose/material3/ClockDialNode;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
