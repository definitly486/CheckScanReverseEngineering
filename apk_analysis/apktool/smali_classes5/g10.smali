.class public final Lg10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg10$a;,
        Lg10$b;,
        Lg10$c;
    }
.end annotation


# instance fields
.field private final a:Lg10$c;
    .annotation runtime Lbq7;
        value = "balance"
    .end annotation
.end field

.field private final b:Lg10$a;
    .annotation runtime Lbq7;
        value = "accrual"
    .end annotation
.end field

.field private final c:Lg10$b;
    .annotation runtime Lbq7;
        value = "apiBankAlfaTransferButton"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg10$c;Lg10$a;Lg10$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg10;->a:Lg10$c;

    iput-object p2, p0, Lg10;->b:Lg10$a;

    iput-object p3, p0, Lg10;->c:Lg10$b;

    return-void
.end method


# virtual methods
.method public final a()Lg10$a;
    .locals 0

    iget-object p0, p0, Lg10;->b:Lg10$a;

    return-object p0
.end method

.method public final b()Lg10$b;
    .locals 0

    iget-object p0, p0, Lg10;->c:Lg10$b;

    return-object p0
.end method

.method public final c()Lg10$c;
    .locals 0

    iget-object p0, p0, Lg10;->a:Lg10$c;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg10;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg10;

    iget-object v1, p0, Lg10;->a:Lg10$c;

    iget-object v3, p1, Lg10;->a:Lg10$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lg10;->b:Lg10$a;

    iget-object v3, p1, Lg10;->b:Lg10$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lg10;->c:Lg10$b;

    iget-object p1, p1, Lg10;->c:Lg10$b;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lg10;->a:Lg10$c;

    invoke-virtual {v0}, Lg10$c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg10;->b:Lg10$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg10$a;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg10;->c:Lg10$b;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lg10$b;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg10;->a:Lg10$c;

    iget-object v1, p0, Lg10;->b:Lg10$a;

    iget-object p0, p0, Lg10;->c:Lg10$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BalanceBlockCashbackResponse(balance="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", accrual="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", apiBankAlfaTransferButton="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
