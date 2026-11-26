.class public final Lyads/fg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:F

.field public final d:Lyads/yf3;

.field public final e:F


# direct methods
.method public constructor <init>(IZFLyads/yf3;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/fg3;->a:I

    iput-boolean p2, p0, Lyads/fg3;->b:Z

    iput p3, p0, Lyads/fg3;->c:F

    iput-object p4, p0, Lyads/fg3;->d:Lyads/yf3;

    iput p5, p0, Lyads/fg3;->e:F

    return-void
.end method

.method public static a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;
    .locals 6

    iget v1, p0, Lyads/fg3;->a:I

    iget-boolean v2, p0, Lyads/fg3;->b:Z

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    iget p1, p0, Lyads/fg3;->c:F

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_1

    iget-object p2, p0, Lyads/fg3;->d:Lyads/yf3;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_2

    iget p3, p0, Lyads/fg3;->e:F

    :cond_2
    move v5, p3

    new-instance v0, Lyads/fg3;

    invoke-direct/range {v0 .. v5}, Lyads/fg3;-><init>(IZFLyads/yf3;F)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/fg3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/fg3;

    iget v1, p0, Lyads/fg3;->a:I

    iget v3, p1, Lyads/fg3;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyads/fg3;->b:Z

    iget-boolean v3, p1, Lyads/fg3;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lyads/fg3;->c:F

    iget v3, p1, Lyads/fg3;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/fg3;->d:Lyads/yf3;

    iget-object v3, p1, Lyads/fg3;->d:Lyads/yf3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lyads/fg3;->e:F

    iget p1, p1, Lyads/fg3;->e:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/fg3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyads/fg3;->b:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget v2, p0, Lyads/fg3;->c:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget-object v2, p0, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lyads/fg3;->e:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lyads/fg3;->a:I

    iget-boolean v1, p0, Lyads/fg3;->b:Z

    iget v2, p0, Lyads/fg3;->c:F

    iget-object v3, p0, Lyads/fg3;->d:Lyads/yf3;

    iget p0, p0, Lyads/fg3;->e:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Indicator(position="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", centerOffset="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", itemSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scaleFactor="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v4, v0, p0}, Lxy;->e(Ljava/lang/StringBuilder;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
