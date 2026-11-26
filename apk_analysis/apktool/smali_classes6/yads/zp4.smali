.class public final Lyads/zp4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lyads/xp4;

.field public static final h:J

.field public static volatile i:Lyads/zp4;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public final c:Lyads/wp4;

.field public final d:Lyads/tp4;

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/xp4;

    invoke-direct {v0}, Lyads/xp4;-><init>()V

    sput-object v0, Lyads/zp4;->g:Lyads/xp4;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lyads/zp4;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyads/zp4;->b:Landroid/os/Handler;

    new-instance v0, Lyads/wp4;

    invoke-direct {v0, p1}, Lyads/wp4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/zp4;->c:Lyads/wp4;

    new-instance p1, Lyads/tp4;

    invoke-direct {p1}, Lyads/tp4;-><init>()V

    iput-object p1, p0, Lyads/zp4;->d:Lyads/tp4;

    return-void
.end method

.method public static final a(Lyads/zp4;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lyads/zp4;->c:Lyads/wp4;

    .line 46
    iget-object v0, v0, Lyads/wp4;->c:Lyads/z75;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "om_sdk_js_request_tag"

    invoke-static {v0}, Lyads/z75;->a(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 49
    :try_start_0
    iput-boolean v1, p0, Lyads/zp4;->f:Z

    .line 50
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    .line 52
    invoke-virtual {p0}, Lyads/zp4;->c()V

    .line 53
    iget-object p0, p0, Lyads/zp4;->d:Lyads/tp4;

    invoke-virtual {p0}, Lyads/tp4;->b()V

    return-void

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 37
    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-boolean v1, p0, Lyads/zp4;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lyads/zp4;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lyads/zp4;->b()V

    .line 43
    iget-object v0, p0, Lyads/zp4;->c:Lyads/wp4;

    new-instance v1, Lyads/yp4;

    invoke-direct {v1, p0}, Lyads/yp4;-><init>(Lyads/zp4;)V

    invoke-virtual {v0, v1}, Lyads/wp4;->a(Lyads/yp4;)V

    :cond_1
    return-void

    .line 44
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/d96;)V
    .locals 2

    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/zp4;->d:Lyads/tp4;

    invoke-virtual {v1, p1}, Lyads/tp4;->b(Lyads/d96;)V

    iget-object p1, p0, Lyads/zp4;->d:Lyads/tp4;

    invoke-virtual {p1}, Lyads/tp4;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/zp4;->c:Lyads/wp4;

    iget-object p0, p0, Lyads/wp4;->c:Lyads/z75;

    const-string p1, "om_sdk_js_request_tag"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/z75;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 4

    .line 30
    iget-object v0, p0, Lyads/zp4;->b:Landroid/os/Handler;

    new-instance v1, Lno2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lno2;-><init>(Ljava/lang/Object;I)V

    .line 31
    sget-wide v2, Lyads/zp4;->h:J

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Lyads/d96;)V
    .locals 3

    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lyads/zp4;->f:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lyads/zp4;->d:Lyads/tp4;

    invoke-virtual {v2, p1}, Lyads/tp4;->a(Lyads/d96;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lyads/zp4;->a()V

    return-void

    :cond_1
    invoke-interface {p1}, Lyads/d96;->a()V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/zp4;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/zp4;->e:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
