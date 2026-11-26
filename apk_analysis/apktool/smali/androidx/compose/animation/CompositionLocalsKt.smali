.class public final Landroidx/compose/animation/CompositionLocalsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalLookaheadAnimationVisualDebugColor$delegate:Lcl4;

.field private static final LocalLookaheadAnimationVisualDebugConfig$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/animation/CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2;->INSTANCE:Landroidx/compose/animation/CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/CompositionLocalsKt;->LocalLookaheadAnimationVisualDebugConfig$delegate:Lcl4;

    sget-object v0, Landroidx/compose/animation/CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2;->INSTANCE:Landroidx/compose/animation/CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/CompositionLocalsKt;->LocalLookaheadAnimationVisualDebugColor$delegate:Lcl4;

    return-void
.end method

.method public static final getLocalLookaheadAnimationVisualDebugColor()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/animation/CompositionLocalsKt;->LocalLookaheadAnimationVisualDebugColor$delegate:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalLookaheadAnimationVisualDebugColor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLocalLookaheadAnimationVisualDebugConfig()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/animation/CompositionLocalsKt;->LocalLookaheadAnimationVisualDebugConfig$delegate:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalLookaheadAnimationVisualDebugConfig$annotations()V
    .locals 0

    return-void
.end method
