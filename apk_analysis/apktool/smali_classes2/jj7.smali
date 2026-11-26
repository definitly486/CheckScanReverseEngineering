.class public final synthetic Ljj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarDefaults;

.field public final synthetic c:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Z

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Lbm3;

.field public final synthetic p:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic q:Landroidx/compose/foundation/text/input/OutputTransformation;

.field public final synthetic r:Landroidx/compose/foundation/ScrollState;

.field public final synthetic s:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic t:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic v:I

.field public final synthetic w:I

.field public final synthetic x:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iput-object p2, p0, Ljj7;->c:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p3, p0, Ljj7;->d:Lnl3;

    iput-boolean p4, p0, Ljj7;->e:Z

    iput-object p5, p0, Ljj7;->f:Lnl3;

    iput-object p6, p0, Ljj7;->g:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Ljj7;->h:Z

    iput-boolean p8, p0, Ljj7;->i:Z

    iput-object p9, p0, Ljj7;->j:Landroidx/compose/ui/text/TextStyle;

    iput-object p10, p0, Ljj7;->k:Lbm3;

    iput-object p11, p0, Ljj7;->l:Lbm3;

    iput-object p12, p0, Ljj7;->m:Lbm3;

    iput-object p13, p0, Ljj7;->n:Lbm3;

    iput-object p14, p0, Ljj7;->o:Lbm3;

    iput-object p15, p0, Ljj7;->p:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 p1, p16

    iput-object p1, p0, Ljj7;->q:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 p1, p17

    iput-object p1, p0, Ljj7;->r:Landroidx/compose/foundation/ScrollState;

    move-object/from16 p1, p18

    iput-object p1, p0, Ljj7;->s:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p1, p19

    iput-object p1, p0, Ljj7;->t:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 p1, p20

    iput-object p1, p0, Ljj7;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p21

    iput p1, p0, Ljj7;->v:I

    move/from16 p1, p22

    iput p1, p0, Ljj7;->w:I

    move/from16 p1, p23

    iput p1, p0, Ljj7;->x:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v24, p1

    check-cast v24, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v25

    iget-object v1, v0, Ljj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iget-object v2, v0, Ljj7;->c:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v3, v0, Ljj7;->d:Lnl3;

    iget-boolean v4, v0, Ljj7;->e:Z

    iget-object v5, v0, Ljj7;->f:Lnl3;

    iget-object v6, v0, Ljj7;->g:Landroidx/compose/ui/Modifier;

    iget-boolean v7, v0, Ljj7;->h:Z

    iget-boolean v8, v0, Ljj7;->i:Z

    iget-object v9, v0, Ljj7;->j:Landroidx/compose/ui/text/TextStyle;

    iget-object v10, v0, Ljj7;->k:Lbm3;

    iget-object v11, v0, Ljj7;->l:Lbm3;

    iget-object v12, v0, Ljj7;->m:Lbm3;

    iget-object v13, v0, Ljj7;->n:Lbm3;

    iget-object v14, v0, Ljj7;->o:Lbm3;

    iget-object v15, v0, Ljj7;->p:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 v16, v1

    iget-object v1, v0, Ljj7;->q:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 v17, v1

    iget-object v1, v0, Ljj7;->r:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v18, v1

    iget-object v1, v0, Ljj7;->s:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v19, v1

    iget-object v1, v0, Ljj7;->t:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v20, v1

    iget-object v1, v0, Ljj7;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v21, v1

    iget v1, v0, Ljj7;->v:I

    move/from16 v22, v1

    iget v1, v0, Ljj7;->w:I

    iget v0, v0, Ljj7;->x:I

    move/from16 v23, v22

    move/from16 v22, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v23

    move/from16 v23, v0

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/SearchBarDefaults;->e(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
