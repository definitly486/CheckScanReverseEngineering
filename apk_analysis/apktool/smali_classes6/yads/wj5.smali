.class public final Lyads/wj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:F


# direct methods
.method public constructor <init>([FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wj5;->a:[F

    iput p2, p0, Lyads/wj5;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lyads/wj5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lyads/wj5;->b:F

    check-cast p1, Lyads/wj5;

    iget v1, p1, Lyads/wj5;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/wj5;->a:[F

    iget-object p1, p1, Lyads/wj5;->a:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/wj5;->a:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lyads/wj5;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
