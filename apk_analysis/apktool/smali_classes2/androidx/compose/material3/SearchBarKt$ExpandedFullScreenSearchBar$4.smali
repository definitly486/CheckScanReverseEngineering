.class final Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar-_UtchM0(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm3<",
        "Landroidx/compose/material3/internal/PredictiveBackState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $collapsedShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $colors:Landroidx/compose/material3/SearchBarColors;

.field final synthetic $content:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inputField:Lbm3;
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

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shadowElevation:F

.field final synthetic $state:Landroidx/compose/material3/SearchBarState;

.field final synthetic $tonalElevation:F

.field final synthetic $windowInsets:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Ldm3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$state:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$collapsedShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$colors:Landroidx/compose/material3/SearchBarColors;

    iput p5, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$tonalElevation:F

    iput p6, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$shadowElevation:F

    iput-object p7, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$windowInsets:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$content:Ldm3;

    iput-object p9, p0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$inputField:Lbm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Landroidx/compose/material3/internal/PredictiveBackState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->invoke(Landroidx/compose/material3/internal/PredictiveBackState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/internal/PredictiveBackState;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int v1, p3, v1

    goto :goto_2

    :cond_2
    move/from16 v1, p3

    :goto_2
    and-int/lit8 v3, v1, 0x13

    const/16 v4, 0x12

    const/4 v13, 0x0

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v13

    :goto_3
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v11, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.ExpandedFullScreenSearchBar.<anonymous> (SearchBar.kt:362)"

    const v6, 0x25422bf1

    invoke-static {v6, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    new-instance v3, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v3}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v15, v3

    check-cast v15, Landroidx/compose/ui/focus/FocusRequester;

    move v3, v1

    iget-object v1, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$state:Landroidx/compose/material3/SearchBarState;

    new-instance v4, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$1;

    iget-object v6, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$inputField:Lbm3;

    invoke-direct {v4, v15, v6}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Lbm3;)V

    const/16 v6, 0x36

    const v7, -0x7fb5f8fc

    invoke-static {v7, v5, v4, v11, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move v5, v3

    move-object v3, v4

    iget-object v4, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$modifier:Landroidx/compose/ui/Modifier;

    move v6, v5

    iget-object v5, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$collapsedShape:Landroidx/compose/ui/graphics/Shape;

    move v7, v6

    iget-object v6, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$colors:Landroidx/compose/material3/SearchBarColors;

    move v8, v7

    iget v7, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$tonalElevation:F

    move v9, v8

    iget v8, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$shadowElevation:F

    iget-object v10, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$windowInsets:Lbm3;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/layout/WindowInsets;

    move v12, v9

    move-object v9, v10

    iget-object v10, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$content:Ldm3;

    shl-int/lit8 v12, v12, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/lit16 v12, v12, 0x180

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->access$FullScreenSearchBarLayout-EQC0FA8(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;I)V

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    new-instance v2, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$2$1;

    invoke-direct {v2, v15, v4}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$2$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Le02;)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lbm3;

    const/4 v3, 0x6

    invoke-static {v1, v2, v11, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalSoftwareKeyboardController()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iget-object v2, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$state:Landroidx/compose/material3/SearchBarState;

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarState;->getTargetValue()Landroidx/compose/material3/SearchBarValue;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$state:Landroidx/compose/material3/SearchBarState;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v0, v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;->$state:Landroidx/compose/material3/SearchBarState;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_7

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_8

    :cond_7
    new-instance v5, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$3$1;

    invoke-direct {v5, v0, v1, v4}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4$3$1;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/platform/SoftwareKeyboardController;Le02;)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Lbm3;

    invoke-static {v2, v5, v11, v13}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    return-void

    :cond_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
