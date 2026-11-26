.class public final synthetic Lir8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic C:I

.field public final synthetic D:I

.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic g:Landroidx/compose/material3/TextFieldLabelPosition;

.field public final synthetic h:Ldm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic q:Landroidx/compose/foundation/text/input/OutputTransformation;

.field public final synthetic r:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic s:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

.field public final synthetic t:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

.field public final synthetic u:Lbm3;

.field public final synthetic v:Landroidx/compose/foundation/ScrollState;

.field public final synthetic w:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic x:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic y:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic z:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir8;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p2, p0, Lir8;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lir8;->d:Z

    iput-boolean p4, p0, Lir8;->e:Z

    iput-object p5, p0, Lir8;->f:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Lir8;->g:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p7, p0, Lir8;->h:Ldm3;

    iput-object p8, p0, Lir8;->i:Lbm3;

    iput-object p9, p0, Lir8;->j:Lbm3;

    iput-object p10, p0, Lir8;->k:Lbm3;

    iput-object p11, p0, Lir8;->l:Lbm3;

    iput-object p12, p0, Lir8;->m:Lbm3;

    iput-object p13, p0, Lir8;->n:Lbm3;

    iput-boolean p14, p0, Lir8;->o:Z

    iput-object p15, p0, Lir8;->p:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 p1, p16

    iput-object p1, p0, Lir8;->q:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 p1, p17

    iput-object p1, p0, Lir8;->r:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 p1, p18

    iput-object p1, p0, Lir8;->s:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    move-object/from16 p1, p19

    iput-object p1, p0, Lir8;->t:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    move-object/from16 p1, p20

    iput-object p1, p0, Lir8;->u:Lbm3;

    move-object/from16 p1, p21

    iput-object p1, p0, Lir8;->v:Landroidx/compose/foundation/ScrollState;

    move-object/from16 p1, p22

    iput-object p1, p0, Lir8;->w:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p1, p23

    iput-object p1, p0, Lir8;->x:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 p1, p24

    iput-object p1, p0, Lir8;->y:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, p25

    iput-object p1, p0, Lir8;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p26

    iput p1, p0, Lir8;->A:I

    move/from16 p1, p27

    iput p1, p0, Lir8;->B:I

    move/from16 p1, p28

    iput p1, p0, Lir8;->C:I

    move/from16 p1, p29

    iput p1, p0, Lir8;->D:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v30, p1

    check-cast v30, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v31

    iget-object v1, v0, Lir8;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v2, v0, Lir8;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Lir8;->d:Z

    iget-boolean v4, v0, Lir8;->e:Z

    iget-object v5, v0, Lir8;->f:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Lir8;->g:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v7, v0, Lir8;->h:Ldm3;

    iget-object v8, v0, Lir8;->i:Lbm3;

    iget-object v9, v0, Lir8;->j:Lbm3;

    iget-object v10, v0, Lir8;->k:Lbm3;

    iget-object v11, v0, Lir8;->l:Lbm3;

    iget-object v12, v0, Lir8;->m:Lbm3;

    iget-object v13, v0, Lir8;->n:Lbm3;

    iget-boolean v14, v0, Lir8;->o:Z

    iget-object v15, v0, Lir8;->p:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 v16, v1

    iget-object v1, v0, Lir8;->q:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 v17, v1

    iget-object v1, v0, Lir8;->r:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 v18, v1

    iget-object v1, v0, Lir8;->s:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    move-object/from16 v19, v1

    iget-object v1, v0, Lir8;->t:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    move-object/from16 v20, v1

    iget-object v1, v0, Lir8;->u:Lbm3;

    move-object/from16 v21, v1

    iget-object v1, v0, Lir8;->v:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v22, v1

    iget-object v1, v0, Lir8;->w:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v23, v1

    iget-object v1, v0, Lir8;->x:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v24, v1

    iget-object v1, v0, Lir8;->y:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v25, v1

    iget-object v1, v0, Lir8;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v26, v1

    iget v1, v0, Lir8;->A:I

    move/from16 v27, v1

    iget v1, v0, Lir8;->B:I

    move/from16 v28, v1

    iget v1, v0, Lir8;->C:I

    iget v0, v0, Lir8;->D:I

    move/from16 v29, v28

    move/from16 v28, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v29

    move/from16 v29, v0

    invoke-static/range {v1 .. v31}, Landroidx/compose/material3/TextFieldKt;->c(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
