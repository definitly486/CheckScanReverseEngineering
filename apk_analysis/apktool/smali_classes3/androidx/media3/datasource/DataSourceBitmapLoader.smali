.class public final Landroidx/media3/datasource/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lkd8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd8<",
            "Lwr4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final listeningExecutorService:Lwr4;

.field private final makeShared:Z

.field private final maximumOutputDimension:I

.field private final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La92;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lkd8;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->setMaximumOutputDimension(I)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$100(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$100(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$200(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$300(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Lwr4;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$300(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Lwr4;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lkd8;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lwr4;

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$400(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$500(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->access$600(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->makeShared:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;Landroidx/media3/datasource/DataSourceBitmapLoader$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    return-void
.end method

.method public constructor <init>(Lwr4;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lwr4;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lwr4;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lwr4;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V

    return-void
.end method

.method public constructor <init>(Lwr4;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lwr4;

    .line 74
    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 75
    iput-object p3, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    .line 76
    iput p4, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->makeShared:Z

    return-void
.end method

.method public static synthetic a(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lwr4;
    .locals 1

    invoke-static {}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$static$0()Lwr4;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->makeShared:Z

    array-length v1, p1

    iget-object v2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {p1, v1, v2, p0}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->maybeAsShared(ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget v2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    iget-boolean p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->makeShared:Z

    invoke-static {v0, p1, v1, v2, p0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$static$0()Lwr4;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    instance-of v1, v0, Lwr4;

    if-eqz v1, :cond_0

    check-cast v0, Lwr4;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    new-instance v1, Lnd5$b;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0}, Lnd5$b;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1

    :cond_1
    new-instance v1, Lnd5$a;

    invoke-direct {v1, v0}, Lnd5$a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method private static load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IZ)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    new-instance v0, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {p0, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->readToEnd(Landroidx/media3/datasource/DataSource;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0, p2, p3}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p4, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->maybeAsShared(ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    throw p1
.end method

.method private static maybeAsShared(ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/media3/datasource/BitmapUtil;->makeShared(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lwr4;

    new-instance v1, Lb92;

    invoke-direct {v1, p0, p1}, Lb92;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)V

    invoke-interface {v0, v1}, Lwr4;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lwr4;

    new-instance v1, Lc92;

    invoke-direct {v1, p0, p1}, Lc92;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lwr4;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public supportsMimeType(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->isBitmapFactorySupportedMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
