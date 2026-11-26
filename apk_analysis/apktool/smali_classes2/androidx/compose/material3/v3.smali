.class public final synthetic Landroidx/compose/material3/v3;
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

.field public final synthetic g:Lp07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILp07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/v3;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/v3;->c:I

    iput p3, p0, Landroidx/compose/material3/v3;->d:I

    iput-object p4, p0, Landroidx/compose/material3/v3;->e:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material3/v3;->f:I

    iput-object p6, p0, Landroidx/compose/material3/v3;->g:Lp07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Landroidx/compose/material3/v3;->g:Lp07;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/v3;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/material3/v3;->c:I

    iget v2, p0, Landroidx/compose/material3/v3;->d:I

    iget-object v3, p0, Landroidx/compose/material3/v3;->e:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Landroidx/compose/material3/v3;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->a(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILp07;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
