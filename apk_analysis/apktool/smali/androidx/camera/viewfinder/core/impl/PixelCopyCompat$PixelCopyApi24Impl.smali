.class final Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PixelCopyApi24Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;

.field public static final KEEP_ALIVE_MILLIS:J = 0x1f4L

.field private static _backgroundHandler:Landroidx/camera/viewfinder/core/impl/RefCounted;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/viewfinder/core/impl/RefCounted<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/HandlerThread;Landroid/os/Handler;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->withHandlerScope$lambda$5$lambda$4$lambda$2(Landroid/os/HandlerThread;Landroid/os/Handler;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILandroidx/core/util/Consumer;)V
    .locals 0

    invoke-static {p1, p0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->requestImpl$lambda$9$lambda$8$lambda$7(Landroidx/core/util/Consumer;I)V

    return-void
.end method

.method public static synthetic c(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->requestImpl$lambda$9$lambda$8(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;I)V

    return-void
.end method

.method public static synthetic d(Landroidx/camera/viewfinder/core/impl/RefCounted;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->withHandlerScope$lambda$6(Landroidx/camera/viewfinder/core/impl/RefCounted;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Landroid/os/Handler;Lll3;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->requestImpl$lambda$9(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Landroid/os/Handler;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final requestImpl$lambda$9(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Landroid/os/Handler;Lll3;)Lj59;
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/viewfinder/core/impl/b;

    invoke-direct {v0, p1, p2, p5, p3}, Landroidx/camera/viewfinder/core/impl/b;-><init>(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;)V

    invoke-static {p0, p1, v0, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final requestImpl$lambda$9$lambda$8(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;I)V
    .locals 1

    const-string v0, "PixelCopyApi24Impl.request"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/tracing/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :try_start_0
    new-instance p0, Landroidx/camera/viewfinder/core/impl/a;

    invoke-direct {p0, p4, p3}, Landroidx/camera/viewfinder/core/impl/a;-><init>(ILandroidx/core/util/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    throw p0
.end method

.method private static final requestImpl$lambda$9$lambda$8$lambda$7(Landroidx/core/util/Consumer;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private final withHandlerScope(Lbm3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroid/os/Handler;",
            "-",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->_backgroundHandler:Landroidx/camera/viewfinder/core/impl/RefCounted;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/viewfinder/core/impl/RefCounted;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lb36;

    invoke-direct {v2, v1, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pixelCopyRequest Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/camera/viewfinder/core/impl/RefCounted;

    new-instance v3, Landroidx/camera/viewfinder/core/impl/c;

    invoke-direct {v3, v0}, Landroidx/camera/viewfinder/core/impl/c;-><init>(Landroid/os/HandlerThread;)V

    const/4 v0, 0x0

    invoke-direct {v2, v0, v3}, Landroidx/camera/viewfinder/core/impl/RefCounted;-><init>(ZLnl3;)V

    invoke-virtual {v2, v1}, Landroidx/camera/viewfinder/core/impl/RefCounted;->initialize(Ljava/lang/Object;)V

    sput-object v2, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->_backgroundHandler:Landroidx/camera/viewfinder/core/impl/RefCounted;

    new-instance v0, Lb36;

    invoke-direct {v0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :goto_0
    monitor-exit p0

    iget-object p0, v2, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    iget-object v0, v2, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/viewfinder/core/impl/RefCounted;

    invoke-virtual {v0}, Landroidx/camera/viewfinder/core/impl/RefCounted;->acquire()Ljava/lang/Object;

    new-instance v1, Landroidx/camera/viewfinder/core/impl/d;

    invoke-direct {v1, v0}, Landroidx/camera/viewfinder/core/impl/d;-><init>(Landroidx/camera/viewfinder/core/impl/RefCounted;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl$withHandlerScope$3;

    invoke-direct {v1, v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl$withHandlerScope$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "Handler thread killed unexpectedly."

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private static final withHandlerScope$lambda$5$lambda$4$lambda$2(Landroid/os/HandlerThread;Landroid/os/Handler;)Lj59;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final withHandlerScope$lambda$6(Landroidx/camera/viewfinder/core/impl/RefCounted;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/viewfinder/core/impl/RefCounted;->release()V

    return-void
.end method


# virtual methods
.method public requestImpl(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PixelCopyApi24Impl.request"

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/tracing/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v0, Landroidx/camera/viewfinder/core/impl/e;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/impl/e;-><init>(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    invoke-direct {p0, v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->withHandlerScope(Lbm3;)V

    return-void
.end method
