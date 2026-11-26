.class public final Lgi6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "name"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lbq7;
        value = "price"
    .end annotation
.end field

.field private final d:I
    .annotation runtime Lbq7;
        value = "catId"
    .end annotation
.end field

.field private final e:F
    .annotation runtime Lbq7;
        value = "quantity"
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "isPromotional"
    .end annotation
.end field

.field private final h:J
    .annotation runtime Lbq7;
        value = "prodId"
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "datetime"
    .end annotation
.end field

.field private final j:Lvu7;
    .annotation runtime Lbq7;
        value = "shop"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;IIFIZJLjava/lang/String;Lvu7;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lgi6;->a:J

    iput-object p3, p0, Lgi6;->b:Ljava/lang/String;

    iput p4, p0, Lgi6;->c:I

    iput p5, p0, Lgi6;->d:I

    iput p6, p0, Lgi6;->e:F

    iput p7, p0, Lgi6;->f:I

    iput-boolean p8, p0, Lgi6;->g:Z

    iput-wide p9, p0, Lgi6;->h:J

    iput-object p11, p0, Lgi6;->i:Ljava/lang/String;

    iput-object p12, p0, Lgi6;->j:Lvu7;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lgi6;->d:I

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lgi6;->a:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgi6;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lgi6;->c:I

    return p0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lgi6;->h:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgi6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lgi6;

    iget-wide v3, p0, Lgi6;->a:J

    iget-wide v5, p1, Lgi6;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lgi6;->b:Ljava/lang/String;

    iget-object v3, p1, Lgi6;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lgi6;->c:I

    iget v3, p1, Lgi6;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lgi6;->d:I

    iget v3, p1, Lgi6;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lgi6;->e:F

    iget v3, p1, Lgi6;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lgi6;->f:I

    iget v3, p1, Lgi6;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lgi6;->g:Z

    iget-boolean v3, p1, Lgi6;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lgi6;->h:J

    iget-wide v5, p1, Lgi6;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lgi6;->i:Ljava/lang/String;

    iget-object v3, p1, Lgi6;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lgi6;->j:Lvu7;

    iget-object p1, p1, Lgi6;->j:Lvu7;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lgi6;->e:F

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lgi6;->f:I

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lgi6;->g:Z

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lgi6;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lgi6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lgi6;->c:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lgi6;->d:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lgi6;->e:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Lgi6;->f:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lgi6;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-wide v2, p0, Lgi6;->h:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lgi6;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lgi6;->j:Lvu7;

    invoke-virtual {p0}, Lvu7;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lgi6;->a:J

    iget-object v2, p0, Lgi6;->b:Ljava/lang/String;

    iget v3, p0, Lgi6;->c:I

    iget v4, p0, Lgi6;->d:I

    iget v5, p0, Lgi6;->e:F

    iget v6, p0, Lgi6;->f:I

    iget-boolean v7, p0, Lgi6;->g:Z

    iget-wide v8, p0, Lgi6;->h:J

    iget-object v10, p0, Lgi6;->i:Ljava/lang/String;

    iget-object p0, p0, Lgi6;->j:Lvu7;

    const-string v11, "ProductResponse(id="

    const-string v12, ", name="

    invoke-static {v0, v1, v11, v12, v2}, Lah;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPromotional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", datetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
