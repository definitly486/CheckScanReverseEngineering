.class public final Lyads/df4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/e4;

.field public final c:Lyads/t5;

.field public final d:Ly22;

.field public final e:Landroid/content/Context;

.field public final f:Lyads/ff4;

.field public final g:Lyads/ck4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly22;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyads/il4;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lyads/il4;-><init>(Landroid/content/Context;Ly22;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    move-object p1, v4

    move-object v4, v6

    new-instance v6, Lyads/we4;

    invoke-direct {v6, v1}, Lyads/we4;-><init>(Lyads/il4;)V

    new-instance p2, Lyads/ff4;

    invoke-direct {p2, p1, v4, v6}, Lyads/ff4;-><init>(Lyads/e4;Lyads/bf5;Lyads/we4;)V

    move-object v7, v3

    move-object v3, v2

    new-instance v2, Lyads/ck4;

    invoke-direct/range {v2 .. v7}, Lyads/ck4;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/t5;Lyads/we4;Ly22;)V

    move-object v3, v7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lyads/df4;->a:Lyads/bf5;

    iput-object p1, p0, Lyads/df4;->b:Lyads/e4;

    iput-object v5, p0, Lyads/df4;->c:Lyads/t5;

    iput-object v3, p0, Lyads/df4;->d:Ly22;

    iput-object v0, p0, Lyads/df4;->e:Landroid/content/Context;

    iput-object p2, p0, Lyads/df4;->f:Lyads/ff4;

    iput-object v2, p0, Lyads/df4;->g:Lyads/ck4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lyads/df4;->g:Lyads/ck4;

    iget-object v0, p0, Lyads/ck4;->b:Lyads/xj4;

    iget-object v1, v0, Lyads/xj4;->c:Lyads/il4;

    iget-object v2, v1, Lyads/il4;->b:Lyads/sl0;

    iget-object v3, v2, Lyads/sl0;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lyads/sl0;->b:Lyads/al4;

    invoke-virtual {v2}, Lyads/al4;->a()V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v1, v1, Lyads/il4;->c:Lyads/ix2;

    invoke-virtual {v1}, Lyads/ix2;->a()V

    iget-object v1, v0, Lyads/xj4;->a:Lyads/pj4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/xj4;->b:Lyads/om4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/ck4;->c:Lyads/rk4;

    invoke-virtual {v0}, Lyads/rk4;->a()V

    iget-object p0, p0, Lyads/ck4;->a:Ly22;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method
