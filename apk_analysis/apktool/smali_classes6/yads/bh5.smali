.class public final Lyads/bh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y06;


# instance fields
.field public final a:Lyads/hc4;

.field public final b:Lyads/j65;

.field public final c:Lyads/rf3;

.field public final d:Lyads/uu4;


# direct methods
.method public constructor <init>(Lyads/hc4;Lyads/j65;Lyads/rf3;Lyads/uu4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bh5;->a:Lyads/hc4;

    iput-object p2, p0, Lyads/bh5;->b:Lyads/j65;

    iput-object p3, p0, Lyads/bh5;->c:Lyads/rf3;

    iput-object p4, p0, Lyads/bh5;->d:Lyads/uu4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/fj4;Lyads/dh4;)V
    .locals 6

    iget-object v0, p0, Lyads/bh5;->b:Lyads/j65;

    iget-boolean v1, v0, Lyads/j65;->f:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iput-boolean v3, v0, Lyads/j65;->f:Z

    iget-object v0, v0, Lyads/j65;->e:Lyads/e65;

    iget-object v1, v0, Lyads/e65;->e:Lmb4;

    if-eqz v1, :cond_0

    invoke-interface {v1, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v1, v0, Lyads/e65;->c:Ly22;

    new-instance v5, Lyads/d65;

    invoke-direct {v5, v0, v4}, Lyads/d65;-><init>(Lyads/e65;Le02;)V

    invoke-static {v1, v4, v4, v5, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v1

    iput-object v1, v0, Lyads/e65;->e:Lmb4;

    :cond_1
    iget-object v0, p0, Lyads/bh5;->a:Lyads/hc4;

    invoke-virtual {v0}, Lyads/hc4;->a()V

    iget-object v0, p0, Lyads/bh5;->d:Lyads/uu4;

    invoke-virtual {v0, p2}, Lyads/uu4;->a(Lyads/tu4;)V

    if-eqz p3, :cond_8

    iget-object p0, p0, Lyads/bh5;->c:Lyads/rf3;

    iget-object p2, p0, Lyads/rf3;->c:Lyads/rh6;

    iget-object v0, p2, Lyads/rh6;->a:Lyads/zg5;

    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/fe5;->R:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    iget-object v1, p2, Lyads/rh6;->a:Lyads/zg5;

    sget-object v5, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v1, v1, Lyads/zg5;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object p2, p2, Lyads/rh6;->a:Lyads/zg5;

    invoke-virtual {p2}, Lyads/zg5;->d()Z

    move-result p2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p1}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_1
    if-eqz v3, :cond_8

    iget-object p1, p0, Lyads/rf3;->e:Lmb4;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    iget-object p1, p0, Lyads/rf3;->b:Ly22;

    new-instance p2, Lyads/qf3;

    invoke-direct {p2, p3, p0, v4}, Lyads/qf3;-><init>(Lyads/dh4;Lyads/rf3;Le02;)V

    invoke-static {p1, v4, v4, p2, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lyads/rf3;->e:Lmb4;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_8
    return-void
.end method

.method public final a(Lyads/d9;Ljava/util/ArrayList;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lyads/bh5;->a:Lyads/hc4;

    invoke-virtual {p0, p1, p2}, Lyads/hc4;->a(Lyads/d9;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Lyads/dh4;)V
    .locals 3

    .line 134
    iget-object p0, p0, Lyads/bh5;->c:Lyads/rf3;

    .line 135
    iget-object v0, p0, Lyads/rf3;->e:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 137
    :cond_0
    iput-object v1, p0, Lyads/rf3;->e:Lmb4;

    .line 138
    iget-object p1, p1, Lyads/dh4;->d:Lyads/qh4;

    .line 139
    invoke-virtual {p1}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object p1

    .line 140
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 141
    iget-object p0, p0, Lyads/rf3;->a:Lyads/dg3;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 142
    iget-object p0, p0, Lyads/dg3;->a:Lyads/eg3;

    .line 143
    iget-object v0, p0, Lyads/eg3;->d:Ljava/util/WeakHashMap;

    .line 144
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/yu;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 146
    iget-object v2, p0, Lyads/eg3;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/jg3;

    :cond_3
    if-eqz v1, :cond_4

    .line 150
    iget-object p0, p0, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final a(Lyads/fj4;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lyads/bh5;->b:Lyads/j65;

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, v0, Lyads/j65;->f:Z

    .line 123
    iget-object v0, v0, Lyads/j65;->e:Lyads/e65;

    .line 124
    iget-object v1, v0, Lyads/e65;->e:Lmb4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 126
    :cond_0
    iput-object v2, v0, Lyads/e65;->e:Lmb4;

    .line 127
    iget-object v0, p0, Lyads/bh5;->a:Lyads/hc4;

    invoke-virtual {v0}, Lyads/hc4;->b()V

    .line 128
    iget-object v0, p0, Lyads/bh5;->d:Lyads/uu4;

    invoke-virtual {v0, p1}, Lyads/uu4;->b(Lyads/tu4;)V

    .line 129
    iget-object p0, p0, Lyads/bh5;->c:Lyads/rf3;

    .line 130
    iget-object p1, p0, Lyads/rf3;->e:Lmb4;

    if-eqz p1, :cond_1

    .line 131
    invoke-interface {p1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 132
    :cond_1
    iput-object v2, p0, Lyads/rf3;->e:Lmb4;

    return-void
.end method

.method public final a(Lyads/we3;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lyads/bh5;->a:Lyads/hc4;

    .line 153
    iput-object p1, p0, Lyads/hc4;->m:Lyads/we3;

    return-void
.end method

.method public final a(Lyads/yj4;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lyads/bh5;->b:Lyads/j65;

    .line 155
    iget-object p0, p0, Lyads/j65;->d:Lyads/i65;

    .line 156
    iget-object p0, p0, Lyads/i65;->e:Lyads/h65;

    .line 157
    iput-object p1, p0, Lyads/h65;->g:Lyads/yj4;

    return-void
.end method
