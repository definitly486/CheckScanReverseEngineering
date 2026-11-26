.class public final Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

.field private static final impl$delegate:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->$$INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    new-instance v0, Le01;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le01;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->impl$delegate:Lcl4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
    .locals 1

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->impl_delegate$lambda$1()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getImpl(Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;)Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->getImpl()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;

    move-result-object p0

    return-object p0
.end method

.method private final getImpl()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
    .locals 0

    sget-object p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->impl$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;

    return-object p0
.end method

.method private static final impl_delegate$lambda$1()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi34Impl;->INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi34Impl;

    return-object v0

    :cond_0
    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;

    return-object v0
.end method

.method public static synthetic requestSync$default(Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;Landroid/view/Surface;Landroid/graphics/Bitmap;JILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final request(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 0
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

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->getImpl()Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->requestImpl(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public final requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
    .locals 7

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->requestSync$default(Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;Landroid/view/Surface;Landroid/graphics/Bitmap;JILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;J)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "PixelCopyCompat.requestSync"

    invoke-static {p0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p0, 0x2

    :try_start_0
    invoke-static {p0}, Lkt;->b(I)Llt;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sget-object v1, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->$$INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    invoke-static {v1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->access$getImpl(Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;)Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;

    move-result-object v1

    new-instance v2, Lo86;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;

    invoke-direct {v3, p0, v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;-><init>(Llt;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, p1, p2, v2, v3}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->requestImpl(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    :goto_0
    iget p0, p0, Llt;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method
