.class public final Lio/appmetrica/analytics/impl/pj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/l;


# instance fields
.field public a:Lio/appmetrica/analytics/impl/if;

.field public b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

.field public c:Z

.field public d:Z

.field public final e:Lio/appmetrica/analytics/impl/oj;

.field public f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/oj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/oj;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->e:Lio/appmetrica/analytics/impl/oj;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_1

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->p()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_2

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->t()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->c:Z

    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/pj;->d:Z

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/pj;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    if-nez v0, :cond_5

    const/16 v0, 0x1e

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->c:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pj;->b(Landroid/content/Context;)V

    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/pj;->c:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_3

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->v()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pj;->b(Landroid/content/Context;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->f:Ljava/lang/ref/WeakReference;

    .line 121
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->p()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 126
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->t()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->c:Z

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/pj;->d:Z

    .line 131
    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    if-nez v0, :cond_3

    .line 132
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pj;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/if;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->e:Lio/appmetrica/analytics/impl/oj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/oj;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    if-nez v0, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pj;->a:Lio/appmetrica/analytics/impl/if;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/if;->a(Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;)V

    :cond_1
    return-void
.end method
