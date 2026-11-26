.class public final synthetic Lcj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarDefaults;

.field public final synthetic c:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic d:Landroidx/compose/material3/SearchBarState;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic p:Landroidx/compose/foundation/text/input/OutputTransformation;

.field public final synthetic q:Landroidx/compose/foundation/ScrollState;

.field public final synthetic r:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic s:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic t:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic u:I

.field public final synthetic v:I

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iput-object p2, p0, Lcj7;->c:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p3, p0, Lcj7;->d:Landroidx/compose/material3/SearchBarState;

    iput-object p4, p0, Lcj7;->e:Lnl3;

    iput-object p5, p0, Lcj7;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lcj7;->g:Z

    iput-boolean p7, p0, Lcj7;->h:Z

    iput-object p8, p0, Lcj7;->i:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Lcj7;->j:Lbm3;

    iput-object p10, p0, Lcj7;->k:Lbm3;

    iput-object p11, p0, Lcj7;->l:Lbm3;

    iput-object p12, p0, Lcj7;->m:Lbm3;

    iput-object p13, p0, Lcj7;->n:Lbm3;

    iput-object p14, p0, Lcj7;->o:Landroidx/compose/foundation/text/input/InputTransformation;

    iput-object p15, p0, Lcj7;->p:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcj7;->q:Landroidx/compose/foundation/ScrollState;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcj7;->r:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcj7;->s:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcj7;->t:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p20

    iput p1, p0, Lcj7;->u:I

    move/from16 p1, p21

    iput p1, p0, Lcj7;->v:I

    move/from16 p1, p22

    iput p1, p0, Lcj7;->w:I

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

    iget-object v1, v0, Lcj7;->b:Landroidx/compose/material3/SearchBarDefaults;

    iget-object v2, v0, Lcj7;->c:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v3, v0, Lcj7;->d:Landroidx/compose/material3/SearchBarState;

    iget-object v4, v0, Lcj7;->e:Lnl3;

    iget-object v5, v0, Lcj7;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v6, v0, Lcj7;->g:Z

    iget-boolean v7, v0, Lcj7;->h:Z

    iget-object v8, v0, Lcj7;->i:Landroidx/compose/ui/text/TextStyle;

    iget-object v9, v0, Lcj7;->j:Lbm3;

    iget-object v10, v0, Lcj7;->k:Lbm3;

    iget-object v11, v0, Lcj7;->l:Lbm3;

    iget-object v12, v0, Lcj7;->m:Lbm3;

    iget-object v13, v0, Lcj7;->n:Lbm3;

    iget-object v14, v0, Lcj7;->o:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v15, v0, Lcj7;->p:Landroidx/compose/foundation/text/input/OutputTransformation;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcj7;->q:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcj7;->r:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcj7;->s:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcj7;->t:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v20, v1

    iget v1, v0, Lcj7;->u:I

    move/from16 v21, v1

    iget v1, v0, Lcj7;->v:I

    iget v0, v0, Lcj7;->w:I

    move/from16 v22, v21

    move/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v22

    move/from16 v22, v0

    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/SearchBarDefaults;->m(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
