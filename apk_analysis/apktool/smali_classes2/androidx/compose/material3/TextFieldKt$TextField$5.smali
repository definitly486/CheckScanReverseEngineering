.class final Landroidx/compose/material3/TextFieldKt$TextField$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldKt;->TextField(Landroidx/compose/ui/text/input/TextFieldValue;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V
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

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field final synthetic $label:Lbm3;
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

.field final synthetic $maxLines:I

.field final synthetic $mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $minLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

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

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/text/input/TextFieldValue;Lnl3;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lj59;",
            ">;ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZII",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$onValueChange:Lnl3;

    iput-boolean p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$enabled:Z

    iput-boolean p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$readOnly:Z

    iput-object p8, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    iput-object p10, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    iput-boolean p11, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$singleLine:Z

    iput p12, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$maxLines:I

    iput p13, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$minLines:I

    iput-object p14, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p15, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$label:Lbm3;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$placeholder:Lbm3;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$leadingIcon:Lbm3;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$trailingIcon:Lbm3;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$prefix:Lbm3;

    move-object/from16 p1, p21

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$suffix:Lbm3;

    move-object/from16 p1, p22

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$supportingText:Lbm3;

    move-object/from16 p1, p23

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextFieldKt$TextField$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.TextField.<anonymous> (TextField.kt:604)"

    const v7, -0x123edb0b

    invoke-static {v7, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$isError:Z

    sget-object v4, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v4, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-static {v4}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v4

    invoke-static {v4, v1, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/TextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/material3/TextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v3

    invoke-static {v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    iget-object v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$isError:Z

    invoke-virtual {v3, v4}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v14, v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    iget-object v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$onValueChange:Lnl3;

    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$enabled:Z

    move-object v7, v4

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$readOnly:Z

    move/from16 v17, v5

    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v9, v7

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$singleLine:Z

    move-object v11, v9

    iget v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$maxLines:I

    move/from16 v18, v10

    iget v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$minLines:I

    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v13, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    new-instance v15, Landroidx/compose/material3/TextFieldKt$TextField$5$1;

    iget-boolean v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$isError:Z

    move-object/from16 p2, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$label:Lbm3;

    move-object/from16 v22, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$placeholder:Lbm3;

    move-object/from16 v23, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$leadingIcon:Lbm3;

    move-object/from16 v24, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$trailingIcon:Lbm3;

    move-object/from16 v25, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$prefix:Lbm3;

    move-object/from16 v26, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$suffix:Lbm3;

    move-object/from16 v27, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$supportingText:Lbm3;

    move-object/from16 v28, v2

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$5;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v16, v3

    move/from16 v21, v6

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v30}, Landroidx/compose/material3/TextFieldKt$TextField$5$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V

    const/16 v0, 0x36

    const v2, -0x2457728e

    const/4 v3, 0x1

    invoke-static {v2, v3, v15, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v15

    move-object v6, v8

    move/from16 v8, v18

    const/high16 v18, 0x30000

    move-object v1, v11

    move-object/from16 v11, v19

    const/16 v19, 0x1000

    const/4 v12, 0x0

    move/from16 v3, v17

    const/16 v17, 0x0

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move-object/from16 v16, p1

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lnl3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Ldm3;Landroidx/compose/runtime/Composer;III)V

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
