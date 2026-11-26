.class public final Lyads/ih5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/y56;

.field public final b:Lyads/a66;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lyads/y56;

    invoke-direct {v0, p1}, Lyads/y56;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/a66;

    invoke-direct {v1, p1}, Lyads/a66;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ih5;->a:Lyads/y56;

    iput-object v1, p0, Lyads/ih5;->b:Lyads/a66;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/ih5;->b:Lyads/a66;

    iget-object v1, v0, Lyads/a66;->a:Lyads/m96;

    iget-object v2, v0, Lyads/a66;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/a66;->b:Lyads/z56;

    iget-object v2, v0, Lyads/a66;->d:Landroid/content/Context;

    iget-object v1, v1, Lyads/z56;->a:Lyads/zg5;

    invoke-virtual {v1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lyads/fe5;->r:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/a66;->c:Lyads/b66;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/b66;->b()V

    :cond_0
    iget-object p0, p0, Lyads/ih5;->a:Lyads/y56;

    iget-object v0, p0, Lyads/y56;->c:Lyads/m96;

    iget-object v1, p0, Lyads/y56;->e:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/y56;->b:Lyads/zg5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lyads/zg5;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/y56;->d:Lyads/x56;

    iget-object v1, p0, Lyads/y56;->e:Landroid/content/Context;

    iget-object v0, v0, Lyads/x56;->a:Lyads/zg5;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lyads/fe5;->q:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/y56;->a:Lyads/c66;

    invoke-virtual {p0}, Lyads/c66;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    return-void
.end method
