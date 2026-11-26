.class public final synthetic Lq06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic q:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic r:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic s:Z

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic w:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic x:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq06;->b:Ljava/lang/String;

    iput-object p2, p0, Lq06;->c:Lnl3;

    iput-object p3, p0, Lq06;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lq06;->e:Z

    iput-boolean p5, p0, Lq06;->f:Z

    iput-object p6, p0, Lq06;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lq06;->h:Lbm3;

    iput-object p8, p0, Lq06;->i:Lbm3;

    iput-object p9, p0, Lq06;->j:Lbm3;

    iput-object p10, p0, Lq06;->k:Lbm3;

    iput-object p11, p0, Lq06;->l:Lbm3;

    iput-object p12, p0, Lq06;->m:Lbm3;

    iput-object p13, p0, Lq06;->n:Lbm3;

    iput-boolean p14, p0, Lq06;->o:Z

    iput-object p15, p0, Lq06;->p:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 p1, p16

    iput-object p1, p0, Lq06;->q:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 p1, p17

    iput-object p1, p0, Lq06;->r:Landroidx/compose/foundation/text/KeyboardActions;

    move/from16 p1, p18

    iput-boolean p1, p0, Lq06;->s:Z

    move/from16 p1, p19

    iput p1, p0, Lq06;->t:I

    move/from16 p1, p20

    iput p1, p0, Lq06;->u:I

    move-object/from16 p1, p21

    iput-object p1, p0, Lq06;->v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 p1, p22

    iput-object p1, p0, Lq06;->w:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p1, p23

    iput-object p1, p0, Lq06;->x:Landroidx/compose/material3/TextFieldColors;

    move/from16 p1, p24

    iput p1, p0, Lq06;->y:I

    move/from16 p1, p25

    iput p1, p0, Lq06;->z:I

    move/from16 p1, p26

    iput p1, p0, Lq06;->A:I

    move/from16 p1, p27

    iput p1, p0, Lq06;->B:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    check-cast v28, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v29

    iget-object v1, v0, Lq06;->b:Ljava/lang/String;

    iget-object v2, v0, Lq06;->c:Lnl3;

    iget-object v3, v0, Lq06;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lq06;->e:Z

    iget-boolean v5, v0, Lq06;->f:Z

    iget-object v6, v0, Lq06;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lq06;->h:Lbm3;

    iget-object v8, v0, Lq06;->i:Lbm3;

    iget-object v9, v0, Lq06;->j:Lbm3;

    iget-object v10, v0, Lq06;->k:Lbm3;

    iget-object v11, v0, Lq06;->l:Lbm3;

    iget-object v12, v0, Lq06;->m:Lbm3;

    iget-object v13, v0, Lq06;->n:Lbm3;

    iget-boolean v14, v0, Lq06;->o:Z

    iget-object v15, v0, Lq06;->p:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 v16, v1

    iget-object v1, v0, Lq06;->q:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 v17, v1

    iget-object v1, v0, Lq06;->r:Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lq06;->s:Z

    move/from16 v19, v1

    iget v1, v0, Lq06;->t:I

    move/from16 v20, v1

    iget v1, v0, Lq06;->u:I

    move/from16 v21, v1

    iget-object v1, v0, Lq06;->v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v22, v1

    iget-object v1, v0, Lq06;->w:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v23, v1

    iget-object v1, v0, Lq06;->x:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v24, v1

    iget v1, v0, Lq06;->y:I

    move/from16 v25, v1

    iget v1, v0, Lq06;->z:I

    move/from16 v26, v1

    iget v1, v0, Lq06;->A:I

    iget v0, v0, Lq06;->B:I

    move/from16 v27, v26

    move/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v27

    move/from16 v27, v0

    invoke-static/range {v1 .. v29}, Landroidx/compose/material3/OutlinedTextFieldKt;->f(Ljava/lang/String;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;IIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
