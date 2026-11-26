.class public final Lhl3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhl3$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "buyer"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "buyerType"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "createdDate"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fiscalDocumentNumber"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fiscalDriveNumber"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "totalSum"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "kktOwner"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "kktOwnerInn"
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "key"
    .end annotation
.end field

.field private j:Lhl3$a;
    .annotation runtime Lbq7;
        value = "fullInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhl3$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl3;->a:Ljava/lang/String;

    iput-object p2, p0, Lhl3;->b:Ljava/lang/String;

    iput-object p3, p0, Lhl3;->c:Ljava/lang/String;

    iput-object p4, p0, Lhl3;->d:Ljava/lang/String;

    iput-object p5, p0, Lhl3;->e:Ljava/lang/String;

    iput-object p6, p0, Lhl3;->f:Ljava/lang/String;

    iput-object p7, p0, Lhl3;->g:Ljava/lang/String;

    iput-object p8, p0, Lhl3;->h:Ljava/lang/String;

    iput-object p9, p0, Lhl3;->i:Ljava/lang/String;

    iput-object p10, p0, Lhl3;->j:Lhl3$a;

    return-void
.end method

.method public constructor <init>(Loz6;Lhl3$a;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {p1}, Loz6;->a()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Loz6;->b()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Loz6;->c()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p1}, Loz6;->d()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {p1}, Loz6;->e()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {p1}, Loz6;->i()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {p1}, Loz6;->g()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {p1}, Loz6;->h()Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual {p1}, Loz6;->f()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v10, p2

    .line 63
    invoke-direct/range {v0 .. v10}, Lhl3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhl3$a;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhl3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhl3;

    iget-object v1, p0, Lhl3;->a:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lhl3;->b:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lhl3;->c:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lhl3;->d:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lhl3;->e:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lhl3;->f:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lhl3;->g:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lhl3;->h:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lhl3;->i:Ljava/lang/String;

    iget-object v3, p1, Lhl3;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lhl3;->j:Lhl3$a;

    iget-object p1, p1, Lhl3;->j:Lhl3$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lhl3;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhl3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lhl3;->j:Lhl3$a;

    invoke-virtual {p0}, Lhl3$a;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lhl3;->a:Ljava/lang/String;

    iget-object v1, p0, Lhl3;->b:Ljava/lang/String;

    iget-object v2, p0, Lhl3;->c:Ljava/lang/String;

    iget-object v3, p0, Lhl3;->d:Ljava/lang/String;

    iget-object v4, p0, Lhl3;->e:Ljava/lang/String;

    iget-object v5, p0, Lhl3;->f:Ljava/lang/String;

    iget-object v6, p0, Lhl3;->g:Ljava/lang/String;

    iget-object v7, p0, Lhl3;->h:Ljava/lang/String;

    iget-object v8, p0, Lhl3;->i:Ljava/lang/String;

    iget-object p0, p0, Lhl3;->j:Lhl3$a;

    const-string v9, ", buyerType="

    const-string v10, ", createdDate="

    const-string v11, "FullInfoReceipt(buyer="

    invoke-static {v11, v0, v9, v1, v10}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fiscalDocumentNumber="

    const-string v9, ", fiscalDriveNumber="

    invoke-static {v0, v2, v1, v3, v9}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", totalSum="

    const-string v2, ", kktOwner="

    invoke-static {v0, v4, v1, v5, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", kktOwnerInn="

    const-string v2, ", key="

    invoke-static {v0, v6, v1, v7, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
