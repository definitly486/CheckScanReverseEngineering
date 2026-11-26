.class public final Landroidx/compose/ui/ComposeUiFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/ComposeUiFlags;

.field public static isAccessibilityShouldIncludeOffscreenChildrenEnabled:Z

.field public static isBypassUnfocusableComposeViewEnabled:Z

.field public static isFocusRestorationEnabled:Z

.field public static isGraphicsLayerShapeSemanticsEnabled:Z

.field public static isIndirectPointerNavigationGestureDetectorEnabled:Z

.field public static isInitialFocusOnFocusableAvailable:Z

.field public static isMediaQueryIntegrationEnabled:Z

.field public static isOptimizedFocusEventDispatchEnabled:Z

.field public static isSkipNonImportantSemanticsNodesHitTestEnabled:Z

.field public static isTrackpadGestureHandlingEnabled:Z

.field public static isTraversableDelegatesFixEnabled:Z

.field public static isViewFocusFixEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/ComposeUiFlags;

    invoke-direct {v0}, Landroidx/compose/ui/ComposeUiFlags;-><init>()V

    sput-object v0, Landroidx/compose/ui/ComposeUiFlags;->INSTANCE:Landroidx/compose/ui/ComposeUiFlags;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isBypassUnfocusableComposeViewEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isIndirectPointerNavigationGestureDetectorEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isGraphicsLayerShapeSemanticsEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isTraversableDelegatesFixEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isAccessibilityShouldIncludeOffscreenChildrenEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isTrackpadGestureHandlingEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isSkipNonImportantSemanticsNodesHitTestEnabled:Z

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/ComposeUiFlags;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
