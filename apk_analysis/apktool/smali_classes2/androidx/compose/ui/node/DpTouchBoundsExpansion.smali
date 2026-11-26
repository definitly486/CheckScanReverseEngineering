.class public final Landroidx/compose/ui/node/DpTouchBoundsExpansion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;


# instance fields
.field private final bottom:F

.field private final end:F

.field private final isLayoutDirectionAware:Z

.field private final start:F

.field private final top:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->Companion:Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;

    return-void
.end method

.method private constructor <init>(FFFFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    iput p2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    iput p3, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    iput p4, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    iput-boolean p5, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Left must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    cmpl-float p1, p2, p0

    if-ltz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, p5

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "Top must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    cmpl-float p1, p3, p0

    if-ltz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, p5

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "Right must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_5
    cmpl-float p0, p4, p0

    if-ltz p0, :cond_6

    move p5, v0

    :cond_6
    if-nez p5, :cond_7

    const-string p0, "Bottom must be non-negative"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(FFFFZLjh2;)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/node/DpTouchBoundsExpansion;-><init>(FFFFZ)V

    return-void
.end method

.method public static synthetic copy-lDy3nrA$default(Landroidx/compose/ui/node/DpTouchBoundsExpansion;FFFFZILjava/lang/Object;)Landroidx/compose/ui/node/DpTouchBoundsExpansion;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->copy-lDy3nrA(FFFFZ)Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    return p0
.end method

.method public final component2-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    return p0
.end method

.method public final component3-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    return p0
.end method

.method public final component4-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    return p0
.end method

.method public final copy-lDy3nrA(FFFFZ)Landroidx/compose/ui/node/DpTouchBoundsExpansion;
    .locals 7

    new-instance v0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/DpTouchBoundsExpansion;-><init>(FFFFZLjh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    iget-boolean p1, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBottom-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    return p0
.end method

.method public final getEnd-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    return p0
.end method

.method public final getStart-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    return p0
.end method

.method public final getTop-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isLayoutDirectionAware()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    return p0
.end method

.method public final roundToTouchBoundsExpansion-TW6G1oQ(Landroidx/compose/ui/unit/Density;)J
    .locals 6

    sget-object v0, Landroidx/compose/ui/node/TouchBoundsExpansion;->Companion:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    iget v3, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    iget v4, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget-boolean v5, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->pack$ui(IIIIZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/TouchBoundsExpansion;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DpTouchBoundsExpansion(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->start:F

    const-string v2, ", top="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->top:F

    const-string v2, ", end="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->end:F

    const-string v2, ", bottom="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->bottom:F

    const-string v2, ", isLayoutDirectionAware="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->isLayoutDirectionAware:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
