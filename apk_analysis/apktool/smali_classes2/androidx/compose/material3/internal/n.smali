.class public final synthetic Landroidx/compose/material3/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/n;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/internal/n;->c:F

    iput p3, p0, Landroidx/compose/material3/internal/n;->d:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/material3/internal/n;->d:F

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/material3/internal/n;->b:Landroidx/compose/ui/layout/Placeable;

    iget p0, p0, Landroidx/compose/material3/internal/n;->c:F

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->a(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
