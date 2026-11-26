.class public final Ldy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo13;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldy3$a;,
        Ldy3$b;,
        Ldy3$c;,
        Ldy3$d;,
        Ldy3$e;,
        Ldy3$f;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Lly6;

.field public final c:Lwu0;

.field public final d:Lvu0;

.field public e:I

.field public final f:Lmv3;

.field public g:Ljv3;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lly6;Liy6;Lhy6;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy3;->a:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Ldy3;->b:Lly6;

    iput-object p3, p0, Ldy3;->c:Lwu0;

    iput-object p4, p0, Ldy3;->d:Lvu0;

    new-instance p1, Lmv3;

    invoke-direct {p1, p3}, Lmv3;-><init>(Lwu0;)V

    iput-object p1, p0, Ldy3;->f:Lmv3;

    return-void
.end method


# virtual methods
.method public final a()Lly6;
    .locals 0

    iget-object p0, p0, Ldy3;->b:Lly6;

    return-object p0
.end method

.method public final b(Lb37;J)Ls18;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Transfer-Encoding"

    iget-object p1, p1, Lb37;->c:Ljv3;

    invoke-virtual {p1, v0}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "state: "

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Ldy3;->e:I

    if-ne p1, v3, :cond_0

    iput v2, p0, Ldy3;->e:I

    new-instance p1, Ldy3$b;

    invoke-direct {p1, p0}, Ldy3$b;-><init>(Ldy3;)V

    return-object p1

    :cond_0
    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, v1}, Ljs2;->c(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_3

    iget p1, p0, Ldy3;->e:I

    if-ne p1, v3, :cond_2

    iput v2, p0, Ldy3;->e:I

    new-instance p1, Ldy3$e;

    invoke-direct {p1, p0}, Ldy3$e;-><init>(Ldy3;)V

    return-object p1

    :cond_2
    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, v1}, Ljs2;->c(ILjava/lang/String;)V

    return-object v0

    :cond_3
    const-string p0, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lz47;)Lv48;
    .locals 9

    invoke-static {p1}, Laz3;->a(Lz47;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldy3;->i(J)Ldy3$d;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "state: "

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v0, :cond_2

    iget-object p1, p1, Lz47;->b:Lb37;

    iget-object p1, p1, Lb37;->a:Lfz3;

    iget v0, p0, Ldy3;->e:I

    if-ne v0, v4, :cond_1

    iput v3, p0, Ldy3;->e:I

    new-instance v0, Ldy3$c;

    invoke-direct {v0, p0, p1}, Ldy3$c;-><init>(Ldy3;Lfz3;)V

    return-object v0

    :cond_1
    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, v2}, Ljs2;->c(ILjava/lang/String;)V

    return-object v1

    :cond_2
    invoke-static {p1}, Lgb9;->j(Lz47;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_3

    invoke-virtual {p0, v5, v6}, Ldy3;->i(J)Ldy3$d;

    move-result-object p0

    return-object p0

    :cond_3
    iget p1, p0, Ldy3;->e:I

    if-ne p1, v4, :cond_4

    iput v3, p0, Ldy3;->e:I

    iget-object p1, p0, Ldy3;->b:Lly6;

    invoke-virtual {p1}, Lly6;->l()V

    new-instance p1, Ldy3$f;

    invoke-direct {p1, p0}, Ldy3$a;-><init>(Ldy3;)V

    return-object p1

    :cond_4
    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, v2}, Ljs2;->c(ILjava/lang/String;)V

    return-object v1
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Ldy3;->b:Lly6;

    iget-object p0, p0, Lly6;->c:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Ldy3;->d:Lvu0;

    invoke-interface {p0}, Lvu0;->flush()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Ldy3;->d:Lvu0;

    invoke-interface {p0}, Lvu0;->flush()V

    return-void
.end method

