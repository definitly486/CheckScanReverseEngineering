.class public final synthetic Lwi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLll3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;III)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lwi1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi1;->o:Ljava/lang/Object;

    iput-boolean p2, p0, Lwi1;->c:Z

    iput-object p3, p0, Lwi1;->d:Lll3;

    iput-object p4, p0, Lwi1;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lwi1;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lwi1;->g:Z

    iput-object p7, p0, Lwi1;->p:Ljava/lang/Object;

    iput-object p8, p0, Lwi1;->h:Landroidx/compose/foundation/BorderStroke;

    iput-object p9, p0, Lwi1;->q:Ljava/lang/Object;

    iput-object p10, p0, Lwi1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p11, p0, Lwi1;->j:Lbm3;

    iput-object p12, p0, Lwi1;->k:Lbm3;

    iput p13, p0, Lwi1;->l:I

    iput p14, p0, Lwi1;->m:I

    move/from16 p1, p15

    iput p1, p0, Lwi1;->n:I

    return-void
.end method

.method public synthetic constructor <init>(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lwi1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lwi1;->c:Z

    iput-object p2, p0, Lwi1;->d:Lll3;

    iput-object p3, p0, Lwi1;->j:Lbm3;

    iput-object p4, p0, Lwi1;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lwi1;->g:Z

    iput-object p6, p0, Lwi1;->k:Lbm3;

    iput-object p7, p0, Lwi1;->o:Ljava/lang/Object;

    iput-object p8, p0, Lwi1;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p9, p0, Lwi1;->p:Ljava/lang/Object;

    iput-object p10, p0, Lwi1;->q:Ljava/lang/Object;

    iput-object p11, p0, Lwi1;->h:Landroidx/compose/foundation/BorderStroke;

    iput-object p12, p0, Lwi1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p13, p0, Lwi1;->l:I

    iput p14, p0, Lwi1;->m:I

    move/from16 p1, p15

    iput p1, p0, Lwi1;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lwi1;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lwi1;->o:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;

    iget-object v1, v0, Lwi1;->p:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroidx/compose/material3/SegmentedButtonColors;

    iget-object v1, v0, Lwi1;->q:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-boolean v3, v0, Lwi1;->c:Z

    iget-object v4, v0, Lwi1;->d:Lll3;

    iget-object v5, v0, Lwi1;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, v0, Lwi1;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v7, v0, Lwi1;->g:Z

    iget-object v9, v0, Lwi1;->h:Landroidx/compose/foundation/BorderStroke;

    iget-object v11, v0, Lwi1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v12, v0, Lwi1;->j:Lbm3;

    iget-object v13, v0, Lwi1;->k:Lbm3;

    iget v14, v0, Lwi1;->l:I

    iget v15, v0, Lwi1;->m:I

    iget v0, v0, Lwi1;->n:I

    move/from16 v16, v0

    invoke-static/range {v2 .. v18}, Landroidx/compose/material3/SegmentedButtonKt;->h(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLll3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lwi1;->o:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lbm3;

    iget-object v1, v0, Lwi1;->p:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroidx/compose/material3/SelectableChipColors;

    iget-object v1, v0, Lwi1;->q:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Landroidx/compose/material3/SelectableChipElevation;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-boolean v2, v0, Lwi1;->c:Z

    iget-object v3, v0, Lwi1;->d:Lll3;

    iget-object v4, v0, Lwi1;->j:Lbm3;

    iget-object v5, v0, Lwi1;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v6, v0, Lwi1;->g:Z

    iget-object v7, v0, Lwi1;->k:Lbm3;

    iget-object v9, v0, Lwi1;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v12, v0, Lwi1;->h:Landroidx/compose/foundation/BorderStroke;

    iget-object v13, v0, Lwi1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v14, v0, Lwi1;->l:I

    iget v15, v0, Lwi1;->m:I

    iget v0, v0, Lwi1;->n:I

    move/from16 v16, v0

    invoke-static/range {v2 .. v18}, Landroidx/compose/material3/ChipKt;->j(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
