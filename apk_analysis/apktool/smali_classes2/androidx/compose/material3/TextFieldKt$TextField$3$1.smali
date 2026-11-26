.class final Landroidx/compose/material3/TextFieldKt$TextField$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldKt$TextField$3;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm3<",
        "Lbm3<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lj59;",
        ">;",
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

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
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
            "Landroidx/compose/material3/TextFieldColors;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$label:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$placeholder:Lbm3;

    iput-object p9, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$leadingIcon:Lbm3;

    iput-object p10, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lbm3;

    iput-object p11, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$prefix:Lbm3;

    iput-object p12, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$suffix:Lbm3;

    iput-object p13, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$supportingText:Lbm3;

    iput-object p14, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p15, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Lbm3;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->invoke(Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.TextField.<anonymous>.<anonymous> (TextField.kt:478)"

    const v6, 0x568400e5

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    sget-object v4, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    move v5, v3

    iget-boolean v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    move-object v6, v4

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$singleLine:Z

    move v7, v5

    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v8, v6

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move v9, v7

    iget-boolean v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$isError:Z

    move-object v10, v8

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$label:Lbm3;

    move v11, v9

    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$placeholder:Lbm3;

    move-object v12, v10

    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$leadingIcon:Lbm3;

    move v13, v11

    iget-object v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lbm3;

    move-object v14, v12

    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$prefix:Lbm3;

    move v15, v13

    iget-object v13, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$suffix:Lbm3;

    move-object/from16 v16, v14

    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$supportingText:Lbm3;

    move/from16 v17, v15

    iget-object v15, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    shl-int/lit8 v17, v17, 0x3

    and-int/lit8 v20, v17, 0x70

    const/high16 v21, 0x6000000

    const/high16 v22, 0x30000

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    move-object/from16 v19, p2

    invoke-virtual/range {v0 .. v22}, Landroidx/compose/material3/TextFieldDefaults;->DecorationBox(Ljava/lang/String;Lbm3;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void

    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
