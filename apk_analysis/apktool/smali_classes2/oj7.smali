.class public final synthetic Loj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Z

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Z

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic m:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic q:Ldm3;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj7;->b:Ljava/lang/String;

    iput-object p2, p0, Loj7;->c:Lnl3;

    iput-object p3, p0, Loj7;->d:Lnl3;

    iput-boolean p4, p0, Loj7;->e:Z

    iput-object p5, p0, Loj7;->f:Lnl3;

    iput-object p6, p0, Loj7;->g:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Loj7;->h:Z

    iput-object p8, p0, Loj7;->i:Lbm3;

    iput-object p9, p0, Loj7;->j:Lbm3;

    iput-object p10, p0, Loj7;->k:Lbm3;

    iput-object p11, p0, Loj7;->l:Landroidx/compose/ui/graphics/Shape;

    iput-object p12, p0, Loj7;->m:Landroidx/compose/material3/SearchBarColors;

    iput p13, p0, Loj7;->n:F

    iput p14, p0, Loj7;->o:F

    iput-object p15, p0, Loj7;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 p1, p16

    iput-object p1, p0, Loj7;->q:Ldm3;

    move/from16 p1, p17

    iput p1, p0, Loj7;->r:I

    move/from16 p1, p18

    iput p1, p0, Loj7;->s:I

    move/from16 p1, p19

    iput p1, p0, Loj7;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v20, p1

    check-cast v20, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v1, v0, Loj7;->b:Ljava/lang/String;

    iget-object v2, v0, Loj7;->c:Lnl3;

    iget-object v3, v0, Loj7;->d:Lnl3;

    iget-boolean v4, v0, Loj7;->e:Z

    iget-object v5, v0, Loj7;->f:Lnl3;

    iget-object v6, v0, Loj7;->g:Landroidx/compose/ui/Modifier;

    iget-boolean v7, v0, Loj7;->h:Z

    iget-object v8, v0, Loj7;->i:Lbm3;

    iget-object v9, v0, Loj7;->j:Lbm3;

    iget-object v10, v0, Loj7;->k:Lbm3;

    iget-object v11, v0, Loj7;->l:Landroidx/compose/ui/graphics/Shape;

    iget-object v12, v0, Loj7;->m:Landroidx/compose/material3/SearchBarColors;

    iget v13, v0, Loj7;->n:F

    iget v14, v0, Loj7;->o:F

    iget-object v15, v0, Loj7;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v1

    iget-object v1, v0, Loj7;->q:Ldm3;

    move-object/from16 v17, v1

    iget v1, v0, Loj7;->r:I

    move/from16 v18, v1

    iget v1, v0, Loj7;->s:I

    iget v0, v0, Loj7;->t:I

    move/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v0

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/SearchBarKt;->w(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
