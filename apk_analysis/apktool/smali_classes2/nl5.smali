.class public final synthetic Lnl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Z

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:I

.field public final synthetic n:F

.field public final synthetic o:I

.field public final synthetic p:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IFFLandroidx/compose/ui/layout/Placeable;IFLandroidx/compose/ui/layout/Placeable;IFILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl5;->b:Landroidx/compose/ui/layout/Placeable;

    iput-boolean p2, p0, Lnl5;->c:Z

    iput p3, p0, Lnl5;->d:F

    iput-object p4, p0, Lnl5;->e:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Lnl5;->f:I

    iput p6, p0, Lnl5;->g:F

    iput p7, p0, Lnl5;->h:F

    iput-object p8, p0, Lnl5;->i:Landroidx/compose/ui/layout/Placeable;

    iput p9, p0, Lnl5;->j:I

    iput p10, p0, Lnl5;->k:F

    iput-object p11, p0, Lnl5;->l:Landroidx/compose/ui/layout/Placeable;

    iput p12, p0, Lnl5;->m:I

    iput p13, p0, Lnl5;->n:F

    iput p14, p0, Lnl5;->o:I

    iput-object p15, p0, Lnl5;->p:Landroidx/compose/ui/layout/MeasureScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lnl5;->p:Landroidx/compose/ui/layout/MeasureScope;

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v0, Lnl5;->b:Landroidx/compose/ui/layout/Placeable;

    iget-boolean v2, v0, Lnl5;->c:Z

    iget v3, v0, Lnl5;->d:F

    iget-object v4, v0, Lnl5;->e:Landroidx/compose/ui/layout/Placeable;

    iget v5, v0, Lnl5;->f:I

    iget v6, v0, Lnl5;->g:F

    iget v7, v0, Lnl5;->h:F

    iget-object v8, v0, Lnl5;->i:Landroidx/compose/ui/layout/Placeable;

    iget v9, v0, Lnl5;->j:I

    iget v10, v0, Lnl5;->k:F

    iget-object v11, v0, Lnl5;->l:Landroidx/compose/ui/layout/Placeable;

    iget v12, v0, Lnl5;->m:I

    iget v13, v0, Lnl5;->n:F

    iget v14, v0, Lnl5;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/NavigationRailKt;->c(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IFFLandroidx/compose/ui/layout/Placeable;IFLandroidx/compose/ui/layout/Placeable;IFILandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
