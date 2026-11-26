.class public final Landroidx/compose/ui/AndroidComposeUiFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/AndroidComposeUiFlags;

.field public static isAccessibilityShowOnScreenNestedScrollingEnabled:Z

.field public static isSharedAccessibilityManagerEnabled:Z

.field public static isSharedClipboardManagerEnabled:Z

.field public static isSharedComposeViewContextEnabled:Z

.field public static isSharedDrawingEnabled:Z

.field public static isSharedFontEnabled:Z

.field public static isSharedHapticsEnabled:Z

.field public static isSharedViewConfigurationEnabled:Z

.field public static isSharedWindowInfoEnabled:Z

.field public static isViewBasedSemanticsHandlerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/AndroidComposeUiFlags;

    invoke-direct {v0}, Landroidx/compose/ui/AndroidComposeUiFlags;-><init>()V

    sput-object v0, Landroidx/compose/ui/AndroidComposeUiFlags;->INSTANCE:Landroidx/compose/ui/AndroidComposeUiFlags;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedComposeViewContextEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedWindowInfoEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedAccessibilityManagerEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedDrawingEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedViewConfigurationEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedClipboardManagerEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isAccessibilityShowOnScreenNestedScrollingEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedHapticsEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isViewBasedSemanticsHandlerEnabled:Z

    sput-boolean v0, Landroidx/compose/ui/AndroidComposeUiFlags;->isSharedFontEnabled:Z

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/AndroidComposeUiFlags;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
