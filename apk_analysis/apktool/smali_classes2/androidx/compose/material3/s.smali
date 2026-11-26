.class public final synthetic Landroidx/compose/material3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/s;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/s;->c:I

    iput p3, p0, Landroidx/compose/material3/s;->d:I

    iput-object p4, p0, Landroidx/compose/material3/s;->e:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material3/s;->f:I

    iput-object p6, p0, Landroidx/compose/material3/s;->g:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material3/s;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v6, p0, Landroidx/compose/material3/s;->h:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/s;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/material3/s;->c:I

    iget v2, p0, Landroidx/compose/material3/s;->d:I

    iget-object v3, p0, Landroidx/compose/material3/s;->e:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Landroidx/compose/material3/s;->f:I

    iget-object v5, p0, Landroidx/compose/material3/s;->g:Landroidx/compose/ui/layout/Placeable;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ChipLayoutMeasurePolicy;->a(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
