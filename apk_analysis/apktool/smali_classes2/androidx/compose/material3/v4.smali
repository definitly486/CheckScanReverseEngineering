.class public final synthetic Landroidx/compose/material3/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(ZILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/v4;->b:Z

    iput p2, p0, Landroidx/compose/material3/v4;->c:I

    iput-object p3, p0, Landroidx/compose/material3/v4;->d:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/material3/v4;->e:I

    iput-object p5, p0, Landroidx/compose/material3/v4;->f:Landroidx/compose/ui/layout/Placeable;

    iput p6, p0, Landroidx/compose/material3/v4;->g:I

    iput p7, p0, Landroidx/compose/material3/v4;->h:I

    iput p8, p0, Landroidx/compose/material3/v4;->i:I

    iput-object p9, p0, Landroidx/compose/material3/v4;->j:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p10, p0, Landroidx/compose/material3/v4;->k:Landroidx/compose/ui/layout/Placeable;

    iput p11, p0, Landroidx/compose/material3/v4;->l:I

    iput p12, p0, Landroidx/compose/material3/v4;->m:I

    iput p13, p0, Landroidx/compose/material3/v4;->n:I

    iput p14, p0, Landroidx/compose/material3/v4;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/compose/material3/v4;->o:I

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-boolean v1, v0, Landroidx/compose/material3/v4;->b:Z

    move v2, v1

    iget v1, v0, Landroidx/compose/material3/v4;->c:I

    move v3, v2

    iget-object v2, v0, Landroidx/compose/material3/v4;->d:Landroidx/compose/ui/layout/Placeable;

    move v4, v3

    iget v3, v0, Landroidx/compose/material3/v4;->e:I

    move v5, v4

    iget-object v4, v0, Landroidx/compose/material3/v4;->f:Landroidx/compose/ui/layout/Placeable;

    move v6, v5

    iget v5, v0, Landroidx/compose/material3/v4;->g:I

    move v7, v6

    iget v6, v0, Landroidx/compose/material3/v4;->h:I

    move v8, v7

    iget v7, v0, Landroidx/compose/material3/v4;->i:I

    move v9, v8

    iget-object v8, v0, Landroidx/compose/material3/v4;->j:Landroidx/compose/ui/layout/MeasureScope;

    move v10, v9

    iget-object v9, v0, Landroidx/compose/material3/v4;->k:Landroidx/compose/ui/layout/Placeable;

    move v11, v10

    iget v10, v0, Landroidx/compose/material3/v4;->l:I

    move v12, v11

    iget v11, v0, Landroidx/compose/material3/v4;->m:I

    iget v0, v0, Landroidx/compose/material3/v4;->n:I

    move v15, v12

    move v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1;->a(ZILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
