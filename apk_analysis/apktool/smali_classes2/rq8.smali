.class public final synthetic Lrq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TextFieldDefaults;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic h:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic i:Z

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Lbm3;

.field public final synthetic p:Lbm3;

.field public final synthetic q:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic r:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic s:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic t:Lbm3;

.field public final synthetic u:I

.field public final synthetic v:I

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lbm3;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq8;->b:Landroidx/compose/material3/TextFieldDefaults;

    iput-object p2, p0, Lrq8;->c:Ljava/lang/String;

    iput-object p3, p0, Lrq8;->d:Lbm3;

    iput-boolean p4, p0, Lrq8;->e:Z

    iput-boolean p5, p0, Lrq8;->f:Z

    iput-object p6, p0, Lrq8;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p7, p0, Lrq8;->h:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-boolean p8, p0, Lrq8;->i:Z

    iput-object p9, p0, Lrq8;->j:Lbm3;

    iput-object p10, p0, Lrq8;->k:Lbm3;

    iput-object p11, p0, Lrq8;->l:Lbm3;

    iput-object p12, p0, Lrq8;->m:Lbm3;

    iput-object p13, p0, Lrq8;->n:Lbm3;

    iput-object p14, p0, Lrq8;->o:Lbm3;

    iput-object p15, p0, Lrq8;->p:Lbm3;

    move-object/from16 p1, p16

    iput-object p1, p0, Lrq8;->q:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p1, p17

    iput-object p1, p0, Lrq8;->r:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 p1, p18

    iput-object p1, p0, Lrq8;->s:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, p19

    iput-object p1, p0, Lrq8;->t:Lbm3;

    move/from16 p1, p20

    iput p1, p0, Lrq8;->u:I

    move/from16 p1, p21

    iput p1, p0, Lrq8;->v:I

    move/from16 p1, p22

    iput p1, p0, Lrq8;->w:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v23, p1

    check-cast v23, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    iget-object v1, v0, Lrq8;->b:Landroidx/compose/material3/TextFieldDefaults;

    iget-object v2, v0, Lrq8;->c:Ljava/lang/String;

    iget-object v3, v0, Lrq8;->d:Lbm3;

    iget-boolean v4, v0, Lrq8;->e:Z

    iget-boolean v5, v0, Lrq8;->f:Z

    iget-object v6, v0, Lrq8;->g:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v7, v0, Lrq8;->h:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-boolean v8, v0, Lrq8;->i:Z

    iget-object v9, v0, Lrq8;->j:Lbm3;

    iget-object v10, v0, Lrq8;->k:Lbm3;

    iget-object v11, v0, Lrq8;->l:Lbm3;

    iget-object v12, v0, Lrq8;->m:Lbm3;

    iget-object v13, v0, Lrq8;->n:Lbm3;

    iget-object v14, v0, Lrq8;->o:Lbm3;

    iget-object v15, v0, Lrq8;->p:Lbm3;

    move-object/from16 v16, v1

    iget-object v1, v0, Lrq8;->q:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v17, v1

    iget-object v1, v0, Lrq8;->r:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v18, v1

    iget-object v1, v0, Lrq8;->s:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v19, v1

    iget-object v1, v0, Lrq8;->t:Lbm3;

    move-object/from16 v20, v1

    iget v1, v0, Lrq8;->u:I

    move/from16 v21, v1

    iget v1, v0, Lrq8;->v:I

    iget v0, v0, Lrq8;->w:I

    move/from16 v22, v21

    move/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v22

    move/from16 v22, v0

    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextFieldDefaults;->b(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lbm3;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
