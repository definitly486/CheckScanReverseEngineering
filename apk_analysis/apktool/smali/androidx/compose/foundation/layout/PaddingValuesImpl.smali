.class public final Landroidx/compose/foundation/layout/PaddingValuesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/PaddingValues;


# static fields
.field public static final $stable:I


# instance fields
.field private final bottom:F

.field private final end:F

.field private final start:F

.field private final top:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    cmpl-float p2, p2, p0

    if-ltz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    and-int/2addr p1, p2

    cmpl-float p2, p3, p0

    if-ltz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    and-int/2addr p1, p2

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_3

    move v0, v1

    :cond_3
    and-int p0, p1, v0

    if-nez p0, :cond_4

    const-string p0, "Padding must be non-negative"

    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public synthetic constructor <init>(FFFFILjh2;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 53
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    :cond_0
    move v2, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 54
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    :cond_1
    move v3, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 55
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    :cond_2
    move v4, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 56
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    :cond_3
    move v5, p4

    const/4 v6, 0x0

    move-object v1, p0

    .line 57
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFFLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFLjh2;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic getBottom-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEnd-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStart-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTop-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public calculateBottomPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    return p0
.end method

.method public calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    return p0
.end method

.method public calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    return p0
.end method

.method public calculateTopPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    iget p1, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getBottom-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    return p0
.end method

.method public final getEnd-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    return p0
.end method

.method public final getStart-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    return p0
.end method

.method public final getTop-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaddingValues(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    const-string v2, ", top="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    const-string v2, ", end="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    const-string v2, ", bottom="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
