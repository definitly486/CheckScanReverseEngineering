.class public final Lcz6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb24;Lnk2;)Lep2;
    .locals 4

    iget-object p0, p0, Lb24;->c:Lxk8;

    instance-of v0, p0, Lre9;

    if-eqz v0, :cond_6

    check-cast p0, Lre9;

    invoke-interface {p0}, Lre9;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0205

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lve9;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lve9;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lve9;

    if-eqz v2, :cond_1

    check-cast v1, Lve9;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lve9;

    invoke-direct {v1, p0}, Lve9;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0

    throw p1

    :cond_3
    :goto_4
    monitor-enter v1

    :try_start_1
    iget-object p0, v1, Lve9;->c:Lse9;

    if-eqz p0, :cond_4

    sget-object v0, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lve9;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v1, Lve9;->f:Z

    iput-object p1, p0, Lse9;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_4
    :try_start_2
    iget-object p0, v1, Lve9;->d:Ls68;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v3, v1, Lve9;->d:Ls68;

    new-instance p0, Lse9;

    iget-object v0, v1, Lve9;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lse9;->c:Ljava/lang/Object;

    iput-object p1, p0, Lse9;->b:Ljava/lang/Object;

    iput-object p0, v1, Lve9;->c:Lse9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object p0

    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    new-instance p0, Lix5;

    invoke-direct {p0, p1}, Lix5;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
