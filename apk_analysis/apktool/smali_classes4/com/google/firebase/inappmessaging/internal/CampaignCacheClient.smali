.class public Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final application:Landroid/app/Application;

.field private cachedResponse:Lf73;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 0
    .param p1    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/CampaignCache;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)Lf73;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$1()Lf73;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$2(Lf73;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->isResponseValid(Lf73;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$put$0(Lf73;)V

    return-void
.end method

.method private isResponseValid(Lf73;)Z
    .locals 6

    invoke-virtual {p1}, Lf73;->c()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "fiam_eligible_campaigns_cache_file"

    invoke-direct {p1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_1

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    return v5

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    cmp-long p0, v2, p0

    if-gez p0, :cond_2

    return v5

    :cond_2
    return v4

    :cond_3
    return v5
.end method

.method private synthetic lambda$get$1()Lf73;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lf73;

    return-object p0
.end method

.method private synthetic lambda$get$2(Lf73;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lf73;

    return-void
.end method

.method private synthetic lambda$get$3(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lf73;

    return-void
.end method

.method private synthetic lambda$put$0(Lf73;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lf73;

    return-void
.end method


# virtual methods
.method public get()La75;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La75<",
            "Lf73;",
            ">;"
        }
    .end annotation

    new-instance v0, Le21;

    invoke-direct {v0, p0}, Le21;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    new-instance v1, Lm75;

    invoke-direct {v1, v0}, Lm75;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {}, Lf73;->parser()Lx36;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lx36;)La75;

    move-result-object v0

    new-instance v2, Lf21;

    invoke-direct {v2, p0}, Lf21;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lw75;

    sget-object v4, Lrm3;->d:Lrm3$e;

    invoke-direct {v3, v0, v2, v4}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance v0, Lz75;

    invoke-direct {v0, v1, v3}, Lz75;-><init>(La75;La75;)V

    new-instance v1, Lg21;

    invoke-direct {v1, p0}, Lg21;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lh75;

    invoke-direct {v2, v0, v1}, Lh75;-><init>(La75;Lze6;)V

    new-instance v0, Lh21;

    invoke-direct {v0, p0}, Lh21;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    new-instance p0, Lw75;

    invoke-direct {p0, v2, v4, v0}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    return-object p0
.end method

.method public put(Lf73;)Lqp1;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/a;)Lqp1;

    move-result-object v0

    new-instance v1, Ld21;

    invoke-direct {v1, p0, p1}, Ld21;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)V

    invoke-virtual {v0, v1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0
.end method
