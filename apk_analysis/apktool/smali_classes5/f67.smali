.class public final Lf67;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg67;
    .annotation runtime Lbq7;
        value = "retailer"
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg67;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf67;->a:Lg67;

    iput-wide p2, p0, Lf67;->b:J

    return-void
.end method


# virtual methods
.method public final a()Le67;
    .locals 4

    new-instance v0, Le67;

    iget-object v1, p0, Lf67;->a:Lg67;

    invoke-virtual {v1}, Lg67;->a()Ld67;

    move-result-object v1

    iget-wide v2, p0, Lf67;->b:J

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Le67;-><init>(Ld67;JI)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf67;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lf67;

    iget-object v1, p0, Lf67;->a:Lg67;

    iget-object v3, p1, Lf67;->a:Lg67;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lf67;->b:J

    iget-wide p0, p1, Lf67;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lf67;->a:Lg67;

    invoke-virtual {v0}, Lg67;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lf67;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf67;->a:Lg67;

    iget-wide v1, p0, Lf67;->b:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "RetailerExpenseResponse(retailer="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sum="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
