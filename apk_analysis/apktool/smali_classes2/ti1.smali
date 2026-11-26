.class public final synthetic Lti1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lll3;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic l:Landroidx/compose/material3/SelectableChipColors;

.field public final synthetic m:Landroidx/compose/material3/SelectableChipElevation;

.field public final synthetic n:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic o:F

.field public final synthetic p:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;Lll3;ZLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lti1;->b:Z

    iput-object p2, p0, Lti1;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lti1;->d:Lll3;

    iput-boolean p4, p0, Lti1;->e:Z

    iput-object p5, p0, Lti1;->f:Lbm3;

    iput-object p6, p0, Lti1;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lti1;->h:Lbm3;

    iput-object p8, p0, Lti1;->i:Lbm3;

    iput-object p9, p0, Lti1;->j:Lbm3;

    iput-object p10, p0, Lti1;->k:Landroidx/compose/ui/graphics/Shape;

    iput-object p11, p0, Lti1;->l:Landroidx/compose/material3/SelectableChipColors;

    iput-object p12, p0, Lti1;->m:Landroidx/compose/material3/SelectableChipElevation;

    iput-object p13, p0, Lti1;->n:Landroidx/compose/foundation/BorderStroke;

    iput p14, p0, Lti1;->o:F

    iput-object p15, p0, Lti1;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, p16

    iput-object p1, p0, Lti1;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p17

    iput p1, p0, Lti1;->r:I

    move/from16 p1, p18

    iput p1, p0, Lti1;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-boolean v1, v0, Lti1;->b:Z

    iget-object v2, v0, Lti1;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lti1;->d:Lll3;

    iget-boolean v4, v0, Lti1;->e:Z

    iget-object v5, v0, Lti1;->f:Lbm3;

    iget-object v6, v0, Lti1;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lti1;->h:Lbm3;

    iget-object v8, v0, Lti1;->i:Lbm3;

    iget-object v9, v0, Lti1;->j:Lbm3;

    iget-object v10, v0, Lti1;->k:Landroidx/compose/ui/graphics/Shape;

    iget-object v11, v0, Lti1;->l:Landroidx/compose/material3/SelectableChipColors;

    iget-object v12, v0, Lti1;->m:Landroidx/compose/material3/SelectableChipElevation;

    iget-object v13, v0, Lti1;->n:Landroidx/compose/foundation/BorderStroke;

    iget v14, v0, Lti1;->o:F

    iget-object v15, v0, Lti1;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 v16, v1

    iget-object v1, v0, Lti1;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v17, v1

    iget v1, v0, Lti1;->r:I

    iget v0, v0, Lti1;->s:I

    move-object/from16 v18, v17

    move/from16 v17, v1

    move/from16 v1, v16

    move-object/from16 v16, v18

    move/from16 v18, v0

    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/ChipKt;->d(ZLandroidx/compose/ui/Modifier;Lll3;ZLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
