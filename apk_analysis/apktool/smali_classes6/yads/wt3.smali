.class public final Lyads/wt3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x00;

.field public final b:Lyads/gu5;

.field public final c:Lyads/ut3;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lyads/x00;Lyads/ut3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/wt3;->a:Lyads/x00;

    iput-object p1, p0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lyads/wt3;->c:Lyads/ut3;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/wt3;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lzu1;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4}, Lzu1;-><init>(Ljava/lang/Object;I)V

    check-cast p3, Lyads/du5;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyads/gu5;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p3, p4}, Lyads/gu5;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lyads/wt3;->b:Lyads/gu5;

    return-void
.end method

.method public static a(Ljava/util/concurrent/CopyOnWriteArraySet;ILyads/tt3;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vt3;

    .line 96
    iget-boolean v1, v0, Lyads/vt3;->d:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 97
    iget-object v1, v0, Lyads/vt3;->b:Lyads/ly2;

    invoke-virtual {v1, p1}, Lyads/ly2;->a(I)Lyads/ly2;

    :cond_1
    const/4 v1, 0x1

    .line 98
    iput-boolean v1, v0, Lyads/vt3;->c:Z

    .line 99
    iget-object v0, v0, Lyads/vt3;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lyads/tt3;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lyads/wt3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/wt3;->b:Lyads/gu5;

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/wt3;->b:Lyads/gu5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/gu5;->a()Lyads/fu5;

    move-result-object v2

    iget-object v3, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v2, Lyads/fu5;->a:Landroid/os/Message;

    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v2}, Lyads/fu5;->a()V

    :cond_1
    iget-object v0, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lyads/wt3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lyads/wt3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lyads/wt3;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(ILyads/tt3;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 101
    iget-object p0, p0, Lyads/wt3;->f:Ljava/util/ArrayDeque;

    new-instance v1, Lyga;

    invoke-direct {v1, v0, p1, p2}, Lyga;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILyads/tt3;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 5

    .line 102
    iget-object p1, p0, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vt3;

    .line 103
    iget-object v1, p0, Lyads/wt3;->c:Lyads/ut3;

    .line 104
    iget-boolean v2, v0, Lyads/vt3;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 105
    iget-boolean v2, v0, Lyads/vt3;->c:Z

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, v0, Lyads/vt3;->b:Lyads/ly2;

    invoke-virtual {v2}, Lyads/ly2;->a()Lyads/my2;

    move-result-object v2

    .line 107
    new-instance v4, Lyads/ly2;

    invoke-direct {v4}, Lyads/ly2;-><init>()V

    iput-object v4, v0, Lyads/vt3;->b:Lyads/ly2;

    .line 108
    iput-boolean v3, v0, Lyads/vt3;->c:Z

    .line 109
    iget-object v0, v0, Lyads/vt3;->a:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lyads/ut3;->a(Ljava/lang/Object;Lyads/my2;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lyads/wt3;->b:Lyads/gu5;

    .line 111
    iget-object v0, v0, Lyads/gu5;->a:Landroid/os/Handler;

    .line 112
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
