.class public final Llv5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final b:Lmv5;

.field public final c:Ltk3;

.field public d:Z

.field public final synthetic e:Llv5;


# direct methods
.method public constructor <init>(Llv5;Ltk3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv5$e;->e:Llv5;

    new-instance p1, Lmv5;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p1}, Lmv5;-><init>()V

    iput-object p1, p0, Llv5$e;->b:Lmv5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Llv5$e;->d:Z

    iput-object p2, p0, Llv5$e;->c:Ltk3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpClientTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Llv5$e;->c:Ltk3;

    check-cast v2, Ley3$c;

    invoke-virtual {v2, p0}, Ley3$c;->a(Llv5$e;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Llv5$e;->e:Llv5;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, v3, Llv5;->J:Lif4;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lif4;->a()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    iget-object v2, v3, Llv5;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Llv5$e;->e:Llv5;

    iget-object v3, v3, Llv5;->x:Lh88;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    :try_start_3
    sget-object v2, Lh88;->m:Lh88;

    const-string v3, "End of stream or IOException"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    :cond_2
    iget-object v2, p0, Llv5$e;->e:Llv5;

    sget-object v4, Lq03;->INTERNAL_ERROR:Lq03;

    invoke-virtual {v2, v1, v4, v3}, Llv5;->q(ILq03;Lh88;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Llv5$e;->c:Ltk3;

    check-cast v1, Ley3$c;

    invoke-virtual {v1}, Ley3$c;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "bio == null"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    throw v1

    :catch_1
    move-exception v1

    :goto_1
    sget-object v2, Llv5;->W:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p0, p0, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->j:Lp94$f;

    invoke-virtual {p0}, Lp94$f;->e()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iget-object v3, p0, Llv5$e;->e:Llv5;

    sget-object v4, Lq03;->PROTOCOL_ERROR:Lq03;

    sget-object v5, Lh88;->l:Lh88;

    const-string v6, "error in frame handler"

    invoke-virtual {v5, v6}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v5

    invoke-virtual {v5, v2}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v2

    sget-object v5, Llv5;->V:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v2}, Llv5;->q(ILq03;Lh88;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Llv5$e;->c:Ltk3;

    check-cast v1, Ley3$c;

    invoke-virtual {v1}, Ley3$c;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "bio == null"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    throw v1

    :catch_3
    move-exception v1

    goto :goto_1

    :goto_4
    return-void

    :catchall_2
    move-exception v1

    :try_start_9
    iget-object v2, p0, Llv5$e;->c:Ltk3;

    check-cast v2, Ley3$c;

    invoke-virtual {v2}, Ley3$c;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    const-string v3, "bio == null"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    throw v2

    :catch_5
    move-exception v2

    sget-object v3, Llv5;->W:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception closing frame reader"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    iget-object p0, p0, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->j:Lp94$f;

    invoke-virtual {p0}, Lp94$f;->e()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method
