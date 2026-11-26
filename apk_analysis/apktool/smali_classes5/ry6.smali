.class public final Lry6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lty0;


# instance fields
.field public final a:Ly14;

.field public b:Ljy6;


# direct methods
.method public constructor <init>(Lb37;Ly14;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lry6;->a:Ly14;

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/a;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lry6;->a:Ly14;

    invoke-virtual {p1, p0, p2}, Ly14;->H(Lry6;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/a;Lz47;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Invalid content-type: "

    :try_start_0
    invoke-virtual {p2}, Lz47;->o()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iget-object v2, p0, Lry6;->a:Ly14;

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {v2, p0, v1}, Ly14;->H(Lry6;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lz47;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :try_start_2
    iget-object v0, p2, Lz47;->h:Lb57;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lb57;->p()Lj95;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lj95;->b:Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, v3, Lj95;->c:Ljava/lang/String;

    const-string v4, "event-stream"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lry6;->b:Ljy6;

    if-eqz p1, :cond_4

    iget-boolean v1, p1, Ljy6;->k:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Ljy6;->k:Z

    iget-object p1, p1, Ljy6;->f:Lky6;

    invoke-virtual {p1}, Lat;->i()Z

    invoke-virtual {p2}, Lz47;->p()Lz47$a;

    move-result-object p1

    sget-object v1, Lgb9;->c:Lc57;

    iput-object v1, p1, Lz47$a;->g:Lb57;

    invoke-virtual {p1}, Lz47$a;->a()Lz47;

    move-result-object p1

    new-instance v1, Lqq7;

    invoke-virtual {v0}, Lb57;->L()Lwu0;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lqq7;-><init>(Lwu0;Lry6;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2, p0, p1}, Ly14;->I(Lry6;Lz47;)V

    :goto_0
    invoke-virtual {v1}, Lqq7;->a()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v2, p0}, Ly14;->F(Lry6;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p2}, Lz47;->close()V

    return-void

    :catch_0
    move-exception p1

    :try_start_5
    invoke-virtual {v2, p0, p1}, Ly14;->H(Lry6;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p2}, Lz47;->close()V

    return-void

    :cond_3
    :try_start_6
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "call"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb57;->p()Lj95;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1}, Ly14;->H(Lry6;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p2}, Lz47;->close()V

    return-void

    :goto_2
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
