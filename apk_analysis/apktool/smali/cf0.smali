.class public final synthetic Lcf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic i:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic m:Landroidx/compose/foundation/text/input/TextFieldDecorator;

.field public final synthetic n:I

.field public final synthetic o:C

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf0;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p2, p0, Lcf0;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lcf0;->d:Z

    iput-boolean p4, p0, Lcf0;->e:Z

    iput-object p5, p0, Lcf0;->f:Landroidx/compose/foundation/text/input/InputTransformation;

    iput-object p6, p0, Lcf0;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lcf0;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p8, p0, Lcf0;->i:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iput-object p9, p0, Lcf0;->j:Lbm3;

    iput-object p10, p0, Lcf0;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p11, p0, Lcf0;->l:Landroidx/compose/ui/graphics/Brush;

    iput-object p12, p0, Lcf0;->m:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iput p13, p0, Lcf0;->n:I

    iput-char p14, p0, Lcf0;->o:C

    iput p15, p0, Lcf0;->p:I

    move/from16 p1, p16

    iput p1, p0, Lcf0;->q:I

    move/from16 p1, p17

    iput p1, p0, Lcf0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v1, v0, Lcf0;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v2, v0, Lcf0;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Lcf0;->d:Z

    iget-boolean v4, v0, Lcf0;->e:Z

    iget-object v5, v0, Lcf0;->f:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v6, v0, Lcf0;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lcf0;->h:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v8, v0, Lcf0;->i:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iget-object v9, v0, Lcf0;->j:Lbm3;

    iget-object v10, v0, Lcf0;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v11, v0, Lcf0;->l:Landroidx/compose/ui/graphics/Brush;

    iget-object v12, v0, Lcf0;->m:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iget v13, v0, Lcf0;->n:I

    iget-char v14, v0, Lcf0;->o:C

    iget v15, v0, Lcf0;->p:I

    move-object/from16 v16, v1

    iget v1, v0, Lcf0;->q:I

    iget v0, v0, Lcf0;->r:I

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->f(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
