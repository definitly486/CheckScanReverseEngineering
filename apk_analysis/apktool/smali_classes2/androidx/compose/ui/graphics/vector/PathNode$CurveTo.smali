.class public final Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;
.super Landroidx/compose/ui/graphics/vector/PathNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/PathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurveTo"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final x1:F

.field private final x2:F

.field private final x3:F

.field private final y1:F

.field private final y2:F

.field private final y3:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathNode;-><init>(ZZILjh2;)V

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    iput p2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    iput p6, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;FFFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->copy(FFFFFF)Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    return p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    return p0
.end method

.method public final component6()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    return p0
.end method

.method public final copy(FFFFFF)Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    invoke-direct/range {p0 .. p6}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getX1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    return p0
.end method

.method public final getX2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    return p0
.end method

.method public final getX3()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    return p0
.end method

.method public final getY1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    return p0
.end method

.method public final getY2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    return p0
.end method

.method public final getY3()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CurveTo(x1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
