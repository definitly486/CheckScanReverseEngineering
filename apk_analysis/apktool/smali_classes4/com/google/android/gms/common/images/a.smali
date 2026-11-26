.class public final Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/google/android/gms/common/images/zag;

.field public final synthetic c:Lcom/google/android/gms/common/images/ImageManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/a;->c:Lcom/google/android/gms/common/images/ImageManager;

    iput-object p2, p0, Lcom/google/android/gms/common/images/a;->b:Lcom/google/android/gms/common/images/zag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/a;->c:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v1, v0, Lcom/google/android/gms/common/images/ImageManager;->d:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/common/images/a;->b:Lcom/google/android/gms/common/images/zag;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/common/images/ImageManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ImageReceiver.removeImageRequest() must be called in the main thread"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/zag;->a:Lrka;

    iget-object v1, v1, Lrka;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/common/images/ImageManager;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/images/zag;->b(Landroid/content/Context;Z)V

    return-void

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageManager;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/common/images/ImageManager;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/images/zag;->b(Landroid/content/Context;Z)V

    return-void

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageManager;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2, v4}, Lcom/google/android/gms/common/images/zag;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    iget-object v2, v0, Lcom/google/android/gms/common/images/ImageManager;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v2, :cond_4

    new-instance v2, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v3, v0, Lcom/google/android/gms/common/images/ImageManager;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "ImageReceiver.addImageRequest() must be called in the main thread"

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, p0, Lcom/google/android/gms/common/images/zaf;

    if-nez v3, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/common/images/ImageManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->g:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->h:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
