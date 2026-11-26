.class public final Ljw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# static fields
.field public static final a:Ljw1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljw1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljw1;->a:Ljw1;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 8

    iget-object p0, p1, Lez6;->a:Ljy6;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljy6;->o:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ljy6;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ljy6;->m:Z

    if-nez v0, :cond_1

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    iget-object v1, p0, Ljy6;->i:Lp13;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget v2, p1, Lez6;->f:I

    iget v5, p1, Lez6;->g:I

    iget v6, p1, Lez6;->h:I

    iget-boolean v3, v0, Lokhttp3/OkHttpClient;->g:Z

    iget-object v4, p1, Lez6;->e:Lb37;

    iget-object v4, v4, Lb37;->b:Ljava/lang/String;

    const-string v7, "GET"

    invoke-static {v4, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    invoke-virtual/range {v1 .. v6}, Lp13;->a(IZZII)Lly6;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lly6;->k(Lokhttp3/OkHttpClient;Lez6;)Lo13;

    move-result-object v0
    :try_end_1
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v2, Ln13;

    iget-object v3, p0, Ljy6;->e:Lokhttp3/b;

    invoke-direct {v2, p0, v3, v1, v0}, Ln13;-><init>(Ljy6;Lokhttp3/b;Lp13;Lo13;)V

    iput-object v2, p0, Ljy6;->l:Ln13;

    iput-object v2, p0, Ljy6;->q:Ln13;

    monitor-enter p0

    :try_start_2
    iput-boolean v7, p0, Ljy6;->m:Z

    iput-boolean v7, p0, Ljy6;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-boolean p0, p0, Ljy6;->p:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x3d

    invoke-static {p1, p0, v2, v0, v1}, Lez6;->a(Lez6;ILn13;Lb37;I)Lez6;

    move-result-object p0

    iget-object p1, p1, Lez6;->e:Lb37;

    invoke-virtual {p0, p1}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Canceled"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-virtual {v1, p0}, Lp13;->b(Ljava/io/IOException;)V

    new-instance p1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p1, p0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/RouteException;->c:Ljava/io/IOException;

    invoke-virtual {v1, p1}, Lp13;->b(Ljava/io/IOException;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    throw p1
.end method
