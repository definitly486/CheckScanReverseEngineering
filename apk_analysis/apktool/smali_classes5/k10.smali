.class public final Lk10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk10$a;,
        Lk10$b;,
        Lk10$c;,
        Lk10$d;,
        Lk10$e;,
        Lk10$f;
    }
.end annotation


# instance fields
.field private final a:Lk10$e;
    .annotation runtime Lbq7;
        value = "phone"
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk10$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "commonCells"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk10$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "commonBanners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk10$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "compactBanners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk10$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lk10$f;
    .annotation runtime Lbq7;
        value = "registration"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk10$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk10$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk10$e;",
            "Ljava/util/List<",
            "Lk10$a;",
            ">;",
            "Ljava/util/List<",
            "Lk10$c;",
            ">;",
            "Ljava/util/List<",
            "Lk10$b;",
            ">;",
            "Ljava/util/List<",
            "Lk10$d;",
            ">;",
            "Lk10$f;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lk10;->a:Lk10$e;

    .line 28
    iput-object p2, p0, Lk10;->b:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lk10;->c:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lk10;->d:Ljava/util/List;

    .line 31
    iput-object p5, p0, Lk10;->e:Ljava/util/List;

    .line 32
    iput-object p6, p0, Lk10;->f:Lk10$f;

    return-void
.end method

.method public synthetic constructor <init>(Lk10$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk10$f;ILjh2;)V
    .locals 1

    and-int/lit8 p8, p7, 0x2

    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p8, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_3

    move-object p5, v0

    :cond_3
    invoke-direct/range {p0 .. p6}, Lk10;-><init>(Lk10$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk10$f;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk10$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lk10;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk10$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lk10;->d:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk10$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lk10;->c:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk10$d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lk10;->e:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lk10$e;
    .locals 0

    iget-object p0, p0, Lk10;->a:Lk10$e;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk10;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk10;

    iget-object v1, p0, Lk10;->a:Lk10$e;

    iget-object v3, p1, Lk10;->a:Lk10$e;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk10;->b:Ljava/util/List;

    iget-object v3, p1, Lk10;->b:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk10;->c:Ljava/util/List;

    iget-object v3, p1, Lk10;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lk10;->d:Ljava/util/List;

    iget-object v3, p1, Lk10;->d:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lk10;->e:Ljava/util/List;

    iget-object v3, p1, Lk10;->e:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lk10;->f:Lk10$f;

    iget-object p1, p1, Lk10;->f:Lk10$f;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Lk10$f;
    .locals 0

    iget-object p0, p0, Lk10;->f:Lk10$f;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk10;->a:Lk10$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lk10$e;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk10;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk10;->c:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk10;->d:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk10;->e:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lk10;->f:Lk10$f;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lk10$f;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lk10;->a:Lk10$e;

    iget-object v1, p0, Lk10;->b:Ljava/util/List;

    iget-object v2, p0, Lk10;->c:Ljava/util/List;

    iget-object v3, p0, Lk10;->d:Ljava/util/List;

    iget-object v4, p0, Lk10;->e:Ljava/util/List;

    iget-object p0, p0, Lk10;->f:Lk10$f;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BalanceBlockTransferResponse(phone="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cards="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", commonCells="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", commonBanners="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", compactBanners="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", registrationCell="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
