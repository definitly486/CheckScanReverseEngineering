.class public abstract Lyads/ed6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lyads/qk2;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/ed6;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/qk2;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lyads/dq5;

    invoke-direct {v0, p0}, Lyads/dq5;-><init>(Landroid/content/Context;)V

    sget-object v1, Lyads/zq2;->d:Lyads/zq2;

    if-nez v1, :cond_1

    sget-object v1, Lyads/zq2;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zq2;->d:Lyads/zq2;

    if-nez v2, :cond_0

    new-instance v2, Lyads/zq2;

    invoke-direct {v2}, Lyads/zq2;-><init>()V

    sput-object v2, Lyads/zq2;->d:Lyads/zq2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v1, p0}, Lyads/zq2;->a(Landroid/content/Context;)Lyads/yv;

    move-result-object v1

    new-instance v2, Lyads/bc5;

    invoke-direct {v2}, Lyads/bc5;-><init>()V

    new-instance v3, Lyads/ku5;

    invoke-direct {v3}, Lyads/ku5;-><init>()V

    invoke-virtual {v3}, Lyads/ku5;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lyads/bc5;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v4, Lyads/cf5;

    invoke-direct {v4, v3, v2}, Lyads/cf5;-><init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v2, Lyads/kk0;

    invoke-direct {v2, p0, v4}, Lyads/kk0;-><init>(Landroid/content/Context;Lyads/cf5;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lyads/qk2;

    new-instance v5, Lyads/ok0;

    invoke-direct {v5, v0}, Lyads/ok0;-><init>(Lyads/dq5;)V

    new-instance v0, Lyads/pk0;

    new-instance v6, Lyads/bw;

    invoke-direct {v6}, Lyads/bw;-><init>()V

    iput-object v1, v6, Lyads/bw;->a:Lyads/yv;

    iput-object v2, v6, Lyads/bw;->c:Lyads/vc0;

    invoke-direct {v0, v6, v3}, Lyads/pk0;-><init>(Lyads/bw;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v4, p0, v5, v0}, Lyads/qk2;-><init>(Landroid/content/Context;Lyads/ok0;Lyads/pk0;)V

    return-object v4
.end method

.method public static b(Landroid/content/Context;)Lyads/qk2;
    .locals 2

    sget-object v0, Lyads/ed6;->a:Lyads/qk2;

    if-nez v0, :cond_1

    sget-object v0, Lyads/ed6;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/ed6;->a:Lyads/qk2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p0}, Lyads/ed6;->a(Landroid/content/Context;)Lyads/qk2;

    move-result-object p0

    sput-object p0, Lyads/ed6;->a:Lyads/qk2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method
