.class public final Landroidx/compose/material3/tokens/ButtonSmallTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

.field private static final IconLabelSpace:F

.field private static final IconSize:F

.field private static final LeadingSpace:F

.field private static final OutlinedOutlineWidth:F

.field private static final PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final TrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ButtonSmallTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconLabelSpace:F

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconSize:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->LeadingSpace:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->OutlinedOutlineWidth:F

    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->TrailingSpace:F

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

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getContainerShapeSquare()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getIconLabelSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconLabelSpace:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconSize:F

    return p0
.end method

.method public final getLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->LeadingSpace:F

    return p0
.end method

.method public final getOutlinedOutlineWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->OutlinedOutlineWidth:F

    return p0
.end method

.method public final getPressedContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getSelectedContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getSelectedContainerShapeSquare()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->TrailingSpace:F

    return p0
.end method