.method public final f(Lb37;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ldy3;->b:Lly6;

    iget-object v0, v0, Lly6;->b:Li87;

    iget-object v0, v0, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lb37;->a:Lfz3;

    iget-boolean v3, v2, Lfz3;->j:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lfz3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lfz3;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lb37;->c:Ljv3;

    invoke-virtual {p0, p1, v0}, Ldy3;->j(Ljv3;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lz47;)J
    .locals 1

    invoke-static {p1}, Laz3;->a(Lz47;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-string p0, "Transfer-Encoding"

    invoke-static {p1, p0}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    invoke-static {p1}, Lgb9;->j(Lz47;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final h(Z)Lz47$a;
    .locals 12

    iget-object v0, p0, Ldy3;->f:Lmv3;

    iget-object v1, v0, Lmv3;->a:Lwu0;

    iget v2, p0, Ldy3;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "state: "

    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, p1}, Ljs2;->c(ILjava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    :try_start_0
    iget-wide v2, v0, Lmv3;->b:J

    invoke-interface {v1, v2, v3}, Lwu0;->S(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v6, v0, Lmv3;->b:J

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v8, v3

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lmv3;->b:J

    invoke-static {v2}, Lk88$a;->a(Ljava/lang/String;)Lk88;

    move-result-object v2

    iget v3, v2, Lk88;->b:I

    new-instance v6, Lz47$a;

    invoke-direct {v6}, Lz47$a;-><init>()V

    iget-object v7, v2, Lk88;->a:Lts6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v6, Lz47$a;->b:Lts6;

    iput v3, v6, Lz47$a;->c:I

    iget-object v2, v2, Lk88;->c:Ljava/lang/String;

    iput-object v2, v6, Lz47$a;->d:Ljava/lang/String;

    new-instance v2, Ljv3$a;

    invoke-direct {v2}, Ljv3$a;-><init>()V

    :goto_1
    iget-wide v7, v0, Lmv3;->b:J

    invoke-interface {v1, v7, v8}, Lwu0;->S(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lmv3;->b:J

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lmv3;->b:J

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v2}, Ljv3$a;->e()Ljv3;

    move-result-object v0

    invoke-virtual {v0}, Ljv3;->d()Ljv3$a;

    move-result-object v0

    iput-object v0, v6, Lz47$a;->f:Ljv3$a;

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v3, v0, :cond_2

    return-object v4

    :cond_2
    if-ne v3, v0, :cond_3

    iput v5, p0, Ldy3;->e:I

    return-object v6

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v3, :cond_4

    const/16 p1, 0xc8

    if-ge v3, p1, :cond_4

    iput v5, p0, Ldy3;->e:I

    return-object v6

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Ldy3;->e:I

    return-object v6

    :cond_5
    invoke-virtual {v2, v7}, Ljv3$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object p0, p0, Ldy3;->b:Lly6;

    iget-object p0, p0, Lly6;->b:Li87;

    iget-object p0, p0, Li87;->a:Ll9;

    iget-object p0, p0, Ll9;->h:Lfz3;

    const-string v0, "/..."

    :try_start_1
    new-instance v1, Lfz3$a;

    invoke-direct {v1}, Lfz3$a;-><init>()V

    invoke-virtual {v1, p0, v0}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v1

    :catch_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    const/4 v0, 0x0

    const/16 v1, 0xfb

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static {p0, v0, v0, v1, v2}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lfz3$a;->b:Ljava/lang/String;

    invoke-static {p0, v0, v0, v1, v2}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lfz3$a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lfz3$a;->a()Lfz3;

    move-result-object p0

    iget-object p0, p0, Lfz3;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final i(J)Ldy3$d;
    .locals 2

    iget v0, p0, Ldy3;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ldy3;->e:I

    new-instance v0, Ldy3$d;

    invoke-direct {v0, p0, p1, p2}, Ldy3$d;-><init>(Ldy3;J)V

    return-object v0

    :cond_0
    const-string p1, "state: "

    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, p1}, Ljs2;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Ljv3;Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Ldy3;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ldy3;->d:Lvu0;

    invoke-interface {v0, p2}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1}, Ljv3;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v3

    invoke-interface {v3, v1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    const/4 p1, 0x1

    iput p1, p0, Ldy3;->e:I

    return-void

    :cond_1
    const-string p1, "state: "

    iget p0, p0, Ldy3;->e:I

    invoke-static {p0, p1}, Ljs2;->c(ILjava/lang/String;)V

    return-void
.end method
