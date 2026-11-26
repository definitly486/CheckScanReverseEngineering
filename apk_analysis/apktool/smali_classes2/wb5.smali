.class public final synthetic Lwb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/BoxScope;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;

.field public final synthetic d:Ly22;

.field public final synthetic e:Lll3;

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Landroidx/compose/material3/SheetState;

.field public final synthetic i:F

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:F

.field public final synthetic o:Lbm3;

.field public final synthetic p:Lbm3;

.field public final synthetic q:Ldm3;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwb5;->b:Landroidx/compose/foundation/layout/BoxScope;

    iput-object p2, p0, Lwb5;->c:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Lwb5;->d:Ly22;

    iput-object p4, p0, Lwb5;->e:Lll3;

    iput-object p5, p0, Lwb5;->f:Lnl3;

    iput-object p6, p0, Lwb5;->g:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Lwb5;->h:Landroidx/compose/material3/SheetState;

    iput p8, p0, Lwb5;->i:F

    iput-boolean p9, p0, Lwb5;->j:Z

    iput-object p10, p0, Lwb5;->k:Landroidx/compose/ui/graphics/Shape;

    iput-wide p11, p0, Lwb5;->l:J

    iput-wide p13, p0, Lwb5;->m:J

    iput p15, p0, Lwb5;->n:F

    move-object/from16 p1, p16

    iput-object p1, p0, Lwb5;->o:Lbm3;

    move-object/from16 p1, p17

    iput-object p1, p0, Lwb5;->p:Lbm3;

    move-object/from16 p1, p18

    iput-object p1, p0, Lwb5;->q:Ldm3;

    move/from16 p1, p19

    iput p1, p0, Lwb5;->r:I

    move/from16 p1, p20

    iput p1, p0, Lwb5;->s:I

    move/from16 p1, p21

    iput p1, p0, Lwb5;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v22, p1

    check-cast v22, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v1, v0, Lwb5;->b:Landroidx/compose/foundation/layout/BoxScope;

    iget-object v2, v0, Lwb5;->c:Landroidx/compose/animation/core/Animatable;

    iget-object v3, v0, Lwb5;->d:Ly22;

    iget-object v4, v0, Lwb5;->e:Lll3;

    iget-object v5, v0, Lwb5;->f:Lnl3;

    iget-object v6, v0, Lwb5;->g:Landroidx/compose/ui/Modifier;

    iget-object v7, v0, Lwb5;->h:Landroidx/compose/material3/SheetState;

    iget v8, v0, Lwb5;->i:F

    iget-boolean v9, v0, Lwb5;->j:Z

    iget-object v10, v0, Lwb5;->k:Landroidx/compose/ui/graphics/Shape;

    iget-wide v11, v0, Lwb5;->l:J

    iget-wide v13, v0, Lwb5;->m:J

    iget v15, v0, Lwb5;->n:F

    move-object/from16 v16, v1

    iget-object v1, v0, Lwb5;->o:Lbm3;

    move-object/from16 v17, v1

    iget-object v1, v0, Lwb5;->p:Lbm3;

    move-object/from16 v18, v1

    iget-object v1, v0, Lwb5;->q:Ldm3;

    move-object/from16 v19, v1

    iget v1, v0, Lwb5;->r:I

    move/from16 v20, v1

    iget v1, v0, Lwb5;->s:I

    iget v0, v0, Lwb5;->t:I

    move/from16 v21, v20

    move/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/ModalBottomSheetKt;->a(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Ly22;Lll3;Lnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLbm3;Lbm3;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
