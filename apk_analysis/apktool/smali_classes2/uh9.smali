.class public final synthetic Luh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Landroidx/compose/material3/RailPredictiveBackState;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Landroidx/compose/material3/ModalWideNavigationRailState;

.field public final synthetic i:Landroidx/compose/material3/WideNavigationRailColors;

.field public final synthetic j:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic k:F

.field public final synthetic l:Lbm3;

.field public final synthetic m:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic n:Z

.field public final synthetic o:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic p:Lbm3;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Luh9;->b:Z

    iput-boolean p2, p0, Luh9;->c:Z

    iput-object p3, p0, Luh9;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Luh9;->e:Landroidx/compose/material3/RailPredictiveBackState;

    iput-object p5, p0, Luh9;->f:Lbm3;

    iput-object p6, p0, Luh9;->g:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Luh9;->h:Landroidx/compose/material3/ModalWideNavigationRailState;

    iput-object p8, p0, Luh9;->i:Landroidx/compose/material3/WideNavigationRailColors;

    iput-object p9, p0, Luh9;->j:Landroidx/compose/ui/graphics/Shape;

    iput p10, p0, Luh9;->k:F

    iput-object p11, p0, Luh9;->l:Lbm3;

    iput-object p12, p0, Luh9;->m:Landroidx/compose/foundation/layout/WindowInsets;

    iput-boolean p13, p0, Luh9;->n:Z

    iput-object p14, p0, Luh9;->o:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p15, p0, Luh9;->p:Lbm3;

    move/from16 p1, p16

    iput p1, p0, Luh9;->q:I

    move/from16 p1, p17

    iput p1, p0, Luh9;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-boolean v1, v0, Luh9;->b:Z

    iget-boolean v2, v0, Luh9;->c:Z

    iget-object v3, v0, Luh9;->d:Landroidx/compose/animation/core/Animatable;

    iget-object v4, v0, Luh9;->e:Landroidx/compose/material3/RailPredictiveBackState;

    iget-object v5, v0, Luh9;->f:Lbm3;

    iget-object v6, v0, Luh9;->g:Landroidx/compose/ui/Modifier;

    iget-object v7, v0, Luh9;->h:Landroidx/compose/material3/ModalWideNavigationRailState;

    iget-object v8, v0, Luh9;->i:Landroidx/compose/material3/WideNavigationRailColors;

    iget-object v9, v0, Luh9;->j:Landroidx/compose/ui/graphics/Shape;

    iget v10, v0, Luh9;->k:F

    iget-object v11, v0, Luh9;->l:Lbm3;

    iget-object v12, v0, Luh9;->m:Landroidx/compose/foundation/layout/WindowInsets;

    iget-boolean v13, v0, Luh9;->n:Z

    iget-object v14, v0, Luh9;->o:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v15, v0, Luh9;->p:Lbm3;

    move/from16 v16, v1

    iget v1, v0, Luh9;->q:I

    iget v0, v0, Luh9;->r:I

    move/from16 v17, v16

    move/from16 v16, v1

    move/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/WideNavigationRailKt;->o(ZZLandroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/WideNavigationRailColors;Landroidx/compose/ui/graphics/Shape;FLbm3;Landroidx/compose/foundation/layout/WindowInsets;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
