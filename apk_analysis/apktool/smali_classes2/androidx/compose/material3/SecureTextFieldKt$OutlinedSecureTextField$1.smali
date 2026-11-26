.class final Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SecureTextFieldKt;->OutlinedSecureTextField-XvU6IwQ(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/foundation/text/input/InputTransformation;ICLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;IIII)V
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

.field final synthetic $textObfuscationCharacter:C

.field final synthetic $textObfuscationMode:I

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
.method public constructor <init>(Landroidx/compose/ui/Modifier;Ldm3;Landroidx/compose/material3/TextFieldLabelPosition;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;ICLandroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ldm3<",
            "-",
            "Landroidx/compose/material3/TextFieldLabelScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/TextFieldLabelPosition;",
            "Z",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Z",
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
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
            ">;IC",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$label:Ldm3;

    iput-object p3, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-boolean p4, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$isError:Z

    iput-object p5, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p6, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-boolean p7, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$enabled:Z

    iput-object p8, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p9, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$placeholder:Lbm3;

    iput-object p10, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$leadingIcon:Lbm3;

    iput-object p11, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$trailingIcon:Lbm3;

    iput-object p12, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$prefix:Lbm3;

    iput-object p13, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$suffix:Lbm3;

    iput-object p14, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$supportingText:Lbm3;

    iput-object p15, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$onKeyboardAction:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$onTextLayout:Lbm3;

    move/from16 p1, p21

    iput p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$textObfuscationMode:I

    move/from16 p1, p22

    iput-char p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$textObfuscationCharacter:C

    move-object/from16 p1, p23

    iput-object p1, p0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->invoke$lambda$1$lambda$0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v14, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.OutlinedSecureTextField.<anonymous> (SecureTextField.kt:327)"

    const v6, 0x44657630

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$label:Ldm3;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v2, v2, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    if-nez v2, :cond_3

    const v2, 0x5b383acb

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_2

    new-instance v3, Landroidx/compose/material3/x;

    invoke-direct {v3, v5}, Landroidx/compose/material3/x;-><init>(I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lnl3;

    invoke-static {v2, v5, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v14, v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->minimizedLabelHalfHeight(Landroidx/compose/runtime/Composer;I)F

    move-result v8

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_3
    const v2, 0x5b3e1592

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_1
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$isError:Z

    sget-object v3, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v3, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-static {v3}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v3

    invoke-static {v3, v14, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v4

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v23

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-object v3, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$isError:Z

    invoke-virtual {v3, v4}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    move-object v10, v1

    move-object v1, v2

    iget-object v2, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-boolean v3, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$enabled:Z

    sget-object v4, Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;

    iget-object v6, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v8, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$label:Ldm3;

    iget-object v9, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$placeholder:Lbm3;

    move-object v11, v10

    iget-object v10, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$leadingIcon:Lbm3;

    move-object v12, v11

    iget-object v11, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$trailingIcon:Lbm3;

    move-object v13, v12

    iget-object v12, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$prefix:Lbm3;

    move-object/from16 v21, v13

    iget-object v13, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$suffix:Lbm3;

    iget-object v15, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$supportingText:Lbm3;

    iget-boolean v5, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$isError:Z

    move-object/from16 p2, v1

    iget-object v1, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v16, v15

    new-instance v15, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1$2;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v20, v1

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v1, v16

    move/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1$2;-><init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    move-object v3, v15

    move/from16 v15, v17

    const/16 v5, 0x36

    const v6, -0x53d9cdb1

    move-object/from16 v17, v1

    const/4 v1, 0x1

    invoke-static {v6, v1, v3, v14, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v3, v21

    const/high16 v21, 0xd80000

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/16 v20, 0xd80

    move-object/from16 v6, v24

    move-object/from16 v24, v3

    move/from16 v3, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v22}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->decorator(Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)Landroidx/compose/foundation/text/input/TextFieldDecorator;

    move-result-object v11

    iget-object v1, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iget-boolean v2, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$inputTransformation:Landroidx/compose/foundation/text/input/InputTransformation;

    iget-object v5, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v7, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$onKeyboardAction:Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    iget-object v8, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$onTextLayout:Lbm3;

    iget-object v9, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v12, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$textObfuscationMode:I

    iget-char v13, v0, Landroidx/compose/material3/SecureTextFieldKt$OutlinedSecureTextField$1;->$textObfuscationCharacter:C

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p1

    move-object v0, v1

    move-object/from16 v1, v23

    move-object/from16 v10, v24

    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->BasicSecureTextField-egD4TGM(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICLandroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
