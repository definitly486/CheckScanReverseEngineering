.class public final Landroidx/compose/material3/tokens/DragHandleTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerWidth:F

.field private static final DraggedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DraggedElevation:F

.field private static final DraggedHeight:F

.field private static final DraggedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final DraggedWidth:F

.field private static final Elevation:F

.field private static final Height:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/DragHandleTokens;

.field private static final PressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedElevation:F

.field private static final PressedHeight:F

.field private static final PressedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final PressedWidth:F

.field private static final Shape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final Width:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/material3/tokens/DragHandleTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->INSTANCE:Landroidx/compose/material3/tokens/DragHandleTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Outline:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DragHandleTokens;->ContainerWidth:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedElevation:F

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedHeight:F

    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    sput v5, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedWidth:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v5

    sput v5, Landroidx/compose/material3/tokens/DragHandleTokens;->Elevation:F

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    sput v5, Landroidx/compose/material3/tokens/DragHandleTokens;->Height:F

    sput-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedElevation:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedHeight:F

    sput-object v3, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedWidth:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->Shape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DragHandleTokens;->Width:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getContainerWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->ContainerWidth:F

    return p0
.end method

.method public final getDraggedColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDraggedElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedElevation:F

    return p0
.end method

.method public final getDraggedHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedHeight:F

    return p0
.end method

.method public final getDraggedShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getDraggedWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->DraggedWidth:F

    return p0
.end method

.method public final getElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->Elevation:F

    return p0
.end method

.method public final getHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->Height:F

    return p0
.end method

.method public final getPressedColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getPressedElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedElevation:F

    return p0
.end method

.method public final getPressedHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedHeight:F

    return p0
.end method

.method public final getPressedShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getPressedWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->PressedWidth:F

    return p0
.end method

.method public final getShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->Shape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DragHandleTokens;->Width:F

    return p0
.end method
