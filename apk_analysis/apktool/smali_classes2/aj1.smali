.class public final synthetic Laj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic k:Landroidx/compose/material3/SelectableChipColors;

.field public final synthetic l:Landroidx/compose/material3/SelectableChipElevation;

.field public final synthetic m:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Laj1;->b:Z

    iput-object p2, p0, Laj1;->c:Lll3;

    iput-object p3, p0, Laj1;->d:Lbm3;

    iput-object p4, p0, Laj1;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Laj1;->f:Z

    iput-object p6, p0, Laj1;->g:Lbm3;

    iput-object p7, p0, Laj1;->h:Lbm3;

    iput-object p8, p0, Laj1;->i:Lbm3;

    iput-object p9, p0, Laj1;->j:Landroidx/compose/ui/graphics/Shape;

    iput-object p10, p0, Laj1;->k:Landroidx/compose/material3/SelectableChipColors;

    iput-object p11, p0, Laj1;->l:Landroidx/compose/material3/SelectableChipElevation;

    iput-object p12, p0, Laj1;->m:Landroidx/compose/foundation/BorderStroke;

    iput-object p13, p0, Laj1;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p14, p0, Laj1;->o:I

    iput p15, p0, Laj1;->p:I

    move/from16 p1, p16

    iput p1, p0, Laj1;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-boolean v1, v0, Laj1;->b:Z

    iget-object v2, v0, Laj1;->c:Lll3;

    iget-object v3, v0, Laj1;->d:Lbm3;

    iget-object v4, v0, Laj1;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v5, v0, Laj1;->f:Z

    iget-object v6, v0, Laj1;->g:Lbm3;

    iget-object v7, v0, Laj1;->h:Lbm3;

    iget-object v8, v0, Laj1;->i:Lbm3;

    iget-object v9, v0, Laj1;->j:Landroidx/compose/ui/graphics/Shape;

    iget-object v10, v0, Laj1;->k:Landroidx/compose/material3/SelectableChipColors;

    iget-object v11, v0, Laj1;->l:Landroidx/compose/material3/SelectableChipElevation;

    iget-object v12, v0, Laj1;->m:Landroidx/compose/foundation/BorderStroke;

    iget-object v13, v0, Laj1;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v14, v0, Laj1;->o:I

    iget v15, v0, Laj1;->p:I

    iget v0, v0, Laj1;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/ChipKt;->o(ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
