.class public final synthetic Landroidx/compose/material3/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic i:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic j:Lr07;

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic n:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic o:Z

.field public final synthetic p:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lr07;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/k3;->b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iput p2, p0, Landroidx/compose/material3/k3;->c:I

    iput p3, p0, Landroidx/compose/material3/k3;->d:I

    iput-object p4, p0, Landroidx/compose/material3/k3;->e:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/k3;->f:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/k3;->g:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/k3;->h:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/k3;->i:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/k3;->j:Lr07;

    iput-object p10, p0, Landroidx/compose/material3/k3;->k:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/k3;->l:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/k3;->m:Landroidx/compose/ui/layout/Placeable;

    iput-object p13, p0, Landroidx/compose/material3/k3;->n:Landroidx/compose/ui/layout/MeasureScope;

    iput-boolean p14, p0, Landroidx/compose/material3/k3;->o:Z

    iput p15, p0, Landroidx/compose/material3/k3;->p:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v15, v0, Landroidx/compose/material3/k3;->p:F

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v0, Landroidx/compose/material3/k3;->b:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iget v2, v0, Landroidx/compose/material3/k3;->c:I

    iget v3, v0, Landroidx/compose/material3/k3;->d:I

    iget-object v4, v0, Landroidx/compose/material3/k3;->e:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, v0, Landroidx/compose/material3/k3;->f:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, v0, Landroidx/compose/material3/k3;->g:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, v0, Landroidx/compose/material3/k3;->h:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, v0, Landroidx/compose/material3/k3;->i:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/k3;->j:Lr07;

    iget-object v10, v0, Landroidx/compose/material3/k3;->k:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/k3;->l:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/k3;->m:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/k3;->n:Landroidx/compose/ui/layout/MeasureScope;

    iget-boolean v14, v0, Landroidx/compose/material3/k3;->o:Z

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->c(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lr07;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;ZFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
