.class public final Landroidx/compose/material3/tokens/MediumIconButtonTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final DefaultLeadingSpace:F

.field private static final DefaultTrailingSpace:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/MediumIconButtonTokens;

.field private static final IconSize:F

.field private static final NarrowLeadingSpace:F

.field private static final NarrowTrailingSpace:F

.field private static final OutlinedOutlineWidth:F

.field private static final PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final WideLeadingSpace:F

.field private static final WideTrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/MediumIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/MediumIconButtonTokens;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->DefaultLeadingSpace:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->DefaultTrailingSpace:F

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->IconSize:F

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    sput v4, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowLeadingSpace:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowTrailingSpace:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->OutlinedOutlineWidth:F

    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideLeadingSpace:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideTrailingSpace:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getContainerShapeSquare()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getDefaultLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->DefaultLeadingSpace:F

    return p0
.end method

.method public final getDefaultTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->DefaultTrailingSpace:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->IconSize:F

    return p0
.end method

.method public final getNarrowLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowLeadingSpace:F

    return p0
.end method

.method public final getNarrowTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowTrailingSpace:F

    return p0
.end method

.method public final getOutlinedOutlineWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->OutlinedOutlineWidth:F

    return p0
.end method

.method public final getPressedContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getSelectedContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getSelectedContainerShapeSquare()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getWideLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideLeadingSpace:F

    return p0
.end method

.method public final getWideTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideTrailingSpace:F

    return p0
.end method
