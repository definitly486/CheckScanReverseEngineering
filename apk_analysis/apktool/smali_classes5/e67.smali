.class public final Le67;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld67;
    .annotation runtime Lbq7;
        value = "retailer"
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Ld67;JI)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le67;->a:Ld67;

    iput-wide p2, p0, Le67;->b:J

    iput p4, p0, Le67;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ld67;
    .locals 0

    iget-object p0, p0, Le67;->a:Ld67;

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Le67;->b:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le67;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le67;

    iget-object v1, p0, Le67;->a:Ld67;

    iget-object v3, p1, Le67;->a:Ld67;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le67;->b:J

    iget-wide v5, p1, Le67;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Le67;->c:I

    iget p1, p1, Le67;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Le67;->a:Ld67;

    invoke-virtual {v0}, Ld67;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Le67;->b:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget p0, p0, Le67;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Le67;->a:Ld67;

    iget-wide v1, p0, Le67;->b:J

    iget p0, p0, Le67;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RetailerExpense(retailer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sum="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
