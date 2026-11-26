.class public final Landroidx/compose/foundation/ComposeFoundationFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/ComposeFoundationFlags;

.field public static isAnchoredDraggableTargetValueCalculationFixEnabled:Z

.field public static isBasicTextFieldMinSizeOptimizationEnabled:Z

.field public static isBringIntoViewRltBouncyBehaviorInPagerFixEnabled:Z

.field public static isCacheWindowForPagerEnabled:Z

.field public static isCacheWindowRefillFixEnabled:Z

.field public static isConcurrentTextFieldSelectionFixEnabled:Z

.field public static isDelayPressesUsingGestureConsumptionEnabled:Z

.field public static isInheritedTextStyleEnabled:Z

.field public static isNestedDraggablesTouchConflictFixEnabled:Z

.field public static isNewContextMenuEnabled:Z

.field public static isNonSuspendingPointerInputInCombinedClickableEnabled:Z

.field public static isPausableCompositionInPrefetchEnabled:Z

.field public static isReverseLayoutNestedScrollConnectionInPagerFixEnabled:Z

.field public static isSkipItemPlacementAnimationFixEnabled:Z

.field public static isSmartSelectionEnabled:Z

.field public static isTrackpadGestureHandlingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ComposeFoundationFlags;

    invoke-direct {v0}, Landroidx/compose/foundation/ComposeFoundationFlags;-><init>()V

    sput-object v0, Landroidx/compose/foundation/ComposeFoundationFlags;->INSTANCE:Landroidx/compose/foundation/ComposeFoundationFlags;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isSmartSelectionEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isPausableCompositionInPrefetchEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowForPagerEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isBringIntoViewRltBouncyBehaviorInPagerFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isAnchoredDraggableTargetValueCalculationFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isDelayPressesUsingGestureConsumptionEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isTrackpadGestureHandlingEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNestedDraggablesTouchConflictFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNonSuspendingPointerInputInCombinedClickableEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isBasicTextFieldMinSizeOptimizationEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isSkipItemPlacementAnimationFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isReverseLayoutNestedScrollConnectionInPagerFixEnabled:Z

    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isConcurrentTextFieldSelectionFixEnabled:Z

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/ComposeFoundationFlags;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
