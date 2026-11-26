.class public final Lcom/my/target/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static h:J


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/my/target/b2;

.field public final c:Lln9;

.field public final d:Lkt9;

.field public e:Landroid/os/Handler;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/my/target/z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/my/target/z2;->h:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/my/target/b2;Lcom/my/target/d1;Lln9;Lkt9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/my/target/z2;->e:Landroid/os/Handler;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/my/target/z2;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/my/target/z2;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    iput-object p4, p0, Lcom/my/target/z2;->c:Lln9;

    iput-object p5, p0, Lcom/my/target/z2;->d:Lkt9;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;JLi7a;)V
    .locals 10

    iget-object v3, p5, Li7a;->a:Lz8a;

    iget-object v3, v3, Lz8a;->a:Ljava/lang/String;

    sget-object v4, Lcom/my/target/a3;->a:Lcom/my/target/j2;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    :goto_0
    move v9, v5

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lcom/my/target/a3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    sget-object v6, Lcom/my/target/a3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz v9, :cond_2

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "pixelId"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "host"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v5, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string v3, "{}"

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Try to send pixel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x238c

    invoke-virtual {p5, v5, v4, v3}, Li7a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/my/target/z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-wide v3, Lcom/my/target/z2;->h:J

    iget-object v1, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    add-long v6, p3, v3

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v9}, Lcom/my/target/b2;->a(Ljava/lang/String;Ljava/lang/String;JJLi7a;Z)V

    invoke-virtual {p0}, Lcom/my/target/z2;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/my/target/z2;->c:Lln9;

    invoke-static {p1, v0}, Lcom/my/target/d1;->b(Ljava/lang/String;Lln9;)Lcom/my/target/d1$a;

    move-result-object v3

    if-eqz v9, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    invoke-static/range {v0 .. v5}, Lcom/my/target/a3;->b(Ljava/lang/String;Ljava/lang/String;Li7a;Lcom/my/target/d1$a;ZI)V

    :cond_4
    invoke-virtual {v3}, Lcom/my/target/d1$a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/my/target/d1$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/my/target/d1$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p5, Li7a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p5, Li7a;->c:I

    iget-object v3, p5, Li7a;->b:Lpp9;

    const/16 v4, 0x2328

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object p1, v0

    move p2, v1

    move p3, v2

    move-object p0, v3

    move p4, v4

    move-object p5, v5

    invoke-virtual/range {p0 .. p5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    :cond_5
    move v3, v4

    iget-object v2, p5, Li7a;->a:Lz8a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, v0

    move p2, v1

    move-object p0, v2

    move p4, v3

    move p3, v4

    move-object p5, v5

    invoke-virtual/range {p0 .. p5}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_6
    :goto_5
    return-void

    :goto_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/z2;->d:Lkt9;

    invoke-virtual {v0}, Lkt9;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/z2;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    invoke-interface {v1}, Lcom/my/target/b2;->a()Lcom/my/target/b2$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lcom/my/target/b2$a;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-interface {v1}, Lcom/my/target/b2$a;->a()Lgga;

    move-result-object v3

    iget-wide v4, v3, Lgga;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v3, Lgga;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lh00;

    invoke-direct {v4, v2, p0, v3}, Lh00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/my/target/z2;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :goto_1
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatSender error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    invoke-interface {p0}, Lcom/my/target/b2;->b()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/my/target/a3;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/my/target/a3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/my/target/c2;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v5, Lcom/my/target/c2;->d:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lcom/my/target/a3;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/my/target/a3;->d(Ljava/lang/String;)V

    :cond_1
    monitor-exit v3

    goto :goto_0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
