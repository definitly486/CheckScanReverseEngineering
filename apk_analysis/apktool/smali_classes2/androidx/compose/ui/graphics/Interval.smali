.class public Landroidx/compose/ui/graphics/Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final end:F

.field private final start:F


# direct methods
.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    iput p2, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    iput-object p3, p0, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Interval;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final contains(F)Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    iget p0, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    cmpg-float p0, p1, p0

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    cmpg-float p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/Interval;

    iget v2, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    iget v3, p1, Landroidx/compose/ui/graphics/Interval;->start:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    iget v3, p1, Landroidx/compose/ui/graphics/Interval;->end:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getEnd()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    return p0
.end method

.method public final getStart()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final overlaps(FF)Z
    .locals 1

    .line 20
    iget v0, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    iget p0, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final overlaps(Landroidx/compose/ui/graphics/Interval;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Interval<",
            "TT;>;)Z"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    iget v1, p1, Landroidx/compose/ui/graphics/Interval;->end:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    iget p1, p1, Landroidx/compose/ui/graphics/Interval;->start:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interval(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/Interval;->start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/Interval;->end:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/graphics/Interval;->data:Ljava/lang/Object;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lvg;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
