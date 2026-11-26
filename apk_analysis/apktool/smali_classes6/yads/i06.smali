.class public final Lyads/i06;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lyads/io4;


# direct methods
.method public constructor <init>(Lyads/io4;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lyads/i06;->a:Lyads/io4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/a16;Lyads/hc4;Lyads/g66;)V
    .locals 4

    iget-object v0, p1, Lyads/a16;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lyads/a16;->e:Ljava/lang/Long;

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p1, Lyads/a16;->b:J

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    new-instance v0, Lyads/h06;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, p1, p3}, Lyads/h06;-><init>(Ljava/lang/ref/WeakReference;Lyads/a16;Lyads/g66;)V

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-boolean v0, p2, Lyads/hc4;->n:Z

    if-nez v0, :cond_2

    iput-boolean v1, p2, Lyads/hc4;->n:Z

    iget-object p2, p2, Lyads/hc4;->m:Lyads/we3;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lyads/we3;->c()V

    :cond_2
    iget-object p0, p0, Lyads/i06;->a:Lyads/io4;

    iget-object p1, p1, Lyads/a16;->d:Lyads/dk5;

    invoke-interface {p0, p1, p3}, Lyads/io4;->a(Lyads/dk5;Lyads/g66;)V

    return-void
.end method

.method public final a(Lyads/hc4;)V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/hc4;

    if-eqz p1, :cond_b

    iget-object v0, p1, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v3, -0x80000000

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/a16;

    iget v5, v4, Lyads/a16;->c:I

    if-le v5, v3, :cond_3

    invoke-virtual {p1, v4}, Lyads/hc4;->b(Lyads/a16;)Lyads/i66;

    move-result-object v5

    instance-of v6, v5, Lyads/g66;

    if-eqz v6, :cond_2

    iget v3, v4, Lyads/a16;->c:I

    check-cast v5, Lyads/g66;

    invoke-virtual {p0, v4, p1, v5}, Lyads/i06;->a(Lyads/a16;Lyads/hc4;Lyads/g66;)V

    goto :goto_0

    :cond_2
    instance-of v6, v5, Lyads/f66;

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    iput-object v6, v4, Lyads/a16;->e:Ljava/lang/Long;

    iget-object v6, p0, Lyads/i06;->a:Lyads/io4;

    iget-object v4, v4, Lyads/a16;->d:Lyads/dk5;

    check-cast v5, Lyads/f66;

    invoke-interface {v6, v4, v5}, Lyads/io4;->a(Lyads/dk5;Lyads/f66;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lyads/g66;

    invoke-direct {v5}, Lyads/g66;-><init>()V

    invoke-virtual {p0, v4, p1, v5}, Lyads/i06;->a(Lyads/a16;Lyads/hc4;Lyads/g66;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/h06;

    iget-object v0, p1, Lyads/h06;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/hc4;

    if-eqz v0, :cond_b

    iget-object v3, p1, Lyads/h06;->b:Lyads/a16;

    iget-object v4, v3, Lyads/a16;->d:Lyads/dk5;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v2, :cond_7

    if-ne v4, v1, :cond_6

    sget-object v1, Lyads/i16;->k:Lyads/i16;

    goto :goto_1

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_7
    sget-object v1, Lyads/i16;->f:Lyads/i16;

    goto :goto_1

    :cond_8
    sget-object v1, Lyads/i16;->e:Lyads/i16;

    :goto_1
    iget-object v4, v0, Lyads/hc4;->l:Lyads/e40;

    iget-object v5, v0, Lyads/hc4;->c:Lyads/d9;

    iget-object v6, v0, Lyads/hc4;->b:Lyads/e4;

    invoke-virtual {v4, v6, v5}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v4

    iget-object v5, v0, Lyads/hc4;->h:Lyads/ea;

    iget-object v6, v3, Lyads/a16;->a:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v5, v6, v1, v4, v7}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    iget-object v1, v0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lyads/hc4;->o:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v2, v0, Lyads/hc4;->o:Z

    iget-object v1, v0, Lyads/hc4;->m:Lyads/we3;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/we3;->g()V

    :cond_9
    iget-object p0, p0, Lyads/i06;->a:Lyads/io4;

    iget-object v1, p1, Lyads/h06;->b:Lyads/a16;

    iget-object v1, v1, Lyads/a16;->d:Lyads/dk5;

    iget-object v0, v0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/a16;

    iget-object v3, v3, Lyads/a16;->d:Lyads/dk5;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object p1, p1, Lyads/h06;->c:Lyads/g66;

    invoke-interface {p0, v1, v2, p1}, Lyads/io4;->a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V

    :cond_b
    :goto_3
    return-void
.end method
