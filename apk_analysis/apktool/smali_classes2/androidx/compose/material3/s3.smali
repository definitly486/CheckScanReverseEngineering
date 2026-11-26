.class public final synthetic Landroidx/compose/material3/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/MeasureScope;JLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/s3;->b:Landroidx/compose/ui/layout/MeasureScope;

    iput-wide p2, p0, Landroidx/compose/material3/s3;->c:J

    iput-object p4, p0, Landroidx/compose/material3/s3;->d:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Landroidx/compose/material3/s3;->e:F

    iput p6, p0, Landroidx/compose/material3/s3;->f:F

    iput-object p7, p0, Landroidx/compose/material3/s3;->g:Landroidx/compose/runtime/MutableState;

    iput p8, p0, Landroidx/compose/material3/s3;->h:I

    iput-object p9, p0, Landroidx/compose/material3/s3;->i:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Landroidx/compose/material3/s3;->j:I

    iput-object p11, p0, Landroidx/compose/material3/s3;->k:Landroidx/compose/ui/layout/Placeable;

    iput p12, p0, Landroidx/compose/material3/s3;->l:I

    iput-object p13, p0, Landroidx/compose/material3/s3;->m:Landroidx/compose/ui/layout/Placeable;

    iput p14, p0, Landroidx/compose/material3/s3;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/compose/material3/s3;->n:I

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v0, Landroidx/compose/material3/s3;->b:Landroidx/compose/ui/layout/MeasureScope;

    move-object v3, v1

    iget-wide v1, v0, Landroidx/compose/material3/s3;->c:J

    move-object v4, v3

    iget-object v3, v0, Landroidx/compose/material3/s3;->d:Landroidx/compose/runtime/MutableState;

    move-object v5, v4

    iget v4, v0, Landroidx/compose/material3/s3;->e:F

    move-object v6, v5

    iget v5, v0, Landroidx/compose/material3/s3;->f:F

    move-object v7, v6

    iget-object v6, v0, Landroidx/compose/material3/s3;->g:Landroidx/compose/runtime/MutableState;

    move-object v8, v7

    iget v7, v0, Landroidx/compose/material3/s3;->h:I

    move-object v9, v8

    iget-object v8, v0, Landroidx/compose/material3/s3;->i:Landroidx/compose/ui/layout/Placeable;

    move-object v10, v9

    iget v9, v0, Landroidx/compose/material3/s3;->j:I

    move-object v11, v10

    iget-object v10, v0, Landroidx/compose/material3/s3;->k:Landroidx/compose/ui/layout/Placeable;

    move-object v12, v11

    iget v11, v0, Landroidx/compose/material3/s3;->l:I

    iget-object v0, v0, Landroidx/compose/material3/s3;->m:Landroidx/compose/ui/layout/Placeable;

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/SearchBarKt$SearchBarLayout$2$1;->a(Landroidx/compose/ui/layout/MeasureScope;JLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
