.class public final Lcom/google/android/gms/common/images/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Landroid/graphics/Bitmap;

.field public final d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Lcom/google/android/gms/common/images/ImageManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/b;->e:Lcom/google/android/gms/common/images/ImageManager;

    iput-object p2, p0, Lcom/google/android/gms/common/images/b;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/b;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/google/android/gms/common/images/b;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->e:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v1, v0, Lcom/google/android/gms/common/images/ImageManager;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/common/images/b;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/images/zag;

    iget-object v7, p0, Lcom/google/android/gms/common/images/b;->c:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v8, v0, Lcom/google/android/gms/common/images/ImageManager;->a:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v9, v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v9, v4, v4, v7}, Lcom/google/android/gms/common/images/zag;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/common/images/ImageManager;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/gms/common/images/ImageManager;->a:Landroid/content/Context;

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/common/images/zag;->b(Landroid/content/Context;Z)V

    :goto_1
    instance-of v7, v6, Lcom/google/android/gms/common/images/zaf;

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/google/android/gms/common/images/ImageManager;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/common/images/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->g:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
