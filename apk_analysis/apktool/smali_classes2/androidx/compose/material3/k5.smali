.class public final synthetic Landroidx/compose/material3/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/TopAppBarMeasurePolicy;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/k5;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/k5;->c:I

    iput-object p3, p0, Landroidx/compose/material3/k5;->d:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/k5;->e:Landroidx/compose/ui/layout/Placeable;

    iput-wide p5, p0, Landroidx/compose/material3/k5;->f:J

    iput-object p7, p0, Landroidx/compose/material3/k5;->g:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p8, p0, Landroidx/compose/material3/k5;->h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

    iput p9, p0, Landroidx/compose/material3/k5;->i:I

    iput p10, p0, Landroidx/compose/material3/k5;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v9, p0, Landroidx/compose/material3/k5;->j:I

    move-object v10, p1

    check-cast v10, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/k5;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/material3/k5;->c:I

    iget-object v2, p0, Landroidx/compose/material3/k5;->d:Landroidx/compose/ui/layout/Placeable;

    iget-object v3, p0, Landroidx/compose/material3/k5;->e:Landroidx/compose/ui/layout/Placeable;

    iget-wide v4, p0, Landroidx/compose/material3/k5;->f:J

    iget-object v6, p0, Landroidx/compose/material3/k5;->g:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v7, p0, Landroidx/compose/material3/k5;->h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

    iget v8, p0, Landroidx/compose/material3/k5;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TopAppBarMeasurePolicy;->a(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/TopAppBarMeasurePolicy;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
