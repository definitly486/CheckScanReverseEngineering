.class public final Lyads/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/r1;

.field public final c:Lyads/i1;

.field public final d:Lyads/it5;

.field public final e:Lyads/m1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyads/r1;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lyads/r1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V

    sget-object p1, Lyads/i1;->g:Lyads/i1;

    if-nez p1, :cond_1

    sget-object p1, Lyads/i1;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lyads/i1;->g:Lyads/i1;

    if-nez p2, :cond_0

    new-instance p2, Lyads/i1;

    invoke-direct {p2}, Lyads/i1;-><init>()V

    sput-object p2, Lyads/i1;->g:Lyads/i1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    move-object p1, p2

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    :goto_2
    invoke-static {}, Lyads/ht5;->a()Lyads/it5;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/n1;->a:Landroid/content/Context;

    iput-object v1, p0, Lyads/n1;->b:Lyads/r1;

    iput-object p1, p0, Lyads/n1;->c:Lyads/i1;

    iput-object p2, p0, Lyads/n1;->d:Lyads/it5;

    new-instance p1, Lyads/m1;

    invoke-direct {p1, p0}, Lyads/m1;-><init>(Lyads/n1;)V

    iput-object p1, p0, Lyads/n1;->e:Lyads/m1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/n1;->e:Lyads/m1;

    invoke-virtual {v0, v1, v2}, Lyads/i1;->a(Landroid/content/Context;Lyads/u1;)V

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object p0, p0, Lyads/n1;->e:Lyads/m1;

    invoke-virtual {v0, v1, p0}, Lyads/i1;->a(Landroid/content/Context;Lyads/h95;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object v1, Lyads/q1;->c:Lyads/q1;

    invoke-virtual {v0, v1}, Lyads/r1;->a(Lyads/q1;)V

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/n1;->e:Lyads/m1;

    invoke-virtual {v0, v1, v2}, Lyads/i1;->b(Landroid/content/Context;Lyads/u1;)V

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/n1;->e:Lyads/m1;

    iget-object v3, v0, Lyads/i1;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lyads/i1;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lyads/i1;->b(Landroid/content/Context;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v0, p0, Lyads/n1;->d:Lyads/it5;

    sget-object v1, Lyads/dr3;->d:Lyads/dr3;

    invoke-virtual {v0, v1, p0}, Lyads/it5;->a(Lyads/dr3;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lyads/n1;->d:Lyads/it5;

    sget-object v1, Lyads/dr3;->d:Lyads/dr3;

    invoke-virtual {v0, v1, p0}, Lyads/it5;->b(Lyads/dr3;Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/n1;->e:Lyads/m1;

    invoke-virtual {v0, v1, v2}, Lyads/i1;->a(Landroid/content/Context;Lyads/u1;)V

    iget-object v0, p0, Lyads/n1;->c:Lyads/i1;

    iget-object v1, p0, Lyads/n1;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/n1;->e:Lyads/m1;

    invoke-virtual {v0, v1, v2}, Lyads/i1;->a(Landroid/content/Context;Lyads/h95;)V

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object v0, Lyads/q1;->c:Lyads/q1;

    invoke-virtual {p0, v0}, Lyads/r1;->b(Lyads/q1;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object v0, Lyads/q1;->d:Lyads/q1;

    invoke-virtual {p0, v0}, Lyads/r1;->a(Lyads/q1;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lyads/n1;->b:Lyads/r1;

    sget-object v0, Lyads/q1;->d:Lyads/q1;

    invoke-virtual {p0, v0}, Lyads/r1;->b(Lyads/q1;)V

    return-void
.end method
