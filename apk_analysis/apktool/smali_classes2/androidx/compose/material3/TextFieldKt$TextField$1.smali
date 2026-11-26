.class final Landroidx/compose/material3/TextFieldKt$TextField$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldKt;->TextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbm3<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $enabled:Z

.field final synthetic $inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field final synthetic $label:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/material3/TextFieldLabelScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field final synthetic $leadingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

.field final synthetic $mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onKeyboardAction:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

.field final synthetic $onTextLayout:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/ui/unit/Density;",
            "Lll3<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

.field final synthetic $placeholder:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prefix:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $state:Landroidx/compose/foundation/text/input/TextFieldState;

.field final synthetic $suffix:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $supportingText:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trailingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Z",
            "Landroidx/compose/foundation/text/input/TextFieldLineLimits;",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material3/TextFieldLabelPosition;",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TextFieldLabelScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/text/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/input/KeyboardActionHandler;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lll3<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-boolean p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$enabled:Z

    iput-object p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iput-object p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    iput-object p8, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p9, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p10, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$label:Ldm3;

    iput-object p11, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$placeholder:Lbm3;

    iput-object p12, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$leadingIcon:Lbm3;

    iput-object p13, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$trailingIcon:Lbm3;

    iput-object p14, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$prefix:Lbm3;

    iput-object p15, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$suffix:Lbm3;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$supportingText:Lbm3;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 p1, p18

    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$readOnly:Z

    move-object/from16 p1, p19

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 p1, p21

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 p1, p22

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$onKeyboardAction:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    move-object/from16 p1, p23

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$onTextLayout:Lbm3;

    move-object/from16 p1, p24

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$scrollState:Landroidx/compose/foundation/ScrollState;

    move-object/from16 p1, p25

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextFieldKt$TextField$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v15, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TextField.<anonymous> (TextField.kt:299)"

    const v6, 0x1ce1c59e

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$isError:Z

    sget-object v3, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v3, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-static {v3}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v3

    invoke-static {v3, v15, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/TextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/material3/TextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v4

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v23

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-object v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$isError:Z

    invoke-virtual {v3, v4}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    move-object v11, v1

    move-object v1, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-boolean v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, v7

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$label:Ldm3;

    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$placeholder:Lbm3;

    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$leadingIcon:Lbm3;

    move-object v12, v11

    iget-object v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$trailingIcon:Lbm3;

    move-object v13, v12

    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$prefix:Lbm3;

    move-object v14, v13

    iget-object v13, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$suffix:Lbm3;

    move-object/from16 v22, v14

    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$supportingText:Lbm3;

    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$isError:Z

    move-object/from16 p2, v1

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    new-instance v16, Landroidx/compose/material3/TextFieldKt$TextField$1$1;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v21, v1

    move/from16 v17, v3

    move/from16 v18, v5

    invoke-direct/range {v16 .. v21}, Landroidx/compose/material3/TextFieldKt$TextField$1$1;-><init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    move-object/from16 v1, v16

    const/16 v3, 0x36

    const v5, -0x77c39c43

    move-object/from16 v16, v2

    const/4 v2, 0x1

    invoke-static {v5, v2, v1, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    const/high16 v21, 0xd80000

    move-object/from16 v2, v22

    const/16 v22, 0x0

    move-object v3, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v20

    const/16 v20, 0x0

    move-object/from16 v24, v3

    move-object v5, v6

    move/from16 v3, v17

    move-object/from16 v6, v19

    move-object/from16 v17, v25

    move-object/from16 v19, v15

    move/from16 v15, v18

    move-object/from16 v18, v1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v22}, Landroidx/compose/material3/TextFieldDefaults;->decorator(Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)Landroidx/compose/foundation/text/input/TextFieldDecorator;

    move-result-object v13

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-boolean v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$enabled:Z

    iget-boolean v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$readOnly:Z

    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$onKeyboardAction:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$onTextLayout:Lbm3;

    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$1;->$scrollState:Landroidx/compose/foundation/ScrollState;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, p1

    move-object v0, v1

    move-object/from16 v1, v23

    move-object/from16 v11, v24

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
