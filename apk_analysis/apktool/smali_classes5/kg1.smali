.class public final Lkg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3, p4, p5}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkg1;->a:J

    iput-object p3, p0, Lkg1;->b:Ljava/lang/String;

    iput-object p4, p0, Lkg1;->c:Ljava/lang/String;

    iput-object p5, p0, Lkg1;->d:Ljava/lang/String;

    iput-object p6, p0, Lkg1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lgf9;
    .locals 12

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lkg1$a;

    invoke-direct {v1}, Lkg1$a;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lx39;

    iget-object v1, v1, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-direct {v2, v1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v1, p0, Lkg1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lhv6;

    const/4 v2, 0x0

    iget-object v0, p0, Lkg1;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lkg1$b;

    invoke-direct {v4}, Lkg1$b;-><init>()V

    iget-object v4, v4, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0, v4}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liv6;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Lgf9;

    sget-object v0, Lnz6;->Companion:Lnz6$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkg1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v0}, Lnz6;->valueOf(Ljava/lang/String;)Lnz6;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v5, Lk57$a;

    invoke-direct {v5, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_1
    sget-object v5, Lnz6;->FNS_NOT_RESPONDING:Lnz6;

    instance-of v6, v0, Lk57$a;

    if-eqz v6, :cond_1

    move-object v0, v5

    :cond_1
    move-object v7, v0

    check-cast v7, Lnz6;

    invoke-virtual {v1}, Lhv6;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lhv6;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lhv6;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lkg1;->b:Ljava/lang/String;

    invoke-static {v5, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    move-object v10, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lhv6;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Liv6;->b()Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    move-object v11, v2

    iget-wide v5, p0, Lkg1;->a:J

    invoke-direct/range {v4 .. v11}, Lgf9;-><init>(JLnz6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkg1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkg1;

    iget-wide v3, p0, Lkg1;->a:J

    iget-wide v5, p1, Lkg1;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkg1;->b:Ljava/lang/String;

    iget-object v3, p1, Lkg1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkg1;->c:Ljava/lang/String;

    iget-object v3, p1, Lkg1;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lkg1;->d:Ljava/lang/String;

    iget-object v3, p1, Lkg1;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lkg1;->e:Ljava/lang/String;

    iget-object p1, p1, Lkg1;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lkg1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lkg1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lkg1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lkg1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lkg1;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "ChequeRequestModel(id="

    const-string v1, ", qrCode="

    iget-wide v2, p0, Lkg1;->a:J

    iget-object v4, p0, Lkg1;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lah;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    const-string v2, ", requestJson="

    iget-object v3, p0, Lkg1;->c:Ljava/lang/String;

    iget-object v4, p0, Lkg1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", responseJson="

    const-string v2, ")"

    iget-object p0, p0, Lkg1;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
