.class public final synthetic Landroidx/compose/material3/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic c:Landroidx/compose/material3/internal/DraggableAnchorsNode;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/k;->b:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p2, p0, Landroidx/compose/material3/internal/k;->c:Landroidx/compose/material3/internal/DraggableAnchorsNode;

    iput-object p3, p0, Landroidx/compose/material3/internal/k;->d:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/internal/k;->d:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/material3/internal/k;->b:Landroidx/compose/ui/layout/MeasureScope;

    iget-object p0, p0, Landroidx/compose/material3/internal/k;->c:Landroidx/compose/material3/internal/DraggableAnchorsNode;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/internal/DraggableAnchorsNode;->b(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/internal/DraggableAnchorsNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
