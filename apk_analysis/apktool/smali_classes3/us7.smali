.class public final Lus7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "category"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "name"
    .end annotation
.end field

.field private final c:F
    .annotation runtime Lbq7;
        value = "quantity"
    .end annotation
.end field

.field private final d:F
    .annotation runtime Lbq7;
        value = "price"
    .end annotation
.end field

.field private final e:F
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus7;->a:Ljava/lang/String;

    iput-object p2, p0, Lus7;->b:Ljava/lang/String;

    iput p3, p0, Lus7;->c:F

    iput p4, p0, Lus7;->d:F

    iput p5, p0, Lus7;->e:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lus7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lus7;

    iget-object v1, p0, Lus7;->a:Ljava/lang/String;

    iget-object v3, p1, Lus7;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lus7;->b:Ljava/lang/String;

    iget-object v3, p1, Lus7;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lus7;->c:F

    iget v3, p1, Lus7;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lus7;->d:F

    iget v3, p1, Lus7;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lus7;->e:F

    iget p1, p1, Lus7;->e:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lus7;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lus7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lus7;->c:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Lus7;->d:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget p0, p0, Lus7;->e:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lus7;->a:Ljava/lang/String;

    iget-object v1, p0, Lus7;->b:Ljava/lang/String;

    iget v2, p0, Lus7;->c:F

    iget v3, p0, Lus7;->d:F

    iget p0, p0, Lus7;->e:F

    const-string v4, ", name="

    const-string v5, ", count="

    const-string v6, "ShareProductJson(category="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, v1, p0}, Lxy;->e(Ljava/lang/StringBuilder;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
