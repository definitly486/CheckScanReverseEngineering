.class public final synthetic Lgg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic i:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic n:Lnl3;

.field public final synthetic o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic p:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic q:Ldm3;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lnl3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgg0;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p2, p0, Lgg0;->c:Lnl3;

    iput-object p3, p0, Lgg0;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lgg0;->e:Z

    iput-boolean p5, p0, Lgg0;->f:Z

    iput-object p6, p0, Lgg0;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lgg0;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p8, p0, Lgg0;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iput-boolean p9, p0, Lgg0;->j:Z

    iput p10, p0, Lgg0;->k:I

    iput p11, p0, Lgg0;->l:I

    iput-object p12, p0, Lgg0;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p13, p0, Lgg0;->n:Lnl3;

    iput-object p14, p0, Lgg0;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p15, p0, Lgg0;->p:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 p1, p16

    iput-object p1, p0, Lgg0;->q:Ldm3;

    move/from16 p1, p17

    iput p1, p0, Lgg0;->r:I

    move/from16 p1, p18

    iput p1, p0, Lgg0;->s:I

    move/from16 p1, p19

    iput p1, p0, Lgg0;->t:I

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

    iget-object v1, v0, Lgg0;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v2, v0, Lgg0;->c:Lnl3;

    iget-object v3, v0, Lgg0;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lgg0;->e:Z

    iget-boolean v5, v0, Lgg0;->f:Z

    iget-object v6, v0, Lgg0;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lgg0;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v8, v0, Lgg0;->i:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v9, v0, Lgg0;->j:Z

    iget v10, v0, Lgg0;->k:I

    iget v11, v0, Lgg0;->l:I

    iget-object v12, v0, Lgg0;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v13, v0, Lgg0;->n:Lnl3;

    iget-object v14, v0, Lgg0;->o:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v15, v0, Lgg0;->p:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v16, v1

    iget-object v1, v0, Lgg0;->q:Ldm3;

    move-object/from16 v17, v1

    iget v1, v0, Lgg0;->r:I

    move/from16 v18, v1

    iget v1, v0, Lgg0;->s:I

    iget v0, v0, Lgg0;->t:I

    move/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v0

    invoke-static/range {v1 .. v21}, Landroidx/compose/foundation/text/BasicTextFieldKt;->j(Landroidx/compose/ui/text/input/TextFieldValue;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lnl3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
