.class public final synthetic Lnl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

.field public final synthetic c:Z

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/material3/SegmentedButtonColors;

.field public final synthetic i:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic j:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLnl3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl7;->b:Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    iput-boolean p2, p0, Lnl7;->c:Z

    iput-object p3, p0, Lnl7;->d:Lnl3;

    iput-object p4, p0, Lnl7;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lnl7;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lnl7;->g:Z

    iput-object p7, p0, Lnl7;->h:Landroidx/compose/material3/SegmentedButtonColors;

    iput-object p8, p0, Lnl7;->i:Landroidx/compose/foundation/BorderStroke;

    iput-object p9, p0, Lnl7;->j:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p10, p0, Lnl7;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p11, p0, Lnl7;->l:Lbm3;

    iput-object p12, p0, Lnl7;->m:Lbm3;

    iput p13, p0, Lnl7;->n:I

    iput p14, p0, Lnl7;->o:I

    iput p15, p0, Lnl7;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Lnl7;->b:Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    iget-boolean v2, v0, Lnl7;->c:Z

    iget-object v3, v0, Lnl7;->d:Lnl3;

    iget-object v4, v0, Lnl7;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Lnl7;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v6, v0, Lnl7;->g:Z

    iget-object v7, v0, Lnl7;->h:Landroidx/compose/material3/SegmentedButtonColors;

    iget-object v8, v0, Lnl7;->i:Landroidx/compose/foundation/BorderStroke;

    iget-object v9, v0, Lnl7;->j:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v10, v0, Lnl7;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v11, v0, Lnl7;->l:Lbm3;

    iget-object v12, v0, Lnl7;->m:Lbm3;

    iget v13, v0, Lnl7;->n:I

    iget v14, v0, Lnl7;->o:I

    iget v15, v0, Lnl7;->p:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/SegmentedButtonKt;->c(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLnl3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
