.class public final synthetic Lsl7;
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

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLnl3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl7;->b:Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    iput-boolean p2, p0, Lsl7;->c:Z

    iput-object p3, p0, Lsl7;->d:Lnl3;

    iput-object p4, p0, Lsl7;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lsl7;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lsl7;->g:Z

    iput-object p7, p0, Lsl7;->h:Landroidx/compose/material3/SegmentedButtonColors;

    iput-object p8, p0, Lsl7;->i:Landroidx/compose/foundation/BorderStroke;

    iput-object p9, p0, Lsl7;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lsl7;->k:Lbm3;

    iput-object p11, p0, Lsl7;->l:Lbm3;

    iput p12, p0, Lsl7;->m:I

    iput p13, p0, Lsl7;->n:I

    iput p14, p0, Lsl7;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lsl7;->b:Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;

    iget-boolean v2, v0, Lsl7;->c:Z

    iget-object v3, v0, Lsl7;->d:Lnl3;

    iget-object v4, v0, Lsl7;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Lsl7;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v6, v0, Lsl7;->g:Z

    iget-object v7, v0, Lsl7;->h:Landroidx/compose/material3/SegmentedButtonColors;

    iget-object v8, v0, Lsl7;->i:Landroidx/compose/foundation/BorderStroke;

    iget-object v9, v0, Lsl7;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v10, v0, Lsl7;->k:Lbm3;

    iget-object v11, v0, Lsl7;->l:Lbm3;

    iget v12, v0, Lsl7;->m:I

    iget v13, v0, Lsl7;->n:I

    iget v14, v0, Lsl7;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SegmentedButtonKt;->a(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLnl3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
