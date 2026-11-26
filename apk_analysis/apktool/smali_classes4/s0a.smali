.class public final Ls0a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0a$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ls0a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ls0a;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lpp9;)Ls0a;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh14;

    new-instance v2, Lifa;

    invoke-direct {v2, v1, p1}, Lifa;-><init>(Lh14;Lpp9;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ls0a;

    invoke-direct {p0, v0}, Ls0a;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static c(Lh14;Lcom/my/target/zh;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p0, "ImageLoaderUtils: Method loadAndDisplay called from worker thread"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, v1, p0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lpp9;->d:Lpp9;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p1}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object p1

    new-instance v1, Lb21;

    invoke-direct {v1, v0, p0}, Lb21;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p1, Ls0a;->b:Ls0a$b;

    iget-object p0, p1, Ls0a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Ls0a;->b:Ls0a$b;

    if-nez p0, :cond_4

    :goto_1
    return-void

    :cond_4
    new-instance p0, Lkc2;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lkc2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance p0, La4;

    invoke-direct {p0, p1}, La4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Ls0a;->b(Ls0a$b;)V

    return-void
.end method


# virtual methods
.method public final b(Ls0a$b;)V
    .locals 8

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Ls0a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v0, p0, Ls0a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lifa;

    iget-object v0, v2, Lifa;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lh14;

    iget-object v0, v1, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lxha;->a:Ljava/lang/String;

    new-instance v0, Ls0a$a;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ls0a$a;-><init>(Lh14;Lifa;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ls0a$b;)V

    sget-object p1, Lmz9;->b:Lmz9;

    if-nez p1, :cond_2

    const-class v1, Lmz9;

    monitor-enter v1

    :try_start_0
    sget-object p1, Lmz9;->b:Lmz9;

    if-nez p1, :cond_1

    new-instance p1, Lmz9;

    invoke-direct {p1}, Lmz9;-><init>()V

    sput-object p1, Lmz9;->b:Lmz9;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    new-instance v1, Lvz0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v3, v0, v2}, Lvz0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p1, Lw4a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object p1, v5

    goto :goto_0

    :cond_3
    move-object v5, p1

    iget-object p0, p0, Ls0a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne v7, p0, :cond_4

    invoke-interface {v5}, Ls0a$b;->a()V

    :cond_4
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lw4a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ImageLoaderUtils: Method load called from main thread"

    invoke-static {v1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lc21;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lc21;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Ls0a;->b(Ls0a$b;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string p0, "ImageLoaderUtils: success media loading"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "ImageLoaderUtils: awaiting media files load failed"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
