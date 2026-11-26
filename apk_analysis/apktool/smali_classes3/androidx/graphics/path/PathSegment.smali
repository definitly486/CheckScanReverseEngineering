.class public final Landroidx/graphics/path/PathSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/path/PathSegment$Type;
    }
.end annotation


# instance fields
.field private final points:[Landroid/graphics/PointF;

.field private final type:Landroidx/graphics/path/PathSegment$Type;

.field private final weight:F


# direct methods
.method public constructor <init>(Landroidx/graphics/path/PathSegment$Type;[Landroid/graphics/PointF;F)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    iput-object p2, p0, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    iput p3, p0, Landroidx/graphics/path/PathSegment;->weight:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/graphics/path/PathSegment;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/graphics/path/PathSegment;

    iget-object v1, p0, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    iget-object v3, p1, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    iget-object v3, p1, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Landroidx/graphics/path/PathSegment;->weight:F

    iget p1, p1, Landroidx/graphics/path/PathSegment;->weight:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final getPoints()[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getType()Landroidx/graphics/path/PathSegment$Type;
    .locals 0

    iget-object p0, p0, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    return-object p0
.end method

.method public final getWeight()F
    .locals 0

    iget p0, p0, Landroidx/graphics/path/PathSegment;->weight:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/graphics/path/PathSegment;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PathSegment(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/graphics/path/PathSegment;->type:Landroidx/graphics/path/PathSegment$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/graphics/path/PathSegment;->points:[Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/graphics/path/PathSegment;->weight:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
