.class public final synthetic Lef0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic f:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic g:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic h:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic l:Landroidx/compose/foundation/text/input/TextFieldDecorator;

.field public final synthetic m:I

.field public final synthetic n:C

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef0;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p2, p0, Lef0;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lef0;->d:Z

    iput-object p4, p0, Lef0;->e:Landroidx/compose/foundation/text/input/InputTransformation;

    iput-object p5, p0, Lef0;->f:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Lef0;->g:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p7, p0, Lef0;->h:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iput-object p8, p0, Lef0;->i:Lbm3;

    iput-object p9, p0, Lef0;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lef0;->k:Landroidx/compose/ui/graphics/Brush;

    iput-object p11, p0, Lef0;->l:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iput p12, p0, Lef0;->m:I

    iput-char p13, p0, Lef0;->n:C

    iput p14, p0, Lef0;->o:I

    iput p15, p0, Lef0;->p:I

    move/from16 p1, p16

    iput p1, p0, Lef0;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lef0;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v2, v0, Lef0;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Lef0;->d:Z

    iget-object v4, v0, Lef0;->e:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v5, v0, Lef0;->f:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Lef0;->g:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v7, v0, Lef0;->h:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iget-object v8, v0, Lef0;->i:Lbm3;

    iget-object v9, v0, Lef0;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v10, v0, Lef0;->k:Landroidx/compose/ui/graphics/Brush;

    iget-object v11, v0, Lef0;->l:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iget v12, v0, Lef0;->m:I

    iget-char v13, v0, Lef0;->n:C

    iget v14, v0, Lef0;->o:I

    iget v15, v0, Lef0;->p:I

    iget v0, v0, Lef0;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->e(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
