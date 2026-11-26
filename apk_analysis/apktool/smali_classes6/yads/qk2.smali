.class public final Lyads/qk2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lyads/o85;


# instance fields
.field public final a:Lyads/nk2;

.field public final b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/o85;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyads/o85;-><init>(I)V

    sput-object v0, Lyads/qk2;->h:Lyads/o85;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/ok0;Lyads/pk0;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/qk2;->d:Z

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lyads/qk2;->g:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lj7a;

    invoke-direct {v1, p0}, Lj7a;-><init>(Lyads/qk2;)V

    invoke-static {v1}, Lyads/u56;->b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    new-instance v3, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DownloadManager"

    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v2, Lyads/nk2;

    iget-boolean v7, p0, Lyads/qk2;->d:Z

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lyads/nk2;-><init>(Landroid/os/HandlerThread;Lyads/ok0;Lyads/pk0;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lyads/qk2;->a:Lyads/nk2;

    new-instance p2, Lzi4;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lzi4;-><init>(Ljava/lang/Object;I)V

    new-instance p3, Lyads/s85;

    invoke-direct {p3, p1, p2}, Lyads/s85;-><init>(Landroid/content/Context;Lyads/q85;)V

    invoke-virtual {p3}, Lyads/s85;->c()I

    move-result p1

    iput p1, p0, Lyads/qk2;->e:I

    iput v0, p0, Lyads/qk2;->c:I

    const/4 p0, 0x0

    invoke-virtual {v2, p0, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/s85;I)V
    .locals 2

    .line 303
    iget-object p1, p1, Lyads/s85;->c:Lyads/o85;

    .line 304
    iget p1, p0, Lyads/qk2;->e:I

    if-eq p1, p2, :cond_0

    .line 305
    iput p2, p0, Lyads/qk2;->e:I

    .line 306
    iget p1, p0, Lyads/qk2;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyads/qk2;->c:I

    .line 307
    iget-object p1, p0, Lyads/qk2;->a:Lyads/nk2;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lyads/qk2;->a()Z

    move-result p1

    .line 311
    iget-object p2, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ok2;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 313
    iget-object p0, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ok2;

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 4

    .line 298
    iget-boolean v0, p0, Lyads/qk2;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lyads/qk2;->e:I

    if-eqz v0, :cond_1

    move v0, v2

    .line 299
    :goto_0
    iget-object v3, p0, Lyads/qk2;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 300
    iget-object v3, p0, Lyads/qk2;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/kk2;

    iget v3, v3, Lyads/kk2;->b:I

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 301
    :goto_1
    iget-boolean v3, p0, Lyads/qk2;->f:Z

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 302
    :goto_2
    iput-boolean v0, p0, Lyads/qk2;->f:Z

    return v1
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lyads/mk2;

    iget-object v0, p1, Lyads/mk2;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/qk2;->g:Ljava/util/List;

    iget-object v0, p1, Lyads/mk2;->a:Lyads/kk2;

    invoke-virtual {p0}, Lyads/qk2;->a()Z

    move-result v2

    iget-boolean p1, p1, Lyads/mk2;->b:Z

    iget-object v4, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ok2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ok2;

    check-cast v4, Lyads/vj6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lyads/kk2;->a:Lyads/tk2;

    iget-object v5, v5, Lyads/tk2;->b:Ljava/lang/String;

    iget-object v6, v4, Lyads/vj6;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lyads/vj6;->d:Ljava/util/List;

    iget v6, v0, Lyads/kk2;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lyads/vj6;->b:Lyads/e55;

    sget-object v6, Lyads/vj6;->c:[Lze4;

    aget-object v6, v6, v3

    iget-object v5, v5, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/vc6;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lyads/vc6;->a()V

    :cond_2
    sget-object v5, Lyads/vj6;->e:Ljava/util/List;

    iget v6, v0, Lyads/kk2;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lyads/vj6;->b:Lyads/e55;

    sget-object v6, Lyads/vj6;->c:[Lze4;

    aget-object v6, v6, v3

    iget-object v5, v5, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/vc6;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lyads/vc6;->c()V

    :cond_3
    sget-object v5, Lyads/vj6;->f:Ljava/util/List;

    iget v6, v0, Lyads/kk2;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_9

    iget-object p0, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ok2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    invoke-static {}, Lud;->g()V

    return v3

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget v2, p0, Lyads/qk2;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lyads/qk2;->c:I

    if-nez p1, :cond_9

    if-nez v2, :cond_9

    iget-object p0, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ok2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/qk2;->g:Ljava/util/List;

    invoke-virtual {p0}, Lyads/qk2;->a()Z

    move-result p1

    iget-object v0, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ok2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iget-object p0, p0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ok2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_9
    return v1
.end method
