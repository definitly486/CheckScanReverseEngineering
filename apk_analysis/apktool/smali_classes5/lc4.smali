.class public final Llc4;
.super Lf0;
.source "SourceFile"


# instance fields
.field public final a:Lw98;

.field public final b:Ljq7;


# direct methods
.method public constructor <init>(Lw98;Lxb4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lf0;-><init>()V

    iput-object p1, p0, Llc4;->a:Lw98;

    iget-object p1, p2, Lxb4;->b:Ljq7;

    iput-object p1, p0, Llc4;->b:Ljq7;

    return-void
.end method


# virtual methods
.method public final decodeByte()B
    .locals 4

    iget-object p0, p0, Llc4;->a:Lw98;

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltm1;->c(Ljava/lang/String;)Lk49;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lk49;->b:I

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte v2, v2

    new-instance v3, Lf49;

    invoke-direct {v3, v2}, Lf49;-><init>(B)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-byte p0, v3, Lf49;->b:B

    return p0

    :cond_2
    invoke-static {v0}, Lqa8;->l(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UByte\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeElementIndex(Lmp7;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final decodeInt()I
    .locals 4

    iget-object p0, p0, Llc4;->a:Lw98;

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltm1;->c(Ljava/lang/String;)Lk49;

    move-result-object v2

    if-eqz v2, :cond_0

    iget p0, v2, Lk49;->b:I

    return p0

    :cond_0
    invoke-static {v0}, Lqa8;->l(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UInt\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeLong()J
    .locals 4

    iget-object p0, p0, Llc4;->a:Lw98;

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltm1;->d(Ljava/lang/String;)Lp49;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lp49;->b:J

    return-wide v0

    :cond_0
    invoke-static {v0}, Lqa8;->l(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'ULong\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeShort()S
    .locals 4

    iget-object p0, p0, Llc4;->a:Lw98;

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltm1;->c(Ljava/lang/String;)Lk49;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lk49;->b:I

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-short v2, v2

    new-instance v3, Lv49;

    invoke-direct {v3, v2}, Lv49;-><init>(S)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-short p0, v3, Lv49;->b:S

    return p0

    :cond_2
    invoke-static {v0}, Lqa8;->l(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "Failed to parse type \'UShort\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, v2, v0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Llc4;->b:Ljq7;

    return-object p0
.end method
