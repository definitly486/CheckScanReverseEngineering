.class public final Ldy3$c;
.super Ldy3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final e:Lfz3;

.field public f:J

.field public g:Z

.field public final synthetic h:Ldy3;


# direct methods
.method public constructor <init>(Ldy3;Lfz3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfz3;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldy3$c;->h:Ldy3;

    invoke-direct {p0, p1}, Ldy3$a;-><init>(Ldy3;)V

    iput-object p2, p0, Ldy3$c;->e:Lfz3;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldy3$c;->f:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldy3$c;->g:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Ldy3$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldy3$c;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lgb9;->a:[B

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, Lgb9;->t(Lv48;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ldy3$c;->h:Ldy3;

    iget-object v0, v0, Ldy3;->b:Lly6;

    invoke-virtual {v0}, Lly6;->l()V

    invoke-virtual {p0}, Ldy3$a;->m()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy3$a;->c:Z

    return-void
.end method

.method public final t0(Lbu0;J)J
    .locals 11

    iget-object v0, p0, Ldy3$c;->h:Ldy3;

    iget-object v1, v0, Ldy3;->c:Lwu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_a

    iget-boolean v4, p0, Ldy3$a;->c:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Ldy3$c;->g:Z

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-wide v7, p0, Ldy3$c;->f:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_1

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    :cond_1
    const-string v4, "expected chunk size and optional extensions but was \""

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    invoke-interface {v1}, Lwu0;->Y()Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-interface {v1}, Lwu0;->M()J

    move-result-wide v7

    iput-wide v7, p0, Ldy3$c;->f:J

    invoke-interface {v1}, Lwu0;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v7, p0, Ldy3$c;->f:J

    cmp-long v7, v7, v2

    if-ltz v7, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_3

    const-string v7, ";"

    invoke-static {v1, v7, v8}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_8

    :cond_3
    iget-wide v9, p0, Ldy3$c;->f:J

    cmp-long v1, v9, v2

    if-nez v1, :cond_5

    iput-boolean v8, p0, Ldy3$c;->g:Z

    iget-object v1, v0, Ldy3;->f:Lmv3;

    new-instance v2, Ljv3$a;

    invoke-direct {v2}, Ljv3$a;-><init>()V

    :goto_0
    iget-object v3, v1, Lmv3;->a:Lwu0;

    iget-wide v7, v1, Lmv3;->b:J

    invoke-interface {v3, v7, v8}, Lwu0;->S(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v7, v1, Lmv3;->b:J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v9, v4

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lmv3;->b:J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljv3$a;->e()Ljv3;

    move-result-object v1

    iput-object v1, v0, Ldy3;->g:Ljv3;

    iget-object v1, v0, Ldy3;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->k:Ll02;

    iget-object v2, v0, Ldy3;->g:Ljv3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Ldy3$c;->e:Lfz3;

    invoke-static {v1, v3, v2}, Laz3;->b(Ll02;Lfz3;Ljv3;)V

    invoke-virtual {p0}, Ldy3$a;->m()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljv3$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    iget-boolean v1, p0, Ldy3$c;->g:Z

    if-nez v1, :cond_6

    :goto_2
    return-wide v5

    :cond_6
    iget-wide v1, p0, Ldy3$c;->f:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldy3$a;->t0(Lbu0;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_7

    iget-wide v0, p0, Ldy3$c;->f:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ldy3$c;->f:J

    return-wide p1

    :cond_7
    iget-object p1, v0, Ldy3;->b:Lly6;

    invoke-virtual {p1}, Lly6;->l()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldy3$a;->m()V

    throw p1

    :cond_8
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ldy3$c;->f:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v2

    :cond_a
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v2
.end method
