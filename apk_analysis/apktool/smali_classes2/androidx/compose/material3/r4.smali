.class public final synthetic Landroidx/compose/material3/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/material3/TextFieldMeasurePolicy;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic n:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic o:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic p:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic q:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic r:F


# direct methods
.method public synthetic constructor <init>(Lr07;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/r4;->b:Lr07;

    iput-boolean p2, p0, Landroidx/compose/material3/r4;->c:Z

    iput-object p3, p0, Landroidx/compose/material3/r4;->d:Landroidx/compose/material3/TextFieldMeasurePolicy;

    iput p4, p0, Landroidx/compose/material3/r4;->e:I

    iput p5, p0, Landroidx/compose/material3/r4;->f:I

    iput-object p6, p0, Landroidx/compose/material3/r4;->g:Landroidx/compose/ui/layout/MeasureScope;

    iput p7, p0, Landroidx/compose/material3/r4;->h:I

    iput p8, p0, Landroidx/compose/material3/r4;->i:I

    iput-object p9, p0, Landroidx/compose/material3/r4;->j:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material3/r4;->k:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/r4;->l:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/r4;->m:Landroidx/compose/ui/layout/Placeable;

    iput-object p13, p0, Landroidx/compose/material3/r4;->n:Landroidx/compose/ui/layout/Placeable;

    iput-object p14, p0, Landroidx/compose/material3/r4;->o:Landroidx/compose/ui/layout/Placeable;

    iput-object p15, p0, Landroidx/compose/material3/r4;->p:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/r4;->q:Landroidx/compose/ui/layout/Placeable;

    move/from16 p1, p17

    iput p1, p0, Landroidx/compose/material3/r4;->r:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/material3/r4;->r:F

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/material3/r4;->b:Lr07;

    iget-boolean v2, v0, Landroidx/compose/material3/r4;->c:Z

    iget-object v3, v0, Landroidx/compose/material3/r4;->d:Landroidx/compose/material3/TextFieldMeasurePolicy;

    iget v4, v0, Landroidx/compose/material3/r4;->e:I

    iget v5, v0, Landroidx/compose/material3/r4;->f:I

    iget-object v6, v0, Landroidx/compose/material3/r4;->g:Landroidx/compose/ui/layout/MeasureScope;

    iget v7, v0, Landroidx/compose/material3/r4;->h:I

    iget v8, v0, Landroidx/compose/material3/r4;->i:I

    iget-object v9, v0, Landroidx/compose/material3/r4;->j:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/r4;->k:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/r4;->l:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/r4;->m:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/r4;->n:Landroidx/compose/ui/layout/Placeable;

    iget-object v14, v0, Landroidx/compose/material3/r4;->o:Landroidx/compose/ui/layout/Placeable;

    iget-object v15, v0, Landroidx/compose/material3/r4;->p:Landroidx/compose/ui/layout/Placeable;

    iget-object v0, v0, Landroidx/compose/material3/r4;->q:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/TextFieldMeasurePolicy;->d(Lr07;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
