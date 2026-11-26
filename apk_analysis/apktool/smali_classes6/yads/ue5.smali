.class public final Lyads/ue5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds;
.implements Lyads/w75;


# instance fields
.field public final a:Lyads/pe5;

.field public final b:Lyads/me5;

.field public final c:Lyads/t5;

.field public final d:Landroid/content/Context;

.field public final e:Lyads/p50;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/pe5;Lyads/me5;Lyads/t5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ue5;->a:Lyads/pe5;

    iput-object p3, p0, Lyads/ue5;->b:Lyads/me5;

    iput-object p4, p0, Lyads/ue5;->c:Lyads/t5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ue5;->d:Landroid/content/Context;

    sget-object p1, Lyads/p50;->c:Lyads/p50;

    iput-object p1, p0, Lyads/ue5;->e:Lyads/p50;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 122
    iget-object v0, p0, Lyads/ue5;->c:Lyads/t5;

    sget-object v1, Lyads/s5;->l:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    .line 123
    iget-object p0, p0, Lyads/ue5;->c:Lyads/t5;

    sget-object v0, Lyads/s5;->m:Lyads/s5;

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lyads/fe5;

    iget-object v0, p0, Lyads/ue5;->a:Lyads/pe5;

    iget-object v1, p0, Lyads/ue5;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/pe5;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, v0, Lyads/pe5;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lyads/zg5;->a(Landroid/content/Context;Lyads/fe5;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/he5;

    iget-object v3, v2, Lyads/he5;->a:Lyads/ng;

    iget-object v3, v3, Lyads/ng;->a:Lyads/qi5;

    invoke-virtual {v3, v1}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v2, v2, Lyads/he5;->b:Lyads/he;

    iget-object v4, v2, Lyads/he;->a:Lyads/lg;

    invoke-virtual {v4}, Lyads/lg;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v2, v2, Lyads/he;->b:Lyads/fj0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->setAdvIdentifiersTracking(Z)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/ue5;->c:Lyads/t5;

    sget-object v1, Lyads/s5;->m:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object v0, p0, Lyads/ue5;->b:Lyads/me5;

    iget-object p0, p0, Lyads/ue5;->e:Lyads/p50;

    iget-object v1, v0, Lyads/me5;->a:Lc31;

    invoke-virtual {v1}, Lc31;->t()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lno5;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lyads/me5;->a:Lc31;

    new-instance v1, Lyads/ye5;

    invoke-direct {v1, p1, p0}, Lyads/ye5;-><init>(Lyads/fe5;Lyads/p50;)V

    invoke-virtual {v0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final a(Lyads/hi6;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lyads/ue5;->c:Lyads/t5;

    sget-object v1, Lyads/s5;->m:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    .line 116
    iget-object v0, p0, Lyads/ue5;->b:Lyads/me5;

    iget-object p0, p0, Lyads/ue5;->e:Lyads/p50;

    .line 117
    iget-object v1, v0, Lyads/me5;->a:Lc31;

    .line 118
    invoke-virtual {v1}, Lc31;->t()Ljava/lang/Object;

    move-result-object v1

    .line 119
    instance-of v1, v1, Lno5;

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, v0, Lyads/me5;->a:Lc31;

    .line 121
    new-instance v1, Lyads/xe5;

    invoke-direct {v1, p1, p0}, Lyads/xe5;-><init>(Lyads/hi6;Lyads/p50;)V

    invoke-virtual {v0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
