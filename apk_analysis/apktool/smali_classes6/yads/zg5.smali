.class public final Lyads/zg5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;

.field public static volatile l:Lyads/zg5;


# instance fields
.field public volatile a:Lyads/fe5;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public j:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/zg5;->g:Z

    iput-boolean v0, p0, Lyads/zg5;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lyads/fb;
    .locals 0

    .line 29
    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/content/Context;)Lyads/fe5;
    .locals 2

    iget-object v0, p0, Lyads/zg5;->a:Lyads/fe5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/zg5;->a:Lyads/fe5;

    if-nez v1, :cond_0

    invoke-static {p1}, Lyads/q50;->a(Landroid/content/Context;)Lyads/t50;

    move-result-object p1

    invoke-virtual {p1}, Lyads/t50;->a()Lyads/fe5;

    move-result-object v1

    iput-object v1, p0, Lyads/zg5;->a:Lyads/fe5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lyads/fe5;)V
    .locals 1

    .line 30
    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iput-object p2, p0, Lyads/zg5;->a:Lyads/fe5;

    .line 32
    invoke-static {p1}, Lyads/q50;->a(Landroid/content/Context;)Lyads/t50;

    move-result-object p0

    invoke-virtual {p0, p2}, Lyads/t50;->a(Lyads/fe5;)V

    .line 33
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lyads/zg5;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/zg5;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lyads/zg5;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/zg5;->b:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
