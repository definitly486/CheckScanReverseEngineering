.class final Landroidx/compose/ui/layout/SimplePlacementScope;
.super Landroidx/compose/ui/layout/Placeable$PlacementScope;
.source "SourceFile"


# instance fields
.field private final density:F

.field private final fontScale:F

.field private final parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final parentWidth:I


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/unit/LayoutDirection;FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->parentWidth:I

    iput-object p2, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p3, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->density:F

    iput p4, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->fontScale:F

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->density:F

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->fontScale:F

    return p0
.end method

.method public getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public getParentWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->parentWidth:I

    return p0
.end method
