.class public final Ln13;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln13$a;,
        Ln13$b;
    }
.end annotation


# instance fields
.field public final a:Ljy6;

.field public final b:Lokhttp3/b;

.field public final c:Lp13;

.field public final d:Lo13;

.field public e:Z

.field public final f:Lly6;


# direct methods
.method public constructor <init>(Ljy6;Lokhttp3/b;Lp13;Lo13;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln13;->a:Ljy6;

    iput-object p2, p0, Ln13;->b:Lokhttp3/b;

    iput-object p3, p0, Ln13;->c:Lp13;

    iput-object p4, p0, Ln13;->d:Lo13;

    invoke-interface {p4}, Lo13;->a()Lly6;

    move-result-object p1

    iput-object p1, p0, Ln13;->f:Lly6;

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Ln13;->d(Ljava/io/IOException;)V

    :cond_0
    iget-object v0, p0, Ln13;->b:Lokhttp3/b;

    iget-object v1, p0, Ln13;->a:Ljy6;

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {v0, v1, p5}, Lokhttp3/b;->requestFailed(Lokhttp3/a;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/b;->requestBodyEnd(Lokhttp3/a;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {v0, v1, p5}, Lokhttp3/b;->responseFailed(Lokhttp3/a;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/b;->responseBodyEnd(Lokhttp3/a;J)V

    :cond_4
    :goto_1
    invoke-virtual {v1, p0, p4, p3, p5}, Ljy6;->f(Ln13;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lz47;)Lhz6;
    .locals 5

    iget-object v0, p0, Ln13;->d:Lo13;

    :try_start_0
    const-string v1, "Content-Type"

    invoke-static {p1, v1}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1}, Lo13;->g(Lz47;)J

    move-result-wide v2

    invoke-interface {v0, p1}, Lo13;->c(Lz47;)Lv48;

    move-result-object p1

    new-instance v0, Ln13$b;

    invoke-direct {v0, p0, p1, v2, v3}, Ln13$b;-><init>(Ln13;Lv48;J)V

    new-instance p1, Lhz6;

    new-instance v4, Liy6;

    invoke-direct {v4, v0}, Liy6;-><init>(Lv48;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lhz6;-><init>(Ljava/lang/String;JLiy6;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Ln13;->b:Lokhttp3/b;

    iget-object v1, p0, Ln13;->a:Ljy6;

    invoke-virtual {v0, v1, p1}, Lokhttp3/b;->responseFailed(Lokhttp3/a;Ljava/io/IOException;)V

    invoke-virtual {p0, p1}, Ln13;->d(Ljava/io/IOException;)V

    throw p1
.end method

.method public final c(Z)Lz47$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ln13;->d:Lo13;

    invoke-interface {v0, p1}, Lo13;->h(Z)Lz47$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lz47$a;->m:Ln13;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    iget-object v0, p0, Ln13;->b:Lokhttp3/b;

    iget-object v1, p0, Ln13;->a:Ljy6;

    invoke-virtual {v0, v1, p1}, Lokhttp3/b;->responseFailed(Lokhttp3/a;Ljava/io/IOException;)V

    invoke-virtual {p0, p1}, Ln13;->d(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d(Ljava/io/IOException;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln13;->e:Z

    iget-object v1, p0, Ln13;->c:Lp13;

    invoke-virtual {v1, p1}, Lp13;->b(Ljava/io/IOException;)V

    iget-object v1, p0, Ln13;->d:Lo13;

    invoke-interface {v1}, Lo13;->a()Lly6;

    move-result-object v1

    iget-object p0, p0, Ln13;->a:Ljy6;

    monitor-enter v1

    :try_start_0
    instance-of v2, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lokhttp3/internal/http2/StreamResetException;

    iget-object v2, v2, Lokhttp3/internal/http2/StreamResetException;->b:Lp03;

    sget-object v3, Lp03;->REFUSED_STREAM:Lp03;

    if-ne v2, v3, :cond_0

    iget p0, v1, Lly6;->n:I

    add-int/2addr p0, v0

    iput p0, v1, Lly6;->n:I

    if-le p0, v0, :cond_5

    iput-boolean v0, v1, Lly6;->j:Z

    iget p0, v1, Lly6;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lly6;->l:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->b:Lp03;

    sget-object v2, Lp03;->CANCEL:Lp03;

    if-ne p1, v2, :cond_1

    iget-boolean p0, p0, Ljy6;->p:Z

    if-nez p0, :cond_5

    :cond_1
    iput-boolean v0, v1, Lly6;->j:Z

    iget p0, v1, Lly6;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lly6;->l:I

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lly6;->g:Lhy3;

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    instance-of v2, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v2, :cond_5

    :cond_4
    iput-boolean v0, v1, Lly6;->j:Z

    iget v2, v1, Lly6;->m:I

    if-nez v2, :cond_5

    iget-object p0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v2, v1, Lly6;->b:Li87;

    invoke-static {p0, v2, p1}, Lly6;->e(Lokhttp3/OkHttpClient;Li87;Ljava/io/IOException;)V

    iget p0, v1, Lly6;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lly6;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
