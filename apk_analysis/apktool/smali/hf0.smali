.class public final synthetic Lhf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/text/input/InputTransformation;

.field public final synthetic d:Landroidx/compose/foundation/text/SecureTextFieldController;

.field public final synthetic e:Landroidx/compose/foundation/text/input/TextFieldState;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic j:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic k:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

.field public final synthetic l:Lbm3;

.field public final synthetic m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic n:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic o:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

.field public final synthetic p:Landroidx/compose/foundation/text/input/TextFieldDecorator;

.field public final synthetic q:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/SecureTextFieldController;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhf0;->b:Z

    iput-object p2, p0, Lhf0;->c:Landroidx/compose/foundation/text/input/InputTransformation;

    iput-object p3, p0, Lhf0;->d:Landroidx/compose/foundation/text/SecureTextFieldController;

    iput-object p4, p0, Lhf0;->e:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p5, p0, Lhf0;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lhf0;->g:Z

    iput-boolean p7, p0, Lhf0;->h:Z

    iput-object p8, p0, Lhf0;->i:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Lhf0;->j:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p10, p0, Lhf0;->k:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iput-object p11, p0, Lhf0;->l:Lbm3;

    iput-object p12, p0, Lhf0;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p13, p0, Lhf0;->n:Landroidx/compose/ui/graphics/Brush;

    iput-object p14, p0, Lhf0;->o:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    iput-object p15, p0, Lhf0;->p:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    move-object/from16 p1, p16

    iput-object p1, p0, Lhf0;->q:Landroidx/compose/foundation/ScrollState;

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

    iget-boolean v1, v0, Lhf0;->b:Z

    iget-object v2, v0, Lhf0;->c:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v3, v0, Lhf0;->d:Landroidx/compose/foundation/text/SecureTextFieldController;

    iget-object v4, v0, Lhf0;->e:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-object v5, v0, Lhf0;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v6, v0, Lhf0;->g:Z

    iget-boolean v7, v0, Lhf0;->h:Z

    iget-object v8, v0, Lhf0;->i:Landroidx/compose/ui/text/TextStyle;

    iget-object v9, v0, Lhf0;->j:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v10, v0, Lhf0;->k:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iget-object v11, v0, Lhf0;->l:Lbm3;

    iget-object v12, v0, Lhf0;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v13, v0, Lhf0;->n:Landroidx/compose/ui/graphics/Brush;

    iget-object v14, v0, Lhf0;->o:Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    iget-object v15, v0, Lhf0;->p:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iget-object v0, v0, Lhf0;->q:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->c(ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/SecureTextFieldController;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
