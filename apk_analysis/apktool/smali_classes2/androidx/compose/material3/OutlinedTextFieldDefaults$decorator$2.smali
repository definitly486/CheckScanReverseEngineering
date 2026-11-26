.class final Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/TextFieldDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/OutlinedTextFieldDefaults;->decorator(Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)Landroidx/compose/foundation/text/input/TextFieldDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $container:Lbm3;
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

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

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
.method public constructor <init>(Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Landroidx/compose/foundation/text/input/TextFieldLineLimits;",
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
            ">;ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    iput-object p2, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$label:Ldm3;

    iput-object p6, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$placeholder:Lbm3;

    iput-object p7, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$leadingIcon:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$trailingIcon:Lbm3;

    iput-object p9, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$prefix:Lbm3;

    iput-object p10, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$suffix:Lbm3;

    iput-object p11, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$supportingText:Lbm3;

    iput-boolean p12, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$enabled:Z

    iput-boolean p13, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$isError:Z

    iput-object p14, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p15, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$container:Lbm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Decoration$lambda$2(Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->Decoration(Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->Decoration$lambda$2(Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Decoration(Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 22
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

    move-object/from16 v3, p1

    const v1, 0x2f57a28f

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v4, p3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p3, v4

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, p3, 0x30

    if-nez v5, :cond_3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.material3.OutlinedTextFieldDefaults.decorator.<no name provided>.Decoration (TextFieldDefaults.kt:994)"

    invoke-static {v1, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$state:Landroidx/compose/foundation/text/input/TextFieldState;

    if-nez v1, :cond_6

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldState;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldState;->startEdit()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/text/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$outputTransformation:Landroidx/compose/foundation/text/input/OutputTransformation;

    if-eqz v1, :cond_7

    invoke-interface {v5, v1}, Landroidx/compose/foundation/text/input/OutputTransformation;->transformOutput(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4
    sget-object v5, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$lineLimits:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    sget-object v7, Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    move v6, v4

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v5

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$label:Ldm3;

    move v7, v6

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$placeholder:Lbm3;

    move v8, v7

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$leadingIcon:Lbm3;

    move v9, v8

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$trailingIcon:Lbm3;

    move v10, v9

    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$prefix:Lbm3;

    move v11, v10

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$suffix:Lbm3;

    move v13, v11

    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$supportingText:Lbm3;

    move v14, v13

    iget-boolean v13, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$enabled:Z

    move v15, v14

    iget-boolean v14, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$isError:Z

    move/from16 v16, v15

    iget-object v15, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 p2, v1

    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;->$container:Lbm3;

    move-object/from16 v20, v1

    shl-int/lit8 v1, v16, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    move/from16 v20, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lbm3;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    :cond_7
    const-string v0, "buffer"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    throw v0

    :cond_8
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_9
    :goto_5
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Landroidx/compose/material3/e3;

    move/from16 v4, p3

    invoke-direct {v2, v0, v3, v4}, Landroidx/compose/material3/e3;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults$decorator$2;Lbm3;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_a
    return-void
.end method
